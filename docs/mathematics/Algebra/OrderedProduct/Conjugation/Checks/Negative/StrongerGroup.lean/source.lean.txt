import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
theorem strengthened {G : Type u} [Group G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := orderedProduct_identity n k
example {G : Type u} [Monoid G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := strengthened n k
