# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.E4fd6c04a41ac616b088SourceActualCubicShortCalibration.Variante4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df8300b799edad65f21422abef0437d4482f6c8f` · SHA-256 `e4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualCubicCenteredRows
import CubicCoefficientCalibration

/-!
# Checked calibration of the actual complete short cubic error inventory

AI attribution: OpenAI Codex. The 3/50 budget includes the actual full 1..U
centered cubic derivative error plus the supplied scalar 260/A^2 calibration.
The complementary U<d<=N error remains explicit. This is not a calibration
of a complete Omega quantity and supplies no uniform arithmetic witness.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCubicShortCalibration

open scoped BigOperators
open SourceActualCubicCenteredRows RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- Actual short error with no row deleted, combined with the genuine scalar certificate. -/
theorem actual_short_cubic_error_plus_plain_calibration_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
      |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| < 3 / 50 := by
  exact (add_le_add le_rfl (actual_cubic_short_divisor_sum_abs_le A hA)).trans_lt
    (refined_cubic_calibration_budget_lt A hA)

/-- The same finite full inventory still retains the complete complementary signed error. -/
theorem actual_full_cubic_error_plus_plain_calibration_lt_with_complement (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
      |∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| < 3 / 50 +
      |∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| := by
  have he := actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith)
  rw [he]
  have hs := actual_short_cubic_error_plus_plain_calibration_lt A hA
  have ht := abs_add_le
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
  linarith only [hs, ht]

end
end FormalResearch.RiemannHypothesis.SourceActualCubicShortCalibration
```
