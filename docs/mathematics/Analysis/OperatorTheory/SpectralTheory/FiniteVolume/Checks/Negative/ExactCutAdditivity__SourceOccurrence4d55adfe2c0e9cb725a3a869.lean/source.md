# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ExactCutAdditivity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40d9af282cf4ebdca121438006047d8e2b65fd7b` · SHA-256 `122f86a98d2956b6e676b8c979077cd7fd0de882d88c00e5b9105da99d027652`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume
example : freeCount 2 0 = freeCount 1 0 + freeCount 1 0 := by
  have hc1 : cutoff 1 0 = 1 := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  have hc2 : cutoff 2 0 = (3/2:ℝ) := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  simp only [freeCount_eq_ceil, hc1, hc2]
  norm_num
```
