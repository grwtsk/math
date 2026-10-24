# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.OneEndpointDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cfd4d915f52fb28371941aac4278e885e5a7357` · SHA-256 `8b678d08034ff821ff30a4e6c6c75edbd6012eed0dff03a61ac594aaa9a20782`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.DirichletCut
open GRWTSK.Spectral.DirichletCut
-- This vector vanishes at the first endpoint and still has a nonzero edge image.
example : (joiningEdge 2 0).mulVec (fun j : Fin 2 => if j = 1 then 1 else 0) 0 = 0 := by
  norm_num [joiningEdge, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
```
