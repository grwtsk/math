# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingEndpointOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e961b41eb4f47d7d7edf28147e90069880fa4162` · SHA-256 `9a7053bdc827dd895079230d8184be610d6b29588a261b3558ccf41ae9cb0565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![1, 0] : Fin 2 → ℚ) =
    (orderedTransfer (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).mulVec ![2, 0] := by
  norm_num [orderedTransfer, orderedProduct, funext_iff, Fin.forall_fin_two]
```
