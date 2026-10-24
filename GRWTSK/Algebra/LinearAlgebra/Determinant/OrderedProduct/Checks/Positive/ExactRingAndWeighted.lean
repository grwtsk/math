import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.Algebra.LinearAlgebra.JacobiTransfer

example (A : ℕ → Matrix (Fin 2) (Fin 2) ℤ)
    (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := det_orderedProduct_eq_one A hdet n k
example {K : Type} [Field K] (E : K) (a b : ℕ → K)
    (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_weightedJacobi_orderedProduct E a b ha n k
