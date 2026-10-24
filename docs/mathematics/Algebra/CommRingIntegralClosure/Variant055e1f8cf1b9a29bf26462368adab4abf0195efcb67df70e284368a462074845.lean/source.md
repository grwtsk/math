# Complete source: GRWTSK.Algebra.CommRingIntegralClosure.Variant055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81baaf84a5b9331a808fb537129c80ad4d0275bc` · SHA-256 `055e1f8cf1b9a29bf26462368adab4abf0195efcb67df70e284368a462074845`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/category.20theory.20import.20breaks.20CommRing.20synthesis/near/449132250

variable (R : Type) (A : Type) [CommRing R] [CommRing A] [Algebra R A]

/-- info: (integralClosure R A).toCommRing -/
#guard_msgs in
#synth CommRing (integralClosure R A)
```
