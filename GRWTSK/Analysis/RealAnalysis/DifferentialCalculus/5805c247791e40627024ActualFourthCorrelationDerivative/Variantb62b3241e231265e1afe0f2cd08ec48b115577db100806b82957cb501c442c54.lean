-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeBounded.Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualFirstDerivativeBounded.Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a","mathematical_subject":"Analysis.Calculus","original_sha256":"5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/5805c247791e40627024-ActualFourthCorrelationDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFirstDerivativeRegularity
import SourceSecondProfileContinuity
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.Analysis.Calculus.ParametricIntegral

/-!
Fourth ordinary derivative of the unchanged actual source correlation.
Global Lipschitz domination justifies differentiation under the integral;
only two moving support seams are excluded almost everywhere. The source
second derivative itself need not exist at those seams.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeBounded.Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory Set Filter
open scoped Topology NNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation
open FormalResearch.RiemannHypothesis.SourceSecondProfileContinuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

private theorem actual_first_derivative_bounded (A : ℝ) (hA : 0 < A) :
    ∃ M : ℝ, 0 ≤ M ∧ ∀ x : ℝ,
      |deriv (normalizedTest explicitSecondDerivative A) x| ≤ M := by
  have hc : Continuous (normalizedInteriorDerivative A) := by
    unfold normalizedInteriorDerivative thirdInterior firstInterior
    fun_prop
  obtain ⟨M, hM⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    hc.continuousOn
  refine ⟨max 0 M, le_max_left _ _, ?_⟩
  intro x
  rw [actual_first_derivative_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx]
    have hb : |normalizedInteriorDerivative A x| ≤ M := by
      simpa only [Real.norm_eq_abs] using hM x hx
    exact hb.trans (le_max_right _ _)
  · rw [indicator_of_notMem hx, abs_zero]
    exact le_max_left _ _

