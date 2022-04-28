filetype plugin indent on

set tabpagemax=256

set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

set backspace=indent,eol,start

set hidden
set autoread

set nobackup
set swapfile

set hlsearch
set incsearch
set ignorecase
set smartcase

set bomb
set ttyfast
set binary

set fileformats=unix,dos,mac
set showcmd
set shell=/bin/sh

syntax on
set ruler
set number

let no_buffers_menu=1
highlight BadWhitespace ctermbg=red guibg=red
colorscheme molokai

set mousemodel=popup
set t_Co=256
set cursorline
set cursorcolumn
set guioptions=egmrti
set gfn=Ricty\ 8

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Ricty:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
  else
    if $TERM == 'xterm'
      set term=xterm-256color
    endif
  endif
endif

if &term =~ '256color'
  set t_ut=
endif

set gcr=a:blinkon0

set scrolloff=8
set sidescrolloff=16
set sidescroll=1

set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab

noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

noremap <leader>ga :!git add .<CR>
noremap <leader>gc :!git commit -m '<C-R>="'"<CR>
noremap <leader>gsh :!git push<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gd :Gvdiff<CR>
noremap <leader>gr :Gremove<CR>

noremap <leader>f <C-w>gf

nmap <esc><esc> :nohlsearch<cr>

nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

nnoremap <tab> gt
nnoremap <s-tab> gT
nnoremap <s-t> :tabnew<cr>

noremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

nmap <leader>c <plug>(caw:I:toggle)
nmap <leader>C <plug>(caw:I:uncomment)

nnoremap <c-a> ggVG

nmap == ggVG<plug>(operator-clang-format)
nmap = V<plug>(operator-clang-format)

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

set whichwrap=b,s,h,l,<,>,[,]

set list
set listchars=eol:$,tab:>-
highlight NonText ctermfg=8 guifg=gray
highlight SpecialKey ctermfg=8 guifg=gray

set undofile
set undodir=~/.vim/tmp

set showmatch
set laststatus=2

set shellslash
set clipboard=unnamed,unnamedplus

set wildmenu wildmode=list:longest,full
set history=8192

autocmd BufEnter * :syntax sync fromstart

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

autocmd FileType make setlocal noexpandtab
autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake

set updatetime=200

nmap <buffer> <leader>e :MarchingBufferClearCache<cr>

let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1

let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

if !exists('g:quickrun_config')
  let g:quickrun_config = {}
endif

let g:quickrun_config['html'] = { 'type': 'html/w3m' }
let g:quickrun_config['html/w3m']      = { 'command': 'w3m' }
let g:quickrun_config['html/chromium'] = { 'command': 'chromium' }
let g:quickrun_config['html/firefox']  = { 'command': 'firefox' }

let g:quickrun_config['*'] = { 'split': '' }

nmap <buffer> rr :QuickRun<cr>

let g:vim_json_syntax_conceal = 0

