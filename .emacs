(package-initialize)
(add-to-list 'load-path "~/.emacs.local/")

(load "/.emacs.rc/rc.el")


;;; Appearance
(defun rc/get-default-font ()
  (cond
   ((eq system-type 'windows-nt) "Consolas-13")
   ((eq system-type 'gnu/linux) "Iosevka-20")))

(add-to-list 'default-frame-alist `(font . ,(rc/get-default-font)))

;; now we requrie our themes 
(rc/require-theme 'gruber-darker)
;; (rc/require-theme 'zenburn)
;; (load-theme 'adwaita t)

(eval-after-load 'zenburn
  (set-face-attribute 'line-number nil :inherit 'default))

;;; ido
(rc/require 'smex 'ido-completing-read+)

(require 'ido-completing-read+)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

; the main stuff that I'm annoying about. 
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)
(setq inhibit-startup-screen t)
(setq display-line-numbers-type 'relative)
(set-default-font "Ubuntu Mono-18")

