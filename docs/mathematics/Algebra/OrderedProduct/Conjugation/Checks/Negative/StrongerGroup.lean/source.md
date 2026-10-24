# Complete source: GRWTSK.Algebra.OrderedProduct.Conjugation.Checks.Negative.StrongerGroup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d21f1b447c2892fef19aa496dc05bf7bea62f418` · SHA-256 `bf10243268eb6ff07cefac867558b9c6df81ae9bdb856ba28e1bdf7cb3049421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.OrderedProductGauge
open GRWTSK.Algebra GRWTSK.Algebra.OrderedProductGauge
universe u v
set_option autoImplicit false
theorem strengthened {G : Type u} [Group G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := orderedProduct_identity n k
example {G : Type u} [Monoid G] (n k : ℕ) : orderedProduct (fun _ => (1 : G)) n k = 1 := strengthened n k
```
