# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingStepPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33282e68b128831960bbfd9e398c8e1d7c2261b6` · SHA-256 `67a593dde23d47f1c96858aebdfedaee3596865ed8cc64cb29efe26f0745f83a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![(1 : ℚ), 0] : Fin 2 → ℚ) =
    (orderedProduct (fun _ => (1 : Matrix (Fin 2) (Fin 2) ℚ)) 0 1).mulVec ![0, 0] := by
  norm_num [orderedProduct, funext_iff, Fin.forall_fin_two]
```
