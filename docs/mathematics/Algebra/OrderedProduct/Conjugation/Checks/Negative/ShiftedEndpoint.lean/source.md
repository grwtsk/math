# Complete source: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Negative.ShiftedEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6080ad0e44f34c152d3616eb5a695b37ef99052` · SHA-256 `18d07c1876985146c50f08411d9b446739ee66b0e7d4266e7b3dc27180729446`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
example {G : Type u} [Group G] (A H : ℕ → G) (n k : ℕ) : orderedProduct (forwardGauge A H) n k = H (n + k + 1) * orderedProduct A n k * (H n)⁻¹ := orderedProduct_forwardGauge A H n k
```
