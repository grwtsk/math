# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.GroundedLaplacian.Variant2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de93ab044c13f00288346a731fbe40b3d68e0ff8` · SHA-256 `2f002e0b98b84545d69c05f6b6f5fc4acc4c817e1a5e40852e8dd38f1f39f9e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Rat.Defs

namespace Noeoueue.TypeMemory

structure ExactRationalEdge where
  numerator : Nat
  denominator : Nat
  positive : 0 < numerator
  nonzero : denominator ≠ 0

def componentKernelDimension (valid grounded : Bool) : Nat := if valid && !grounded then 1 else 0

end Noeoueue.TypeMemory
```
