set nu
syntax on
set ruler
filetype plugin indent on
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smartcase
set hlsearch
set ignorecase
set hlsearch
set incsearch
set showcmd

set foldmethod=indent " folding
set foldnestmax=10   " fold anything with a max nest level of 10
set nofoldenable     " Don't fold by default when opening a file
set foldlevel=2      " Set at least 2 levels of fold open
map <C-y> "*y

set backspace=indent,eol,start

set nocompatible    " This must be first, because it changes other options as a side effect.

set nobackup        " do not keep a backup file, use versions instead

set enc=utf-8        " enable UTF-8 stuff
set fenc=utf-8
set termencoding=utf-8

set history=100    " keep 100 lines of command line history
set wildmenu         " Add wildcards for completion while loading files

set rtp+=~/.vim/bundle/Vundle.vim   "setting vundleVim package.
call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'  "  enable multiple cursors
Plug 'itchyny/lightline.vim' " shows files opened at bottom of vim
Plug 'yggdroot/indentline'  "  shows indentation lines in vim
Plug 'godlygeek/tabular' "  automatically align variables
Plug 'pangloss/vim-javascript' "  for javascript indentation and syntax highlighting
Plug 'slim-template/vim-slim'  "  syntax highlighting
Plug 'mitermayer/vim-prettier' " for javascript  syntax colors
Plug 'shougo/deoplete.nvim'  " for autocomplete in javascript
call plug#end()            " required

map <F7> :NERDTreeToggle<CR>

" Grep the word under our cursor within the files of the same directory.
map <C-G> :vimgrep /<C-R><C-W>/j *<CR>:cope<CR>

" Duplicate lines upwards and downwords.
inoremap <C-S-Down> <Esc>yypi
inoremap <C-S-Up> <Esc>yyPi

let mapleader = ","   " Leader is mapped to ','

" Mapping to edit vimrc in a split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>e :split $MYVIMRC<cr>

" Mapping to toggle relative line numbers
nnoremap <leader><space> :set relativenumber!<cr>

"Remove all ending spaces.
map DS :%s/\s\+$// <CR>


imap fn<tab> const   = function() {<cr><cr>}<up><up><right><right><right><right><right>
