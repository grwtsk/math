# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth.Checks.Negative.MissingBlockBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `590fb55cf206e09c78bce640a0c289fe3063f8ad` · SHA-256 `72486330eb74b51017f73afd576d3c10128bf780c38d60107fff3253131d498f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth
open GRWTSK.RiemannHypothesis.CCC
example : PickupCrossPoly :=
  p04_of_block_reverberation (by norm_num : (0:ℝ) ≤ 1) (by norm_num : (0:ℝ) ≤ 1)
```
