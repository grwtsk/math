import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
universe u v
example {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (n : ℕ) (x : S) :
    cocycleProduct T A n x = orderedProduct (fun k => A (T^[k] x)) 0 n :=
  cocycleProduct_eq_orderedProduct T A n x
example {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (m n : ℕ) (x : S) :
    cocycleProduct T A (m+n) x = cocycleProduct T A m (T^[n] x) * cocycleProduct T A n x :=
  cocycleProduct_add T A m n x
example {S : Type u} {G : Type v} [Group G] (T : S → S) (A B : S → G) (n : ℕ) (x : S) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n x = (B (T^[n] x))⁻¹ * cocycleProduct T A n x * B x :=
  cocycleProduct_gauge T A B n x
