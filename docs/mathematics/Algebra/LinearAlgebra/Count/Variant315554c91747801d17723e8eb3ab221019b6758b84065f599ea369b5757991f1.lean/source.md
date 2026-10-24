# Complete source: GRWTSK.Algebra.LinearAlgebra.Count.Variant315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33fe5109b98877d2ee2260195e46f98b85fcb099` · SHA-256 `315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Matrix.Encoding
import Boolean.Matrix.Operations

namespace Boolean

namespace Matrix

/-- Number of true entries in row-major order. -/
def trueCount
    (A : Matrix rows cols) :
    Nat :=
  (rowMajorBits A).filter (fun b => b = true) |>.length

theorem trueCount_nonneg
    (A : Matrix rows cols) :
    0 ≤ trueCount A :=
  Nat.zero_le _

theorem trueCount_zeros :
    trueCount (Matrix.zeros : Matrix rows cols) = 0 := by
  simp [trueCount, rowMajorBits, Matrix.zeros]

end Matrix

end Boolean
```
