# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · SHA-256 `f690f133b0ee84b62af7e92bf4e371586b9e53f1779a5c2c141907f0590f6946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.AnchoredProfileAbsLe.Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.AnchoredProfileAbsLe.Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04","mathematical_subject":"Analysis.Integration","original_sha256":"372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceKernelLogProfile

/-!
# Origin-anchored two-moment sampling

The profile's vanishing value at zero and derivative bound produce a linear
majorant. That majorant is integrated through both the finite quadrature error
and the reflected signed integral. No global constant bound for the profile
replaces its linear growth estimate.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.AnchoredProfileAbsLe.Variant372964271dde4d46482257321874d7aea0bf32f50b109cf921315252dbb5ea04

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateAnchoredTwoMomentSampling

open MeasureTheory Set Filter
open EstimateMomentReflection EstimateLogSampling EstimateLogSamplingIntegrals
open EstimateTwoMomentSampling EstimateTwoMomentSamplingBound EstimateSourceKernelLogProfile

noncomputable section

/-- A derivative bound and the actual origin value give a global linear profile bound. -/
theorem anchored_profile_abs_le {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {L : ℝ} (hzero : F 0 = 0) (hderiv : ∀ t, |deriv F t| ≤ L) (t : ℝ) :
    |F t| ≤ L * |t| := by
  have h := (convex_univ : Convex ℝ (univ : Set ℝ)).norm_image_sub_le_of_norm_deriv_le
    (fun x _ ↦ hF.differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using hderiv x)
    (mem_univ 0) (mem_univ t)
  simpa only [hzero, sub_zero, Real.norm_eq_abs] using h

/-- The exact second exponential moment needed by the linear majorant. -/
theorem exponential_half_second_moment :
    (∫ r in Ioi (0 : ℝ), r ^ 2 * Real.exp (-r / 2)) = 16 := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := (3 : ℝ)) (r := (1 / 2 : ℝ)) (by norm_num) (by norm_num)
  norm_num [Real.Gamma_nat_eq_factorial, div_eq_mul_inv, mul_comm] at h ⊢
  exact h

/-- Log-square density corresponding to the second exponential moment. -/
def logSquareHalfDensity (u : ℝ) : ℝ := Real.log u ^ 2 * halfDensity u

/-- Exponential substitution identifies the log-square density integral. -/
theorem logSquareHalfDensity_integral :
    (∫ u in Ioi (1 : ℝ), logSquareHalfDensity u) = 16 := by
  have h := integral_comp_exp_Ioi logSquareHalfDensity (0 : ℝ)
  have he (r : ℝ) : Real.exp r * logSquareHalfDensity (Real.exp r) =
      r ^ 2 * Real.exp (-r / 2) := by
    unfold logSquareHalfDensity
    rw [Real.log_exp]
    calc
      _ = r ^ 2 * (Real.exp r * halfDensity (Real.exp r)) := by ring
      _ = _ := by rw [exp_mul_halfDensity]
  simpa only [Real.exp_zero, smul_eq_mul, he, exponential_half_second_moment] using h.symm

/-- The evaluated log-square density is genuinely integrable. -/
theorem logSquareHalfDensity_integrable :
    IntegrableOn logSquareHalfDensity (Ioi (1 : ℝ)) :=
  .of_integral_ne_zero (by rw [logSquareHalfDensity_integral]; norm_num)

/-- The quadratic-in-log majorant retains the scale and the profile's linear growth. -/
def anchoredDerivativeMajorant (s L u : ℝ) : ℝ :=
  Real.exp (-s / 2) * L *
    (s * halfDensity u + (s / 2 + 2) * logHalfDensity u +
      (1 / 2 : ℝ) * logSquareHalfDensity u)

/-- All terms of the anchored derivative majorant are integrable. -/
theorem anchoredDerivativeMajorant_integrable (s L : ℝ) :
    IntegrableOn (anchoredDerivativeMajorant s L) (Ioi (1 : ℝ)) :=
  (((halfDensity_integrableOn.const_mul s).add
    (logHalfDensity_integrableOn.const_mul (s / 2 + 2))).add
      (logSquareHalfDensity_integrable.const_mul (1 / 2))).const_mul _

/-- Exact quadrature-majorant mass, including its second moment. -/
theorem anchoredDerivativeMajorant_integral (s L : ℝ) :
    (∫ u in Ioi (1 : ℝ), anchoredDerivativeMajorant s L u) =
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  have hi : IntegrableOn (fun u ↦ s * halfDensity u +
      (s / 2 + 2) * logHalfDensity u) (Ioi (1 : ℝ)) :=
    (halfDensity_integrableOn.const_mul s).add
      (logHalfDensity_integrableOn.const_mul (s / 2 + 2))
  unfold anchoredDerivativeMajorant
  rw [integral_const_mul, integral_add hi
    (logSquareHalfDensity_integrable.const_mul (1 / 2)),
    integral_add (halfDensity_integrableOn.const_mul s)
      (logHalfDensity_integrableOn.const_mul (s / 2 + 2)),
    integral_const_mul, integral_const_mul, integral_const_mul,
    halfDensity_integral, logHalfDensity_integral, logSquareHalfDensity_integral]
  ring

