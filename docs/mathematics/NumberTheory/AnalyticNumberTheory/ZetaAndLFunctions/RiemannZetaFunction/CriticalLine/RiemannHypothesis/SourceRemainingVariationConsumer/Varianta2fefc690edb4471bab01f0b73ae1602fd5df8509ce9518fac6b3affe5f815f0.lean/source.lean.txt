-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingAtomWorkAbsLeElementaryBudget.Variant9fe35148112eca604619bcaf217b1d61f18cee1f4ae6804331af8a3d169dbc58","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fe35148112eca604619bcaf217b1d61f18cee1f4ae6804331af8a3d169dbc58","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RemainingAtomWorkAbsLeElementaryBudget.Variant9fe35148112eca604619bcaf217b1d61f18cee1f4ae6804331af8a3d169dbc58","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9fe35148112eca604619bcaf217b1d61f18cee1f4ae6804331af8a3d169dbc58","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-variation-replay/SourceRemainingVariationConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRemainingVariationObstruction

/-!
Actual-source application of the derivative-variation result. The inherited
global arithmetic-error bound gives a growing absolute budget. No signed
remaining-work lower witness is inferred from this envelope.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingAtomWorkAbsLeElementaryBudget.Variant9fe35148112eca604619bcaf217b1d61f18cee1f4ae6804331af8a3d169dbc58

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
