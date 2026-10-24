-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSecondProfileContinuousAtOfNeEndpoints.Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualSecondProfileContinuousAtOfNeEndpoints.Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/0cb3f83b012be221e5ce-SourceSecondProfileContinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSecondProfileCorrelation
import ActualSourceWeakSecondDerivative

/-!
# Continuity of the actual second-profile autocorrelation

AI attribution: OpenAI Codex. The second profile has two retained jumps.
Dominated continuity excludes only the two moving seams almost everywhere.
No global C2 source or fourth-derivative identification is assumed.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSecondProfileContinuousAtOfNeEndpoints.Variant0cb3f83b012be221e5ce912b4e9f697a605e19f30f731a14cc93a045ad8acdd3

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSecondProfileContinuity

open MeasureTheory Set Filter
open RH16IndependentChallengeNext SourceSecondProfileCorrelation

noncomputable section

theorem actualSecondProfile_continuousAt_of_ne_endpoints (A x : ℝ) (hA : 0 < A)
    (hl : x ≠ -A) (hr : x ≠ A) : ContinuousAt (actualSecondProfile A) x := by
  rw [actualSecondProfile_eq_indicator A hA]
  apply (normalizedInteriorSecond_continuous A).continuousOn.continuousAt_indicator
  rw [frontier_Icc (by linarith : -A ≤ A)]
  simpa using And.intro hl hr

theorem actualSecondProfile_bounded (A : ℝ) (hA : 0 < A) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ x : ℝ, |actualSecondProfile A x| ≤ M := by
  obtain ⟨M, hM⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    (normalizedInteriorSecond_continuous A).continuousOn
  refine ⟨max 0 M, le_max_left _ _, ?_⟩
  intro x
  rw [actualSecondProfile_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    have hb : |normalizedInteriorSecond A x| ≤ M := by
      simpa only [Real.norm_eq_abs] using hM x hx
    exact hb.trans (le_max_right _ _)
  · rw [indicator_of_notMem hx, abs_zero]
    exact le_max_left _ _

/-- Product integrability and a fixed L1 dominator justify continuity at every real shift. -/
theorem actualSecondProfileCorrelation_continuous (A : ℝ) (hA : 0 < A) :
    Continuous (actualSecondProfileCorrelation A) := by
  obtain ⟨M, _hM0, hM⟩ := actualSecondProfile_bounded A hA
  apply continuous_iff_continuousAt.mpr
  intro t
  apply continuousAt_of_dominated
    (F := fun s x : ℝ => actualSecondProfile A x * actualSecondProfile A (x - s))
    (bound := fun x : ℝ => |actualSecondProfile A x| * M)
  · exact Eventually.of_forall fun s =>
      (actualSecondProfile_correlation_integrand_integrable A s hA).aestronglyMeasurable
  · filter_upwards [] with s
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hM (x - s)) (abs_nonneg _)
  · exact (actualSecondProfile_integrable A hA).abs.mul_const M
  · filter_upwards [volume.ae_ne (t - A), volume.ae_ne (t + A)] with x hxl hxr
    have hl : x - t ≠ -A := by intro h; apply hxl; linarith
    have hr : x - t ≠ A := by intro h; apply hxr; linarith
    have hc := (actualSecondProfile_continuousAt_of_ne_endpoints A (x - t) hA hl hr).comp
      (continuousAt_const.sub continuousAt_id)
    exact continuousAt_const.mul hc

end
end FormalResearch.RiemannHypothesis.SourceSecondProfileContinuity
