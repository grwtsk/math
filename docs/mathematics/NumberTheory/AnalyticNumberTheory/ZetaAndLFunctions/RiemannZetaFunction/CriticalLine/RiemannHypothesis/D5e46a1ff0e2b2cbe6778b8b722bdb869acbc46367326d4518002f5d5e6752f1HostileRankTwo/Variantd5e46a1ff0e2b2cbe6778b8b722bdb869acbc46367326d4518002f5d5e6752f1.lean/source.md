# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.D5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1HostileRankTwo.Variantd5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a975ecaa1739edc83f3cbe0cd9227323367606d7` · SHA-256 `d5e46a1ff0e2b2cbe6778b8b722bdb869acbc46367326d4518002f5d5e6752f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailTransport

namespace ThetaTailSignScratch

/-- The oriented rank-two cross-product is exactly a decreasing-ratio gap. -/
theorem oriented_cross_eq_ratio (a b c d : ℝ) (ha : a ≠ 0) (hb : b ≠ 0) :
    -(a * d - b * c) = a * b * (c / a - d / b) := by
  field_simp
  ring

/-- The first positive-even-tail confluent test isolates a third cumulant bound. -/
theorem third_connected_gap (m1 m2 m3 : ℝ) :
    3 * m1 * m2 - m3 = 2 * m1 ^ 3 - (m3 - 3 * m1 * m2 + 2 * m1 ^ 3) := by
  ring

/-- The continuous two-bump example's exact tail entries have the wrong sign. -/
theorem triangular_bumps_wrong_sign :
    -(29 * (200 : ℝ) - 24 * (945 / 4 : ℝ)) = -130 := by
  norm_num

/-- Positive exponential mixtures already fail the required orientation at rank two. -/
theorem exponential_mixture_wrong_sign {z : ℝ} (hz : 0 < z) (hz1 : z < 1) :
    -((1 + 1 : ℝ) * (z + z ^ 2 / 4) - (z + z ^ 2) * (1 + 1 / 4)) < 0 := by
  have h : 0 < (3 / 4 : ℝ) * z * (1 - z) := by positivity
  nlinarith

#print axioms oriented_cross_eq_ratio
#print axioms third_connected_gap
#print axioms triangular_bumps_wrong_sign
#print axioms exponential_mixture_wrong_sign

end ThetaTailSignScratch
```
