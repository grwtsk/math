-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExponentialHasDerivAt.Variant9996c2b9a8a8a7b8536c3b87628a5748cf5214b4184fa93d560ada89669721b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9996c2b9a8a8a7b8536c3b87628a5748cf5214b4184fa93d560ada89669721b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ExponentialHasDerivAt.Variant9996c2b9a8a8a7b8536c3b87628a5748cf5214b4184fa93d560ada89669721b5","mathematical_subject":"Analysis.Calculus","original_sha256":"9996c2b9a8a8a7b8536c3b87628a5748cf5214b4184fa93d560ada89669721b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-laplace-mellin/attempt03.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiMellinSeven
import RootActualXiComplexLaplaceBudget

/-!
The actual anchored F7 Laplace transform is transported by finite absolutely
continuous Abel integration and genuine improper limits. The original closed
prime-power seams, lower seven and gamma correction remain in the source.
No critical-domain continuation or arithmetic average witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExponentialHasDerivAt.Variant9996c2b9a8a8a7b8536c3b87628a5748cf5214b4184fa93d560ada89669721b5

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
open MeasureTheory Set Filter Complex
open scoped Topology Interval
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
open RootActualXiComplexLaplaceBudget SourceActualXiMellinSeven
open RH16ActualPsiNegativeBlock
noncomputable section

private theorem exponential_hasDerivAt (z : ℂ) (t : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (-z * (t : ℂ)))
      (-z * Complex.exp (-z * (t : ℂ))) t := by
  convert (((hasDerivAt_id t).ofReal_comp.const_mul (-z)).cexp) using 1 <;> simp <;> ring

private theorem finite_abel (z : ℂ) {b : ℝ} (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b,
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) +
        (actualAnchoredXiTailPrimitive t : ℂ) *
          (-z * Complex.exp (-z * (t : ℂ)))) =
      (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ)) := by
  let q : ℝ → ℂ := fun t => Complex.exp (-z * (t : ℂ))
  have hq : ContDiff ℝ 1 q := by
    exact (contDiff_const.mul (Complex.ofRealCLM.contDiff :
      ContDiff ℝ 1 (fun t : ℝ => (t : ℂ)))).cexp
  have hr : AbsolutelyContinuousOnInterval (fun t => (q t).re) (Real.log 7) b :=
    (Complex.reCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hm : AbsolutelyContinuousOnInterval (fun t => (q t).im) (Real.log 7) b :=
    (Complex.imCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hd := actualXiTailTimeDensity_intervalIntegrable hb
  have hdc : IntervalIntegrable (fun t => (actualXiTailTimeDensity t : ℂ))
      volume (Real.log 7) b :=
    ⟨Complex.ofRealCLM.integrable_comp hd.1, Complex.ofRealCLM.integrable_comp hd.2⟩
  have hi1 := hdc.mul_continuousOn hq.continuous.continuousOn
  have hc := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn
  have hi2 : IntervalIntegrable (fun t => (actualAnchoredXiTailPrimitive t : ℂ) *
      (-z * q t)) volume (Real.log 7) b :=
    ((Complex.continuous_ofReal.comp_continuousOn hc).mul
      (hq.continuous.const_mul (-z)).continuousOn).intervalIntegrable
  have his := hi1.add hi2
  have hreal :=
    (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hr
  have himag :=
    (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hm
  have hqr (t : ℝ) : HasDerivAt (fun t => (q t).re) (-z * q t).re t := by
    simpa only [Function.comp_apply, Complex.reCLM_apply] using
      Complex.reCLM.hasFDerivAt.comp_hasDerivAt t (exponential_hasDerivAt z t)
  have hqm (t : ℝ) : HasDerivAt (fun t => (q t).im) (-z * q t).im t := by
    simpa only [Function.comp_apply, Complex.imCLM_apply] using
      Complex.imCLM.hasFDerivAt.comp_hasDerivAt t (exponential_hasDerivAt z t)
  apply Complex.ext
  · change (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re =
      ((actualAnchoredXiTailPrimitive b : ℂ) * q b).re
    have her : (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re =
      ∫ t in Real.log 7..b, ((actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re :=
      (intervalIntegral.intervalIntegral_re his).symm
    rw [her]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).re +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).re) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqr t).deriv]
        simp only [add_re, mul_re, ofReal_re, ofReal_im, zero_mul, sub_zero]
      _ = _ := by
        rw [hreal, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_re, ofReal_re, ofReal_im, zero_mul]
  · change (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im =
      ((actualAnchoredXiTailPrimitive b : ℂ) * q b).im
    have hei : (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im =
      ∫ t in Real.log 7..b, ((actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im :=
      (intervalIntegral.intervalIntegral_im his).symm
    rw [hei]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).im +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).im) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqm t).deriv]
        simp only [add_im, mul_im, ofReal_re, ofReal_im, zero_mul, zero_add]
      _ = _ := by
        rw [himag, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_im, ofReal_re, ofReal_im, zero_mul, zero_add]

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
