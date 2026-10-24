# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingEndpointOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9fb09218f1a1bf379cba95632c0571df4ca395e` · SHA-256 `0d1129c9ae7b519b343c50ca07f5fb0948b4f2aa97412dbf89f37f6533d4e731`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![1, 0] : Fin 2 → ℚ) =
    (orderedTransfer (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).mulVec ![2, 0] := by
  norm_num [orderedTransfer, orderedProduct, funext_iff, Fin.forall_fin_two]
```
