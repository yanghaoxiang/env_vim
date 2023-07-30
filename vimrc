
syntax on
colorscheme desert
winpos 1300 0
set lines=50 columns=100
set guifont=Monospace\ 15
set bg=dark
set ruler
set showcmd
set nu
set cursorline
set cursorcolumn
set hlsearch
set incsearch
set langmenu=en
set statusline+=%#warningmsg#
set statusline+=%*
set tabstop=2
set expandtab
set smarttab
set shiftwidth=2
set backspace=indent,eol,start

set foldmethod=marker
set nocompatible
set history=50
set tag=tags;
set autochdir
"----------  unsure  ----------
set fileformat=unix
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8

"----------  ShortCut  ---------
map <F3> :Tab /
map <F2>r :call GenRtlReg()<CR>
map <F2>c :call GenRtlCom()<CR>

"----------  not sure  ---------
filetype off
filetype plugin indent on

"----------  Vundle    ---------
" :PluginList
" :PluginInstall
" :PluginSearch foo
" :PluginClean
" :h vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neocomplcache'
Plugin 'HonkW93/automatic-verilog'
Plugin 'junegunn/vim-easy-align'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

"----------  AutoMatic Verilog  --------
let g:atv_autoinst_95_support = 1

"----------  AutoTitle  ------------

autocmd BufNewFile *.v* exec ":call AddTiTleForV()"

function AddTiTleForV()
    call append(0, "//******************************************************************")
    call append(1, "//")
    call append(2, "// Copyright houmo.ai, All rights reserved world wide")
    call append(3, "//")
    call append(4, "// * Author            : Haoxiang.Yang@houmo.ai")
    call append(5, "// * Create time       : ".strftime("%Y-%m-%d %H:%M"))
    call append(6, "// * FileName          : ".expand("%:t"))
    call append(7, "// * Description       : ")
    call append(8, "//")
    call append(9, "//******************************************************************")
    call append(10, "module #(")
    call append(11, " parameter")
    call append(12, ")(")
    call append(13, "  /*autoarg*/")
    call append(14, ");")
    call append(16, "endmodule")
endfunction

"----------- AutoReg ---------------/
function GenRtlReg()
   call append(".", "end")
   call append(".", "  end")
   call append(".", "  else begin")
   call append(".", "  end")
   call append(".", "  if (!rst_n) begin")
   call append(".", "always @(posedge clk or negedge rst_n)) begin"
endfunction


"----------- AutoCom ---------------/
function GenRtlCom()
   call append('.', "end")
   call append('.', "always @(*) begin")
endfunction






    
    



    












