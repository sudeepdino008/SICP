(define (neq? st1 st2) (not (eq? st1 st2)))

(define (solve some)
  (let ((barnacles-d 'melisa))
    (let ((parker-d (amb 'lorna 'rosalind 'gabrielle 'X)))
      (require (not (eq? parker-d 'X)))
    (let ((mam-d (amb 'lorna 'rosalind 'gabrielle 'X)))
      (require (not (eq? mam-d 'lorna)))
      (require (not (eq? mam-d parker-d)))
      (require (or (neq? mam-d 'gabrielle) (eq? parker-d 'lorna)))
      (let ((downing-d (amb 'lorna 'rosalind 'gabrielle 'X)))
        (require (not (eq? downing-d mam-d)))
        (require (not (eq? downing-d parker-d)))
        (require (or (neq? downing-d 'gabrielle) (eq? parker-d 'melisa)))
        (let ((hall-d (amb 'lorna 'rosalind 'gabrielle 'X)))
          (require (not (eq? hall-d 'rosalind)))
          (require (not (eq? hall-d mam-d)))
          (require (not (eq? hall-d downing-d)))
          (require (not (eq? hall-d parker-d)))
          (require (or (neq? hall-d 'gabrielle) (eq? parker-d 'rosalind)))
          (list mam-d downing-d hall-d barnacles-d parker-d)))))))


;; Parker is lorna's father.
;; One solution is (mam-d: gabriel. downing-d: rosalind, hall-d: X, barnacles-d: melisa, parker-d: lorna)
