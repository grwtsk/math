import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example {G : Type} [Monoid G] (A : ℕ → G) (m n : ℕ) :
    orderedTransfer A m n = orderedProduct A n (m - n) := rfl
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (n k : ℕ) :
    X (n+k) = (orderedProduct A n k).mulVec (X n) :=
  state_eq_orderedProduct_mulVec A X hstep n k
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) :
    X m = (orderedTransfer A m n).mulVec (X n) :=
  state_eq_orderedTransfer_mulVec A X hstep m n hnm
