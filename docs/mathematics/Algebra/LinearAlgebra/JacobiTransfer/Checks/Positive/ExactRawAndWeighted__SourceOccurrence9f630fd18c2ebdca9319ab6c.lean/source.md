# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Positive.ExactRawAndWeighted

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e63e89de816d45bbf9234221eed920d8f51fa9a` · SHA-256 `c01cb106d04dfccd7dd124a306895733c1119d288120cb26cf89df243c3cee2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState p previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = p / a := det_rawJacobiTransfer E b a p
example : (rawJacobiTransfer (0 : ℚ) 0 1 2).det ≠ 1 := rawJacobiTransfer_not_det_one.2
```
