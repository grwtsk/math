# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Positive.ExactRawAndWeighted

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `802a2cfcc9873cc412293313d581ba9474d17285` · SHA-256 `8cfc343bdf6c51da0ac9b62f9538940216e43c0e498503957d513fa3916b90ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState p previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = p / a := det_rawJacobiTransfer E b a p
example : (rawJacobiTransfer (0 : ℚ) 0 1 2).det ≠ 1 := rawJacobiTransfer_not_det_one.2
```