private theorem actual_translate_product_hasDerivAt (A : ℝ) (hA : 0 < A)
    (g : ℝ → ℝ) (hg : Integrable g) (t : ℝ) :
    HasDerivAt (fun s => ∫ x : ℝ, g x *
      deriv (normalizedTest explicitSecondDerivative A) (x - s))
      (-(∫ x : ℝ, g x * actualSecondProfile A (x - t))) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hc : Continuous f := (normalizedTest_contDiff A hA).continuous_deriv (by norm_num)
  obtain ⟨M, _hM0, hM⟩ := actual_first_derivative_bounded A hA
  obtain ⟨K, hK⟩ := actual_first_derivative_lipschitz A hA
  have hmeas : ∀ s : ℝ, AEStronglyMeasurable (fun x => g x * f (x - s)) volume :=
    fun s => hg.aestronglyMeasurable.mul
      (hc.comp (continuous_id.sub continuous_const)).aestronglyMeasurable
  have hint : Integrable (fun x => g x * f (x - t)) := by
    apply (hg.abs.mul_const M).mono' (hmeas t)
    filter_upwards [] with x
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul_of_nonneg_left (hM (x - t)) (abs_nonneg _)
  have hmder : AEStronglyMeasurable
      (fun x => -(g x * actualSecondProfile A (x - t))) volume :=
    (hg.aestronglyMeasurable.mul ((actualSecondProfile_measurable A).comp
      (measurable_id.sub measurable_const)).aestronglyMeasurable).neg
  have hlip : ∀ᵐ x : ℝ, LipschitzOnWith (Real.nnabs ((K : ℝ) * |g x|))
      (fun s => g x * f (x - s)) univ := by
    filter_upwards [] with x
    apply LipschitzOnWith.of_dist_le_mul
    intro s _ u _
    rw [Real.dist_eq, ← mul_sub, abs_mul, Real.coe_nnabs,
      abs_of_nonneg (mul_nonneg K.coe_nonneg (abs_nonneg _)), Real.dist_eq]
    have hb := hK.dist_le_mul (x - s) (x - u)
    rw [Real.dist_eq, Real.dist_eq] at hb
    have he : |x - s - (x - u)| = |s - u| := by
      rw [show x - s - (x - u) = -(s - u) by ring, abs_neg]
    rw [he] at hb
    nlinarith [mul_le_mul_of_nonneg_left hb (abs_nonneg (g x))]
  have hdiff : ∀ᵐ x : ℝ, HasDerivAt (fun s => g x * f (x - s))
      (-(g x * actualSecondProfile A (x - t))) t := by
    filter_upwards [volume.ae_ne (t - A), volume.ae_ne (t + A)] with x hxl hxr
    have hl : x - t ≠ -A := by intro h; apply hxl; linarith
    have hr : x - t ≠ A := by intro h; apply hxr; linarith
    have hd := (actual_first_derivative_hasDerivAt_of_ne_endpoints A (x - t) hA hl hr).comp t
      ((hasDerivAt_const t x).sub (hasDerivAt_id t))
    simpa only [f, Function.comp_def, zero_sub, mul_neg, mul_one] using! hd.const_mul (g x)
  have hd := (hasDerivAt_integral_of_dominated_loc_of_lip
    (F := fun s x : ℝ => g x * f (x - s))
    (F' := fun x => -(g x * actualSecondProfile A (x - t)))
    (bound := fun x => (K : ℝ) * |g x|)
    (s := univ) (μ := volume) (by simp)
    (Eventually.of_forall hmeas) hint hmder hlip (hg.abs.const_mul _) hdiff).2
  simpa only [integral_neg, f] using hd

private theorem actual_translate_add_product_hasDerivAt (A : ℝ) (hA : 0 < A)
    (g : ℝ → ℝ) (hg : Integrable g) (t : ℝ) :
    HasDerivAt (fun s => ∫ x : ℝ, g x *
      deriv (normalizedTest explicitSecondDerivative A) (x + s))
      (∫ x : ℝ, g x * actualSecondProfile A (x + t)) t := by
  have hd := (actual_translate_product_hasDerivAt A hA g hg (-t)).comp t
    (hasDerivAt_neg t)
  simpa only [Function.comp_def, sub_neg_eq_add, neg_mul, mul_neg, neg_neg, mul_one] using hd

/-- The actual third derivative is the signed mixed second/first-profile correlation. -/
theorem actual_correlation_third_derivative (A : ℝ) (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x : ℝ, actualSecondProfile A x *
        deriv (normalizedTest explicitSecondDerivative A) (x + t)) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hd := (actual_translate_product_hasDerivAt A hA f
    (normalizedTest_deriv_integrable hA) t).neg
  have he : (∫ x : ℝ, f x * actualSecondProfile A (x - t)) =
      ∫ x : ℝ, actualSecondProfile A x * f (x + t) := by
    have hs := integral_sub_right_eq_self (μ := volume)
      (fun x : ℝ => actualSecondProfile A x * f (x + t)) t
    simpa only [sub_add_cancel, mul_comm] using hs
  have hf : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s => -(∫ x : ℝ, f x * f (x - s)) :=
    funext fun s => sourceCorrelation_second_deriv_eq_integral hA s
  rw [hf]
  simpa only [Pi.neg_apply, neg_neg, he, f] using! hd

/-- Two differentiated factors identify the fourth derivative with the actual L2 profile. -/
theorem actual_correlation_fourth_derivative (A : ℝ) (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
      (actualSecondProfileCorrelation A t) t := by
  have hd := actual_translate_add_product_hasDerivAt A hA (actualSecondProfile A)
    (actualSecondProfile_integrable A hA) t
  have hf : deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) =
      fun s => ∫ x : ℝ, actualSecondProfile A x *
        deriv (normalizedTest explicitSecondDerivative A) (x + s) :=
    funext fun s => (actual_correlation_third_derivative A hA s).deriv
  rw [hf]
  have he : (∫ x : ℝ, actualSecondProfile A x * actualSecondProfile A (x + t)) =
      actualSecondProfileCorrelation A t := by
    have hs := integral_add_right_eq_self (μ := volume)
      (fun x : ℝ => actualSecondProfile A x * actualSecondProfile A (x - t)) t
    simpa only [actualSecondProfileCorrelation, add_sub_cancel_right, mul_comm] using hs
  simpa only [he] using hd

/-- This is an ordinary fourth-derivative identity at every real separation. -/
theorem actual_correlation_fourth_derivative_eq (A : ℝ) (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t =
      actualSecondProfileCorrelation A t :=
  (actual_correlation_fourth_derivative A hA t).deriv

end
end RH16IndependentChallengeNext
