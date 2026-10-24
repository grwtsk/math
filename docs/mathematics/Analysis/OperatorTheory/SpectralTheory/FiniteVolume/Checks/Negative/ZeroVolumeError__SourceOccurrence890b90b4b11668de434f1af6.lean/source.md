# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.ZeroVolumeError

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d0286b2ce78708f8f15f76052c36f8d5a317d63` · SHA-256 `fb9f66509dd6b470a1078a901718f56e52437baa30612725a48b39cec02fb7b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume

-- The one-over-volume error requires positive volume, not merely N>=0.
example : freeIDS 2 - 1/(0:ℝ) ≤ freeNormalizedCount 0 2 := by
  rw [freeIDS_of_two_le (by norm_num)]
  norm_num [freeNormalizedCount, freeCount_eq_ceil]
```
