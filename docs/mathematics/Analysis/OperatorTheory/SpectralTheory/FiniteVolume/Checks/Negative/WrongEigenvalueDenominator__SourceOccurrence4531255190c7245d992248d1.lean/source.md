# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.WrongEigenvalueDenominator

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5dcc8f1aa71466ec716ba3e01a1b52400206ed1` · SHA-256 `a1947cf3f4f013c84b4a398b15535a163e1cc5f08454afb2a181e40277707716`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeDirichletSpectrum

-- Using N instead of N+1 loses the paid Dirichlet boundary condition.
example : eigenvalue 1 0 = 2*Real.cos Real.pi := by
  norm_num [eigenvalue, angle]
```
