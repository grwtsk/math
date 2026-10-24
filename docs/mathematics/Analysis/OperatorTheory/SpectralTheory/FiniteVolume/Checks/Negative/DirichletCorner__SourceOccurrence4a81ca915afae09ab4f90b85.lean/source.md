# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.DirichletCorner

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29ad87db141d2f8baccb7b47023308cba504cac` · SHA-256 `3b2ab3e99b2f8670a2ef6106b4f720c4f616e16a010ad9dca6e0d71056a00b8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false: a Dirichlet path is not a cyclic periodic restriction.
example : freeDirichlet 3 0 2 = 1 := by
  norm_num [freeDirichlet]
```
