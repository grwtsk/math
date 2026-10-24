# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ExteriorLabelInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8389e78f681604792f9db67ff2ad628629fee12a` · SHA-256 `e4ec7b0839759059f42d153e12f9c5eabf0a22c061407991baca9b04dd5b2914`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeIDS

-- The right inverse cut is false at exterior label zero: N0(-3)=0 but -2>-3.
example : freeEnergy 0 ≤ (-3:ℝ) := by
  norm_num [freeEnergy]
```