/-- Pointwise quadrature derivative estimate using the actual linear profile majorant. -/
theorem abs_logSamplingDerivative_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s u : ℝ} (hzero : F 0 = 0)
    (_hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) (hu : 1 ≤ u) :
    |logSamplingDerivative F (Real.exp s) u| ≤ anchoredDerivativeMajorant s L u := by
  have hu0 : 0 < u := lt_of_lt_of_le zero_lt_one hu
  have hr : 0 ≤ Real.log u := Real.log_nonneg hu
  have hFt : |F (s + Real.log u)| ≤ L * (s + Real.log u) := by
    simpa only [abs_of_nonneg (add_nonneg hs hr)] using
      anchored_profile_abs_le hF hzero hderiv (s + Real.log u)
  have hcoef : |1 - Real.log u / 2| ≤ 1 + Real.log u / 2 := by
    rw [abs_le]
    constructor <;> linarith
  have hinner : |(1 - Real.log u / 2) * F (s + Real.log u) +
      Real.log u * deriv F (s + Real.log u)| ≤
      (1 + Real.log u / 2) * (L * (s + Real.log u)) + Real.log u * L := by
    calc
      _ ≤ |1 - Real.log u / 2| * |F (s + Real.log u)| +
          |Real.log u| * |deriv F (s + Real.log u)| := by
        simpa only [abs_mul] using abs_add_le
          ((1 - Real.log u / 2) * F (s + Real.log u))
          (Real.log u * deriv F (s + Real.log u))
      _ ≤ _ := by
        rw [abs_of_nonneg hr]
        exact add_le_add
          (mul_le_mul hcoef hFt (abs_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left (hderiv _) hr)
  have he : Real.exp (-(s + Real.log u) / 2) =
      Real.exp (-s / 2) * Real.exp (-Real.log u / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold logSamplingDerivative
  rw [Real.log_exp, abs_mul, abs_div, abs_of_pos (Real.exp_pos _), abs_of_pos hu0, he]
  calc
    _ ≤ (Real.exp (-s / 2) * Real.exp (-Real.log u / 2) / u) *
        ((1 + Real.log u / 2) * (L * (s + Real.log u)) + Real.log u * L) :=
      mul_le_mul_of_nonneg_left hinner (by positivity)
    _ = _ := by
      unfold anchoredDerivativeMajorant logSquareHalfDensity logHalfDensity halfDensity
      ring

/-- The sampling derivative is integrable under the anchored linear envelope. -/
theorem anchored_samplingDerivative_integrable {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    IntegrableOn (logSamplingDerivative F (Real.exp s)) (Ioi (1 : ℝ)) := by
  have hc := logSamplingDerivative_continuousOn_Ioi_one hF (Real.exp_pos s)
  have hm : AEStronglyMeasurable (logSamplingDerivative F (Real.exp s))
      (volume.restrict (Ioi (1 : ℝ))) := hc.aestronglyMeasurable measurableSet_Ioi
  refine Integrable.mono' (anchoredDerivativeMajorant_integrable s L) hm ?_
  exact (ae_restrict_iff' measurableSet_Ioi).2
    (Eventually.of_forall fun u hu ↦ by
      rw [Real.norm_eq_abs]
      exact abs_logSamplingDerivative_anchored_le hF hzero hL hderiv hs hu.le)

/-- The full quadrature derivative mass is bounded using the linear envelope. -/
theorem integral_abs_samplingDerivative_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    (∫ u in Ioi (1 : ℝ), |logSamplingDerivative F (Real.exp s) u|) ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  have hd := anchored_samplingDerivative_integrable hF hzero hL hderiv hs
  calc
    _ ≤ ∫ u in Ioi (1 : ℝ), anchoredDerivativeMajorant s L u := by
      refine setIntegral_mono_ae_restrict hd.norm
        (anchoredDerivativeMajorant_integrable s L) ?_
      exact (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun u hu ↦
          abs_logSamplingDerivative_anchored_le hF hzero hL hderiv hs hu.le)
    _ = _ := anchoredDerivativeMajorant_integral s L

/-- The existing finite quadrature error with the anchored integral bound substituted. -/
theorem finite_sampling_error_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) (N : ℕ) :
    |leftSampleSum (logSamplingTerm F (Real.exp s)) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ), logSamplingTerm F (Real.exp s) u| ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  have hfinite := finite_log_sampling_error hF (Real.exp_pos s) N
  have hder := anchored_samplingDerivative_integrable hF hzero hL hderiv hs
  have habs : IntegrableOn (fun u ↦ |logSamplingDerivative F (Real.exp s) u|)
      (Ioi (1 : ℝ)) := by
    simpa only [IntegrableOn, Real.norm_eq_abs] using hder.norm
  have hmono : (∫ u in (1 : ℝ)..(N + 1 : ℝ),
      |logSamplingDerivative F (Real.exp s) u|) ≤
      ∫ u in Ioi (1 : ℝ), |logSamplingDerivative F (Real.exp s) u| := by
    rw [intervalIntegral.integral_of_le (by norm_num : (1 : ℝ) ≤ N + 1)]
    apply setIntegral_mono_set habs
    · exact (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun _ _ ↦ abs_nonneg _)
    · exact Eventually.of_forall fun _ hu ↦ hu.1
  exact hfinite.trans (hmono.trans
    (integral_abs_samplingDerivative_anchored_le hF hzero hL hderiv hs))

/-- The signed integral is reflected before its anchored linear majorant is applied. -/
theorem abs_reflected_integral_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    |∫ r in Ioi (0 : ℝ), reflectedMomentIntegrand F s r| ≤ L * (4 * s + 16) := by
  have hi1 : IntegrableOn (fun r : ℝ ↦ r * Real.exp (-r / 2)) (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by rw [exponential_half_first_moment]; norm_num)
  have hi2 : IntegrableOn (fun r : ℝ ↦ r ^ 2 * Real.exp (-r / 2)) (Ioi (0 : ℝ)) :=
    .of_integral_ne_zero (by rw [exponential_half_second_moment]; norm_num)
  have hmaj : IntegrableOn (fun r ↦ L *
      (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2))) (Ioi (0 : ℝ)) :=
    ((hi1.const_mul s).add hi2).const_mul L
  have href : IntegrableOn (reflectedMomentIntegrand F s) (Ioi (0 : ℝ)) :=
    (reflectedMomentIntegrand_integrable hMom s).integrableOn
  have hpoint (r : ℝ) (hr : 0 < r) : |reflectedMomentIntegrand F s r| ≤
      L * (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2)) := by
    have hsr : |s - r| ≤ s + r := by
      simpa only [abs_of_nonneg hs, abs_of_nonneg hr.le] using abs_sub s r
    have hFt := (anchored_profile_abs_le hF hzero hderiv (s - r)).trans
      (mul_le_mul_of_nonneg_left hsr hL)
    unfold reflectedMomentIntegrand
    rw [abs_mul, abs_mul, abs_of_pos hr, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ (r * Real.exp (-r / 2)) * (L * (s + r)) :=
        mul_le_mul_of_nonneg_left hFt (by positivity)
      _ = _ := by ring
  calc
    _ ≤ ∫ r in Ioi (0 : ℝ), |reflectedMomentIntegrand F s r| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ r in Ioi (0 : ℝ), L *
        (s * (r * Real.exp (-r / 2)) + r ^ 2 * Real.exp (-r / 2)) := by
      refine setIntegral_mono_ae_restrict href.norm hmaj ?_
      exact (ae_restrict_iff' measurableSet_Ioi).2 (Eventually.of_forall hpoint)
    _ = _ := by
      rw [integral_const_mul, integral_add (hi1.const_mul s) hi2,
        integral_const_mul, exponential_half_first_moment, exponential_half_second_moment]
      ring

/-- Reflection yields the second anchored contribution to the sampled integral. -/
theorem abs_sampling_integral_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    |∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u| ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  rw [logSampling_integral_Ioi_eq_reflected hMom (Real.exp_pos s), Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)]
  simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
    (abs_reflected_integral_anchored_le hF hMom hzero hL hderiv hs)
    (Real.exp_pos (-s / 2)).le

/-- Anchoring improves the finite sampler without changing its cutoff or moment hypotheses. -/
theorem anchored_two_moment_sampling_bound {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) (hMom : TwoMomentProfile F) {L : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L)
    (s : ℝ) (hs : 0 ≤ s) (N : ℕ) (hTail : SamplingTailZero F (Real.exp s) N) :
    |∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
        F (s + Real.log (k : ℝ))| ≤ L * (8 * s + 32) := by
  have herr := finite_sampling_error_anchored_le hF hzero hL hderiv hs N
  rw [finite_interval_eq_Ioi_of_tailZero hF (Real.exp_pos s) N hTail] at herr
  have hint := abs_sampling_integral_anchored_le hF hMom hzero hL hderiv hs
  have hbase : |leftSampleSum (logSamplingTerm F (Real.exp s)) N| ≤
      Real.exp (-s / 2) * L * (8 * s + 32) := by
    have htri := abs_add_le
      (leftSampleSum (logSamplingTerm F (Real.exp s)) N -
        ∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u)
      (∫ u in Ioi (1 : ℝ), logSamplingTerm F (Real.exp s) u)
    rw [sub_add_cancel] at htri
    nlinarith
  have hm := mul_le_mul_of_nonneg_left hbase (Real.exp_pos (s / 2)).le
  have he : Real.exp (s / 2) * (Real.exp (-s / 2) * L * (8 * s + 32)) =
      L * (8 * s + 32) := by
    have he0 : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
      rw [← Real.exp_add, show s / 2 + -s / 2 = 0 by ring, Real.exp_zero]
    calc
      _ = (Real.exp (s / 2) * Real.exp (-s / 2)) * L * (8 * s + 32) := by ring
      _ = _ := by rw [he0, one_mul]
  rw [he] at hm
  rw [← exp_half_mul_leftSampleSum F N s, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact hm

end
end EstimateAnchoredTwoMomentSampling
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
