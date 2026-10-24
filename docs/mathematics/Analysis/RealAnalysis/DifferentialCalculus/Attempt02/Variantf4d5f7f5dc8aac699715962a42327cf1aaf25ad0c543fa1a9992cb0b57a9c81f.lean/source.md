# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt02.Variantf4d5f7f5dc8aac699715962a42327cf1aaf25ad0c543fa1a9992cb0b57a9c81f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b7f4f327e6864a00937965aedf2b5c00c008478` · SHA-256 `25c07ed78a9a1cef6c4d014e08e520d3c212c2061b09a911c3f50cd516a94939`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExponentialHasDerivAt.Variant94849662107a20b7af97c0808ba8ed606bd57494c55345a1145e03c2ad14562a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94849662107a20b7af97c0808ba8ed606bd57494c55345a1145e03c2ad14562a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ExponentialHasDerivAt.Variant94849662107a20b7af97c0808ba8ed606bd57494c55345a1145e03c2ad14562a","mathematical_subject":"Analysis.Calculus","original_sha256":"94849662107a20b7af97c0808ba8ed606bd57494c55345a1145e03c2ad14562a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-laplace-mellin/attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiMellinSeven
import RootActualXiComplexLaplaceBudget

/-!
The actual anchored F7 Laplace transform is transported by finite absolutely
continuous Abel integration and genuine improper limits. The original closed
prime-power seams, lower seven and gamma correction remain in the source.
No critical-domain continuation or arithmetic average witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ExponentialHasDerivAt.Variant94849662107a20b7af97c0808ba8ed606bd57494c55345a1145e03c2ad14562a

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
  convert (((hasDerivAt_id t).ofReal_comp.const_mul (-z)).cexp) using 1 <;> first
  | rfl
  | ring

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
  have hreal := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hr
  have himag := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hm
  have hqr (t : ℝ) : HasDerivAt (fun t => (q t).re) (-z * q t).re t := by
    simpa only [Function.comp_apply, Complex.reCLM_apply] using
      Complex.reCLM.hasFDerivAt.comp_hasDerivAt (exponential_hasDerivAt z t)
  have hqm (t : ℝ) : HasDerivAt (fun t => (q t).im) (-z * q t).im t := by
    simpa only [Function.comp_apply, Complex.imCLM_apply] using
      Complex.imCLM.hasFDerivAt.comp_hasDerivAt (exponential_hasDerivAt z t)
  apply Complex.ext
  · rw [← intervalIntegral.intervalIntegral_re his]
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
  · rw [← intervalIntegral.intervalIntegral_im his]
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
```
