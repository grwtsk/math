# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingStepPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `644d4e92e07b41c8018ed2811aec85c6dcd0296a` · SHA-256 `991bfc431b76b2c276f354bc19a2edf8c59e2fb9729c113b5acc96f40f5d5aab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![(1 : ℚ), 0] : Fin 2 → ℚ) =
    (orderedProduct (fun _ => (1 : Matrix (Fin 2) (Fin 2) ℚ)) 0 1).mulVec ![0, 0] := by
  norm_num [orderedProduct, funext_iff, Fin.forall_fin_two]
```
