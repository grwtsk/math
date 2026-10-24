-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfMomentTransportWithFirstMoment.Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.HalfMomentTransportWithFirstMoment.Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/nonzero-first-moment-sampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TwoMomentSampling

/-!
Scratch only: retain an arbitrary actual first exponential moment as a B/x
sampling main term, using the already proved integral and variation estimates.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfMomentTransportWithFirstMoment.Variant3af71a267019cf523b3e9cb339b76d53aa9dd5f80e071cc50ce1deac2cd7bc72

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling

open MeasureTheory Set
open TwoMomentSampling

noncomputable section

theorem half_moment_transport_with_firstMoment (F : ℝ → ℝ) (s B : ℝ)
    (hF : Continuous F) (hcompact : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B) :
    (∫ r in Ioi (0 : ℝ), r * Real.exp (r / 2) * F (s + r)) =
      Real.exp (-s / 2) * B +
        ∫ r in Ioi (0 : ℝ), r * Real.exp (-r / 2) * F (s - r) := by
  have h0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * F t) := by
    simpa only [pow_zero, one_mul] using weighted_moment_integrable F hF hcompact 0
  have h1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * F t) := by
    simpa only [pow_one] using weighted_moment_integrable F hF hcompact 1
  have hi := translated_first_moment_integrable F s hF hcompact
  have hsplit := intervalIntegral.integral_Iic_add_Ioi hi.integrableOn hi.integrableOn (b := 0)
  rw [translated_first_moment F s h0 h1, hz0, hB, mul_zero, sub_zero] at hsplit
  have href : (∫ r in Iic (0 : ℝ), r * Real.exp (r / 2) * F (s + r)) =
      -(∫ r in Ioi (0 : ℝ), r * Real.exp (-r / 2) * F (s - r)) := by
    have hh := integral_comp_neg_Ioi 0 (fun r : ℝ ↦ r * Real.exp (r / 2) * F (s + r))
    simp only [neg_zero] at hh
    rw [← hh, ← integral_neg]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro r _
    simp only [← sub_eq_add_neg]
    ring
  rw [href] at hsplit
  linarith

theorem sampling_integral_sub_firstMoment (F : ℝ → ℝ) (x B : ℝ) (hx : 0 < x)
    (hF : Continuous F) (hcompact : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B) :
    (∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x =
      (1 / Real.sqrt x) * ∫ r in Ioi (0 : ℝ),
        r * Real.exp (-r / 2) * F (Real.log x - r) := by
  have hchange := integral_comp_exp_Ioi (samplingIntegrand F x) 0
  simp only [smul_eq_mul, Real.exp_zero] at hchange
  rw [← hchange]
  simp_rw [sampling_exp_substitution F x _ hx]
  rw [integral_const_mul,
    half_moment_transport_with_firstMoment F (Real.log x) B hF hcompact hz0 hB]
  have he : Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx, one_div]
  have hmain : (1 / Real.sqrt x) * (Real.exp (-Real.log x / 2) * B) = B / x := by
    rw [he]
    calc
      _ = B / (Real.sqrt x) ^ 2 := by ring
      _ = B / x := by rw [Real.sq_sqrt hx.le]
  rw [mul_add, hmain]
  ring

theorem sampling_integral_sub_firstMoment_abs_le (F : ℝ → ℝ) (x L B : ℝ)
    (hx : 0 < x) (hF : Continuous F) (hcompact : HasCompactSupport F)
    (hbound : ∀ t : ℝ, |F t| ≤ L)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B) :
    |(∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x| ≤
      4 * L / Real.sqrt x := by
  rw [sampling_integral_sub_firstMoment F x B hx hF hcompact hz0 hB,
    abs_mul, abs_of_nonneg (by positivity : 0 ≤ 1 / Real.sqrt x)]
  have h := mul_le_mul_of_nonneg_left (reflected_moment_abs_le F (Real.log x) L hF hbound)
    (by positivity : 0 ≤ 1 / Real.sqrt x)
  simpa only [one_div, div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc, one_mul] using h

theorem sampling_sum_sub_firstMoment_abs_le (F : ℝ → ℝ) (x L L' B : ℝ) (N : ℕ)
    (hx : 0 < x) (hN : 1 ≤ N) (hF : ContDiff ℝ 1 F) (hcompact : HasCompactSupport F)
    (hbound : ∀ t : ℝ, |F t| ≤ L) (hderiv : ∀ t : ℝ, |deriv F t| ≤ L')
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hB : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = B)
    (hcut : ∀ u : ℝ, (N : ℝ) ≤ u → samplingIntegrand F x u = 0) :
    |(∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) - B / x| ≤
      (8 * L + 4 * L') / Real.sqrt x := by
  have hd : ∀ u ∈ Icc (1 : ℝ) N, DifferentiableAt ℝ (samplingIntegrand F x) u := by
    intro u hu
    exact (sampling_hasDerivAt F x u hx (lt_of_lt_of_le zero_lt_one hu.1)
      (hF.differentiable (by norm_num))).differentiableAt
  have herr := SamplingError.abs_sum_sub_integral_Ioi_le (samplingIntegrand F x) N hN hd
    (sampling_integrable F x hx hF.continuous hcompact)
    (sampling_deriv_integrable F x L L' hx hF hbound hderiv) hcut
  have hvariation := sampling_deriv_integral_abs_le F x L L' hx hF hbound hderiv
  have hintegral := sampling_integral_sub_firstMoment_abs_le F x L B hx
    hF.continuous hcompact hbound hz0 hB
  calc
    _ = |((∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) -
        ∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) +
        ((∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x)| := by congr 1; ring
    _ ≤ |(∑ k ∈ Finset.Icc 1 N, samplingIntegrand F x k) -
        ∫ u in Ioi (1 : ℝ), samplingIntegrand F x u| +
        |(∫ u in Ioi (1 : ℝ), samplingIntegrand F x u) - B / x| := abs_add_le _ _
    _ ≤ 4 * (L + L') / Real.sqrt x + 4 * L / Real.sqrt x :=
      add_le_add (herr.trans hvariation) hintegral
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling

#check FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_sum_sub_firstMoment_abs_le

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.half_moment_transport_with_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_integral_sub_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_integral_sub_firstMoment_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchNonzeroFirstMomentSampling.sampling_sum_sub_firstMoment_abs_le
