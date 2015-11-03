(package-initialize)

(add-to-list 'load-path "~/elisp/emms/lisp/")
(add-to-list 'load-path "~/elisp/")

(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))

(require 'emms-setup)
(require 'emms-player-mplayer)
(emms-all)
(emms-default-players)
(define-emms-simple-player mplayer '(file url)
      (regexp-opt '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma"
                    ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
                    ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls"))
      "mplayer" "-slave" "-quiet" "-really-quiet" "-fullscreen")

(add-to-list 'load-path "~/elisp/google-translate/")
(setq exec-path (append exec-path '("/usr/local/bin")))

(add-to-list 'load-path "~/elisp/emms/lisp/emacs-w3m/")
(require 'w3m-load)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)  
(setq w3m-home-page "http://www.google.com")

(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)

(setq explicit-shell-file-name "/bin/bash")
(setq shell-file-name "bash")
(setq explicit-bash.exe-args '("--noediting" "--login" "-i"))

(setenv "SHELL" shell-file-name)
(add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)

(setq-default indent-tabs-mode nil)

(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
        package-archives )
;(push '("melpa" . "http://melpa.milkbox.net/packages/")
;        package-archives)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'evil)
(evil-mode 1)
(setq evil-default-state 'emacs)
(evil-mode 1)

(setq-default google-translate-enable-ido-completion t)  
  
(setq-default google-translate-default-source-language "en")  
(setq-default google-translate-default-target-language "zh_TW")  
  
;;(global-set-key "\C-ct" 'google-translate-at-point)  
;;(global-set-key "\C-cT" 'google-translate-query-translate)  
(global-set-key (kbd "C-c t") 'google-translate-at-point)  
(global-set-key (kbd "C-c T") 'google-translate-query-translate)  
(global-set-key (kbd "C-c r") 'google-translate-at-point-reverse)  
(global-set-key (kbd "C-c R") 'google-translate-query-translate-reverse)  
  
(provide 'google-translate-settings)  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (python-mode popup names google-translate evil dired+))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
