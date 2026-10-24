# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DirichletCorner

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ec208414c8d08bbcdf845bcbc8f25cf56418a8a` · SHA-256 `4b34563e1c5a547b2b6f1d62ef9f73ee7662b45837692bcb1e6275e300c08ee0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false: a Dirichlet path is not a cyclic periodic restriction.
example : freeDirichlet 3 0 2 = 1 := by
  norm_num [freeDirichlet]
```
