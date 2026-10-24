# Complete source: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform.Checks.Negative.MissingZNonzero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b15cb172e6def4344a738c1573257a63d1950cee` · SHA-256 `9ce9c03c1cb5ef4e079cbfd5e707a4441964e22273dae71ed407cfdbe1542304`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example {T : ℝ} (hT : 0 ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T = pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
      2*Complex.exp (-z*T)/z*(pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) +
      2*Complex.exp (-s*T)/s*(pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  exact wholePickup_cutoff_laplace hT hs
```
