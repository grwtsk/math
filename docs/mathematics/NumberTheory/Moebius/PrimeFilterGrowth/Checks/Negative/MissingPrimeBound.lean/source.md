# Complete source: GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth.Checks.Negative.MissingPrimeBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1dd08198ef66296236fc1a015c1b6acd5286e22` · SHA-256 `a1017aa4c707ce3b3506091b11ee09d5fc4334836e85177273d1f7a9e396a57d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth
open GRWTSK.RiemannHypothesis.CCC
example : PickupCrossPoly :=
  p04_of_prime_reverberation (by norm_num : (0:ℝ) ≤ 1)
    (by norm_num : (0:ℝ) ≤ 1) (by norm_num : (0:ℝ) ≤ 1)
```
