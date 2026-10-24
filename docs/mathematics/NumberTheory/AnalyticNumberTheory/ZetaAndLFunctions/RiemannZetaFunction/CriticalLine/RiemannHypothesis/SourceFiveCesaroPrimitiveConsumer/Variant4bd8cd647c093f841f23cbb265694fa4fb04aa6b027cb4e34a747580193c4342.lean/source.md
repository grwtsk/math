# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFiveCesaroPrimitiveConsumer.Variant4bd8cd647c093f841f23cbb265694fa4fb04aa6b027cb4e34a747580193c4342

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5139ddcc31c67b19a3d0821e170dd3effa06b780` · SHA-256 `4bd8cd647c093f841f23cbb265694fa4fb04aa6b027cb4e34a747580193c4342`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FiveCesaroKernelBudget

/-!
Sharper actual source consumer using the triangular Cesaro kernel envelope.
The signed global primitive budget remains an explicit arithmetic obligation.
Direction: grwtsk contributors. AI formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace RH16FiveCesaroConsumer

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive
open RH16CesaroKernel RH16CesaroPrimitive RH16FiveCesaro RH16IndependentChallengeNext
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The global signed Cesaro primitive premise supplies the actual remaining-work witness. -/
theorem remainingAtomWork_lower_of_five_cesaro (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    -((522 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hgc := (actualCesaroPrimitive_absolutelyContinuous A hA1).continuousOn
  have hi : IntervalIntegrable (fun t => actualCesaroPrimitive t *
      deriv (deriv (cesaroWeight A)) t) volume (Real.log 2) (2 * A) :=
    (hgc.mul hc.continuousOn).intervalIntegrable
  have hmain : |∫ t in Real.log 2..2 * A,
      actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
        M * (∫ t in Real.log 2..2 * A,
          (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
    calc
      _ ≤ ∫ t in Real.log 2..2 * A,
          |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| :=
        intervalIntegral.abs_integral_le_integral_abs hlA
      _ ≤ ∫ t in Real.log 2..2 * A,
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) := by
        apply intervalIntegral.integral_mono_on hlA hi.abs
          ((continuous_const.mul
            ((continuous_id.sub continuous_const).mul hc.abs)).intervalIntegrable
            _ _)
        intro t ht
        change |actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t| ≤
          M * ((t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|)
        rw [abs_mul, ← mul_assoc]
        exact mul_le_mul_of_nonneg_right (hG t ht.1) (abs_nonneg _)
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hb := mul_le_mul_of_nonneg_left
    (cesaroWeight_weighted_budget_both_distances_uniform A hA) hM
  have hgamma : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hhead := mul_nonneg hgamma (criticalPrimeTest_at_first_atom_nonneg A hA)
  rw [remainingAtomWork_eq_cesaro_integral A hA1]
  have hbound := hmain.trans hb
  linarith [(abs_le.mp hbound).1]

/-- Conditional return to the exact original all-real theorem at the checked analytic radius. -/
theorem estimate_of_five_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail ((522 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_five_cesaro M A hM hA hG

/-- The complete lower constant preserves the finite prefix and actual baseline correction. -/
theorem all_real_source_lower_of_five_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 *
          ((522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail ((522 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_five_cesaro M A hM hA hG

/-- This constructs the original estimate only from an explicitly supplied arithmetic witness. -/
theorem estimate_of_five_cesaro_global_exists
    (h : ∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  rcases h with ⟨M, hM, hG⟩
  exact ⟨min (originalPrefixLower 91)
      (archimedeanMultiplier 0 - 2 *
        ((522 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)),
    all_real_source_lower_of_five_cesaro_global M hM hG⟩

end RH16FiveCesaroConsumer
```
