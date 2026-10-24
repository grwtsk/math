# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteCyclic.Variantb8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ebaee2e46a5abf52e156cfa18001d68262087bf` · SHA-256 `b8c02fff4baa7f2ade06d7f57b0642a2321b026647d0294cd6a4d41f55e26f23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.Phase
import Mathlib.Data.ZMod.Basic

/-! # Exact finite cyclic orbits -/

namespace Mathematics.Orbit

structure FiniteCyclic where
  modulus : Nat
  modulusPositive : 0 < modulus
  start : ZMod modulus
  turn : ZMod modulus

def FiniteCyclic.point (orbit : FiniteCyclic) (step : Nat) :
    ZMod orbit.modulus :=
  orbit.start + step * orbit.turn

end Mathematics.Orbit
```
