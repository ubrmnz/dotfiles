syntax enable
set noshowmode

" sets cursor as block
set guicursor=n-v-c:block-Cursor

" sets colorcolumn
set colorcolumn=72

" sets incremental search
set incsearch

" sets noswapfile
set noswapfile

" set title
set title

" show line numbers
set number

" highlight current line
set cursorline

" set colorscheme
colorscheme sonokai

"let g:molokai_original = 1
"let g:rehash256 = 1

" disable visual mode on click
set mouse-=a

" load filetype-specific indent files
filetype indent on

" when creating a new line, copy the indentation from line above
set autoindent

" visual autocomplete for command menu
set wildmenu

"---Switching Tabs Config"
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

set nocompatible

"--PLUGINS
call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"---EMMET CONFIG

"redefine trigger key

let g:user_emmet_leader_key=','
let g:tagalong_verbose = 1

"snippet for responsiveness
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

"---NERDTree Config:
nnoremap <leader>n :NERDTreeFocus <CR>

"--vim-javascript ( colorful style )
let g:vim_jsx_pretty_colorful_config = 1 " default 0

"---ALE CONFIG"
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'css': ['prettier'],
\	'javascript': ['prettier', 'eslint'],
\	'json': ['prettier'],
\	'scss': ['prettier'],
\	'python': ['black', 'isort'],
\	'yaml': ['prettier'],
\	}

	let g:ale_linters = {
\		'css': ['prettier'],
\		'javascript': ['prettier', 'eslint'],
\		'json': ['prettier'],
\		'python': ['flake8'],
\		'scss': ['prettier'],
\		'yaml': ['prettier'],
\		}

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

"Fix files automatically on save"
let g:ale_fix_on_save = 1

"---FZF CONFIG"
noremap <silent> <C-f> :fzf<C-R>

"---LIGHTLINE CONFIG"
set laststatus=2

if !has('gui_running')
	set t_Co=256
endif

let g:lightline= {
			\ 'colorscheme': 'molokai',
			\}

"---RAINBOW CONFIG"
let g:rainbow_active = 1
