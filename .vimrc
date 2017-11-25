" Show string numbers by default
set number 

" Set font
set guifont=Monaco:h15

set timeoutlen=1000 ttimeoutlen=0

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Solarized config
"set t_Co=256
syntax enable
let g:solarized_termtrans=1                                                   
"let g:solarized_termcolors=256 
set background=dark
colorscheme solarized

" Code highlighting settings
au BufRead, BufNewFile *.slim setfiletype html
au BufRead, BufNewFile *.vue setfiletype html

" Vundle package manager config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

" Config for Nerdtree
" Show/close nerdtree by ctrl+e
nmap <silent> <C-E> :NERDTreeToggle<CR>
" Show hidden files by default
let NERDTreeShowHidden=1

" Config for indentLine
let g:indentLine_char = '|'

" Config for vim airline
let g:airline_theme='solarized'
