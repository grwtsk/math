# Complete source: GRWTSK.Algebra.RingFiniteness.Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89e9e0a99e86001300e47cfeaf6c7107d57e8fe4` · SHA-256 `be03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

-- https://github.com/leanprover-community/mathlib4/pull/17557#issuecomment-2426920648

variable (R : Type*) [Ring R] [IsSemisimpleRing R]

example : IsNoetherianRing R := inferInstance
example : IsArtinianRing R := inferInstance
```
