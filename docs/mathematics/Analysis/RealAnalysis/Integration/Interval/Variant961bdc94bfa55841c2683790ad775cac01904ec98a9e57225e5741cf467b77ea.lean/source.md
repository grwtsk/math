# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Interval.Variant961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b37fbbb3eeeb6102d5109f892b511d5cb548ce8` · SHA-256 `961bdc94bfa55841c2683790ad775cac01904ec98a9e57225e5741cf467b77ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Polynomial.Potential
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Topology.Algebra.Polynomial

/-!
# Cubic interval integration

The endpoint difference and the measure-theoretic interval integral are
distinct definitions connected by the fundamental theorem of calculus.
-/

namespace Mathematics.Polynomial

open scoped Interval

/-- Exact endpoint difference of the canonical cubic potential. -/
noncomputable def cubicPotentialDifference
    (a b c d lo hi : ℝ) : ℝ :=
  (cubicPotential a b c d).eval hi -
    (cubicPotential a b c d).eval lo

@[simp] theorem cubicPotentialDifference_self
    (a b c d x : ℝ) :
    cubicPotentialDifference a b c d x x = 0 := by
  simp [cubicPotentialDifference]

/-- Endpoint differences compose over adjacent intervals. -/
theorem cubicPotentialDifference_trans
    (a b c d first middle last : ℝ) :
    cubicPotentialDifference a b c d first middle +
        cubicPotentialDifference a b c d middle last =
      cubicPotentialDifference a b c d first last := by
  simp only [cubicPotentialDifference]
  ring

/-- The genuine interval integral equals the endpoint difference. -/
theorem intervalIntegral_cubic
    (a b c d lo hi : ℝ) :
    (∫ x in lo..hi, (cubic a b c d).eval x) =
      cubicPotentialDifference a b c d lo hi := by
  rw [cubicPotentialDifference]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro x _
    exact hasDerivAt_cubicPotential a b c d x
  · exact (cubic a b c d).continuous.intervalIntegrable lo hi

end Mathematics.Polynomial
```
