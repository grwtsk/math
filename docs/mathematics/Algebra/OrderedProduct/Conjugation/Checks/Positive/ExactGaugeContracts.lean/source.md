# Complete source: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Positive.ExactGaugeContracts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ac5b55359be809c70f727b4fa08422b30f2eb1e` · SHA-256 `2191cd15bd71147429932f35d9a10ac3ac2b681060f89a8f424002ab3dbe40db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} [Monoid G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := orderedProduct_identity n k
example {G : Type u} [Group G] (A H : ℕ → G) (n k : ℕ) : orderedProduct (forwardGauge A H) n k = H (n + k) * orderedProduct A n k * (H n)⁻¹ := orderedProduct_forwardGauge A H n k
example {G : Type u} {V : Type v} [Group G] (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) : orderedProduct (chartEdges (H ∘ p)) n k = 1 := chart_loop_identity p H n k hp
```
