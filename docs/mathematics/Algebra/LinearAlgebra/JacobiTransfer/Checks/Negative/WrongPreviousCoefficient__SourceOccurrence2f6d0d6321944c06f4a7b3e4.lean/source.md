# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Negative.WrongPreviousCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a0c12838bdd9eaffc7f1ddb709d05f7c41f2c2d` · SHA-256 `a59738c120638c9f9491f1775773df2ea2628a1f54f0707b8a36a6e13754107f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState a previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
```
