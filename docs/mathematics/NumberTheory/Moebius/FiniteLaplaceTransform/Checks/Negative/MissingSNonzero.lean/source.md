# Complete source: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform.Checks.Negative.MissingSNonzero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccd8d4e6ea92d8c6c2b155a619f8703833ee6a10` · SHA-256 `cea69c144ed4c4c3ebdeec5cd7f8d62105c1a13e670e2e986751d96a9f27f9e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) :
    noteWindowLaplace wholePickup z T = pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
      2*Complex.exp (-z*T)/z*(pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) +
      2*Complex.exp (-s*T)/s*(pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  exact wholePickup_cutoff_laplace hT hs hz
```
