import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} [Monoid G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := orderedProduct_identity n k
example {G : Type u} [Group G] (A H : ℕ → G) (n k : ℕ) : orderedProduct (forwardGauge A H) n k = H (n + k) * orderedProduct A n k * (H n)⁻¹ := orderedProduct_forwardGauge A H n k
example {G : Type u} {V : Type v} [Group G] (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) : orderedProduct (chartEdges (H ∘ p)) n k = 1 := chart_loop_identity p H n k hp
