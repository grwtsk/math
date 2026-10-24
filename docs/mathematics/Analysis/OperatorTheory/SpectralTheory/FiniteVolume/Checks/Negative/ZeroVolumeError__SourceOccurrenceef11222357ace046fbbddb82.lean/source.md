# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.ZeroVolumeError

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0db1aacd5b070557f7319cb8f5ce619c74388e47` · SHA-256 `c08b348f67aa124c3b44e3ae9a193b6b8d3977c915ef9020448b372d47d3821a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.FreeIDS GRWTSK.Spectral.SturmianFiniteVolume

-- The one-over-volume error requires positive volume, not merely N>=0.
example : freeIDS 2 - 1/(0:ℝ) ≤ freeNormalizedCount 0 2 := by
  rw [freeIDS_of_two_le (by norm_num)]
  norm_num [freeNormalizedCount, freeCount_eq_ceil]
```
