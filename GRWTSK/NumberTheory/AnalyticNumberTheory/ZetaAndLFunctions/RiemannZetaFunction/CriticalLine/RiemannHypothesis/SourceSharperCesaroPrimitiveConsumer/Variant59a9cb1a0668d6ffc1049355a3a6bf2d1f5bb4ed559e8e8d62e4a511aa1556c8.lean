-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingAtomWorkLowerOfSharperCesaro.Variant1cc5c642cabb336744057d4ca7ee075e6ea8063508a12fbf5697e176dab531f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cc5c642cabb336744057d4ca7ee075e6ea8063508a12fbf5697e176dab531f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RemainingAtomWorkLowerOfSharperCesaro.Variant1cc5c642cabb336744057d4ca7ee075e6ea8063508a12fbf5697e176dab531f0","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1cc5c642cabb336744057d4ca7ee075e6ea8063508a12fbf5697e176dab531f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-sharper-kernels-replay/SourceSharperCesaroPrimitiveConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SharperCesaroKernelBudget

/-!
Sharper actual source consumer using the triangular Cesaro kernel envelope.
The signed global primitive budget remains an explicit arithmetic obligation.
Direction: grwtsk contributors. AI formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingAtomWorkLowerOfSharperCesaro.Variant1cc5c642cabb336744057d4ca7ee075e6ea8063508a12fbf5697e176dab531f0

set_option autoImplicit false
noncomputable section

namespace RH16SharperCesaroConsumer

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.Research.ActualCriticalPrimitive
open RH16CesaroKernel RH16CesaroPrimitive RH16SharperCesaro RH16IndependentChallengeNext
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
theorem remainingAtomWork_lower_of_sharper_cesaro (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    -((1887 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
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
theorem estimate_of_sharper_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail ((1887 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_sharper_cesaro M A hM hA hG

/-- The complete lower constant preserves the finite prefix and actual baseline correction. -/
theorem all_real_source_lower_of_sharper_cesaro_global (M : ℝ) (hM : 0 ≤ M)
    (hG : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 *
          ((1887 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail ((1887 / 91 : ℝ) * M) 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_sharper_cesaro M A hM hA hG

/-- This constructs the original estimate only from an explicitly supplied arithmetic witness. -/
theorem estimate_of_sharper_cesaro_global_exists
    (h : ∃ M : ℝ, 0 ≤ M ∧ ∀ t : ℝ, Real.log 2 ≤ t →
      |actualCesaroPrimitive t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  rcases h with ⟨M, hM, hG⟩
  exact ⟨min (originalPrefixLower 91)
      (archimedeanMultiplier 0 - 2 *
        ((1887 / 91 : ℝ) * M - 3 / 8 + criticalBaselineCorrection 91)),
    all_real_source_lower_of_sharper_cesaro_global M hM hG⟩

end RH16SharperCesaroConsumer
