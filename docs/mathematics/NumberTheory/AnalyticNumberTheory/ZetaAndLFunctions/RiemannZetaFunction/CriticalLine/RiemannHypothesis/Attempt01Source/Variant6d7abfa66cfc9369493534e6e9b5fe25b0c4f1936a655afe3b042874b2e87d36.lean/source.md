# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01Source.Variant6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a952796c64ae226ff0bfd75745eca573488fa15a` · SHA-256 `6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows

/-! Exact closed natural-floor depth budget; no arithmetic weighted cap.
grwtsk contributors: direction/selection/corrections/evaluation. Codex: formal construction. -/
set_option autoImplicit false
noncomputable section
namespace RH16ActualAdaptiveDepthBudget
open RH16AdaptiveVaughan
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

/-- The actual auxiliary prime-power depth includes four complete short-cutoff squares. -/
theorem actual_adaptive_depth_ge_four_square (A : ℝ) (hA : 32 ≤ A) :
    4 * (vaughanCutoff A) ^ 2 ≤ adaptiveMangoldtDepth A := by
  have ha : 0 ≤ A := by linarith
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 945 ≤ A ^ 2 := by nlinarith
  have hexp := Real.pow_div_factorial_le_exp (2 * A) (by linarith : 0 ≤ 2 * A) 8
  norm_num at hexp
  have hpoly : 6 * A ^ 6 ≤ (2 * A) ^ 8 / (40320 : ℝ) := by
    nlinarith [mul_nonneg (pow_nonneg ha 6) (sub_nonneg.mpr hA2)]
  have hc : (vaughanCutoff A : ℝ) ^ 3 ≤ A ^ 6 := by
    convert pow_le_pow_left₀ (Nat.cast_nonneg (vaughanCutoff A)) hU 3 using 1 <;> ring
  have he : ((4 * (vaughanCutoff A) ^ 3 : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    push_cast
    nlinarith [pow_nonneg ha 6]
  have hn : 4 * (vaughanCutoff A) ^ 3 ≤ sourceKernelCutoff A := by
    exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr he
  unfold adaptiveMangoldtDepth
  apply (Nat.le_div_iff_mul_le (vaughanCutoff_pos A (by linarith : 1 ≤ A))).mpr
  convert hn using 1 <;> ring
end RH16ActualAdaptiveDepthBudget
```
