# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Negative.WrongPreviousCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6350987a5eefb67bc0cedfa715137f4566224949` · SHA-256 `e0a990d9b192ed0975a841fb7ed30885a073d19d77c9f951b840483ab77ee02f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState a previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
```
