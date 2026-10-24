# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRemainingVariationConsumer.Variant233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c91bb18e73e56d82df37ad100552bb948c1119b4` · SHA-256 `233a78710cbaa491e4672124d69c3e7bed1e49d91b2b89192323bc1df89db95f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRemainingVariationObstruction

/-!
Actual-source application of the derivative-variation result. The inherited
global arithmetic-error bound gives a growing absolute budget. No signed
remaining-work lower witness is inferred from this envelope.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceRemainingVariationConsumer

open MeasureTheory Set
open scoped Interval
open SourceFirstPrimeAbel SourceMangoldtAbel SourceFirstAtomSignedWork
open SourceRemainingVariationObstruction

/-- Applying the actual elementary error bound gives its literal derivative-mass envelope. -/
theorem remainingAtomWork_abs_le_elementary_budget {A : ℝ} (hA : 40 ≤ A) :
    |remainingAtomWork A| ≤
      (Real.log 4 + 4 + Real.log 2) * remainingDerivativeMass A := by
  have hp : 0 < A := by linarith
  have hb0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hb1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hab : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  have hg := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A) hab
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A hp)
  have hm : (∫ t in Real.log 2..2 * A,
      |mangoldtLogError t * deriv (criticalPrimeTest A) t|) ≤
      ∫ t in Real.log 2..2 * A,
        (Real.log 4 + 4 + Real.log 2) * |deriv (criticalPrimeTest A) t| := by
    apply intervalIntegral.integral_mono_on hab hi.abs
      ((hg.abs.const_mul _).intervalIntegrable _ _)
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right
      (mangoldtLogError_abs_le t (hb0.trans ht.1)) (abs_nonneg _)
  unfold remainingAtomWork
  exact (intervalIntegral.abs_integral_le_integral_abs hab).trans
    (hm.trans_eq (by rw [intervalIntegral.integral_const_mul]; rfl))

/-- The obtained absolute budget itself has no eventual constant upper bound. -/
theorem elementary_remaining_budget_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A →
      (Real.log 4 + 4 + Real.log 2) * remainingDerivativeMass A ≤ M := by
  have hb : 0 < Real.log 4 + 4 + Real.log (2 : ℝ) := by
    have h4 : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
    have h2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
    linarith
  rintro ⟨M, R, h⟩
  apply remainingDerivativeMass_not_eventually_bounded
  refine ⟨M / (Real.log 4 + 4 + Real.log 2), R, ?_⟩
  intro A h40 hRA
  exact (le_div_iff₀ hb).mpr (by simpa only [mul_comm] using h A h40 hRA)

end FormalResearch.RiemannHypothesis.SourceRemainingVariationConsumer
```
