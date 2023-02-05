# PROMPT='%U%F{214}%n%f%u %1~ $'
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
alias pip=/usr/local/bin/pip3

source /Users/vylis/.docker/init-zsh.sh || true # Added by Docker Desktop

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%f'
# COLOR_USR=$'%F{243}'
COLOR_USR=$'%F{214}'
COLOR_DIR=$'%F{167}'
COLOR_GIT=$'%F{175}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

autoload -Uz compinit && compinit
