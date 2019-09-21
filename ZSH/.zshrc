# If you come from bash you might have to change your $PATH.
PATH=$HOME/bin:/usr/local/bin:$PATH

# Oh My ZSH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

# History Timestamps
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

# Autocomplete Plugins
plugins=(
  git docker
)

# Hide Username
DEFAULT_USER=$USER
prompt_context(){}

[ -d "$ZSH" ] && source $ZSH/oh-my-zsh.sh

# Other ZSH Plugins
[ -d "$ZSH/zsh-autosuggestions" ] && source $ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Colors in CLI
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Java
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=${JAVA_HOME:-/Library/Java/Home}

# Man
export MANPATH="/usr/local/man:$MANPATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Host / Company Specific ZSH
[ -f ~/.zsh-$(hostname -s) ] && source ~/.zsh-$(hostname -s)
