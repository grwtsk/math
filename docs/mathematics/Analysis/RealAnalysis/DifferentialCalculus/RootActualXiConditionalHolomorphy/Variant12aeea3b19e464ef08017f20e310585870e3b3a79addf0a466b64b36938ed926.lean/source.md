# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualXiConditionalHolomorphy.Variant12aeea3b19e464ef08017f20e310585870e3b3a79addf0a466b64b36938ed926

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ba1b3e80dccc153fd1e4e090aa44ed232697599` · SHA-256 `a84f9053b768c90ea5c7b87b6898fb524f26951db088688fc057f34949cab571`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TimeExpBound.Variantea7e052de35bd87a7ab04e332517fe566fd4490e52da77a90e433fcdded89ef4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea7e052de35bd87a7ab04e332517fe566fd4490e52da77a90e433fcdded89ef4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.TimeExpBound.Variantea7e052de35bd87a7ab04e332517fe566fd4490e52da77a90e433fcdded89ef4","mathematical_subject":"Analysis.Calculus","original_sha256":"ea7e052de35bd87a7ab04e332517fe566fd4490e52da77a90e433fcdded89ef4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T005604Z-1791334564242322000/RootActualXiConditionalHolomorphy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualXiConditionalComplexLaplace
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
The same actual anchored F7 transform has a genuine dominated derivative and
holomorphy on the positive real-part domain under the exact future whole-prefix
average hypothesis. The arithmetic mean witness remains an explicit premise.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.TimeExpBound.Variantea7e052de35bd87a7ab04e332517fe566fd4490e52da77a90e433fcdded89ef4

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualXiConditionalHolomorphy
open MeasureTheory Set Complex Filter
open scoped Topology
open RootActualXiTailPrimitive RootActualXiComplexLaplaceBudget
open RootActualXiConditionalComplexLaplace SourceActualXiConditionalLaplace
noncomputable section

private theorem time_exp_bound {c t : ℝ} (hc : 0 < c) (ht : 0 ≤ t) :
    t ≤ (1 / c) * Real.exp (c * t) := by
  have he := Real.add_one_le_exp (c * t)
  apply (mul_le_mul_right hc).mp
  calc
    t * c ≤ Real.exp (c * t) := by nlinarith
    _ = ((1 / c) * Real.exp (c * t)) * c := by field_simp; ring

private theorem derivative_norm_bound {c r t : ℝ} (hc : 0 < c)
    (hr : 2 * c ≤ r) (ht : 0 ≤ t) :
    t * |actualAnchoredXiTailPrimitive t| * Real.exp (-r * t) ≤
      (1 / c) * ‖actualAnchoredXiTailPrimitive t * Real.exp (-c * t)‖ := by
  have he : Real.exp (-r * t) ≤ Real.exp (-(2 * c) * t) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  calc
    _ ≤ t * |actualAnchoredXiTailPrimitive t| * Real.exp (-(2 * c) * t) :=
      mul_le_mul_of_nonneg_left he (mul_nonneg ht (abs_nonneg _))
    _ ≤ ((1 / c) * Real.exp (c * t)) * |actualAnchoredXiTailPrimitive t| *
        Real.exp (-(2 * c) * t) := by
      gcongr
      exact time_exp_bound hc ht
    _ = _ := by
      rw [norm_mul]
      simp only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
      rw [show ((1 / c) * Real.exp (c * t)) * |actualAnchoredXiTailPrimitive t| *
        Real.exp (-(2 * c) * t) = (1 / c) * |actualAnchoredXiTailPrimitive t| *
          (Real.exp (c * t) * Real.exp (-(2 * c) * t)) by ring, ← Real.exp_add]
      congr 2
      ring

private theorem kernel_hasDerivAt (t : ℝ) (z : ℂ) :
    HasDerivAt (fun z : ℂ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ)))
      (-(t : ℂ) * (actualAnchoredXiTailPrimitive t : ℂ) *
        Complex.exp (-z * (t : ℂ))) z := by
  simpa only [neg_mul, one_mul, mul_assoc, mul_left_comm, mul_comm] using
    (((hasDerivAt_id z).neg.mul_const (t : ℂ)).cexp.const_mul
      (actualAnchoredXiTailPrimitive t : ℂ))

/-- Genuine positive-domain derivative source L1 and differentiation keep the actual mean premise. -/
theorem actualXiComplexLaplace_hasDerivAt_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => -(t : ℂ) * (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) ∧
      HasDerivAt actualXiComplexLaplace
        (∫ t in Ioi (Real.log 7), -(t : ℂ) * (actualAnchoredXiTailPrimitive t : ℂ) *
          Complex.exp (-z * (t : ℂ))) z := by
  let μ := volume.restrict (Ioi (Real.log 7))
  let F : ℂ → ℝ → ℂ := fun w t => (actualAnchoredXiTailPrimitive t : ℂ) *
    Complex.exp (-w * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t => -(t : ℂ) * F w t
  let c : ℝ := z.re / 4
  have hc : 0 < c := by dsimp [c]; positivity
  have hradius : 0 < z.re / 2 := by positivity
  have hre {w : ℂ} (hw : w ∈ Metric.ball z (z.re / 2)) : 2 * c ≤ w.re := by
    rw [Metric.mem_ball, dist_eq_norm] at hw
    have he := Complex.abs_re_le_norm (w - z)
    rw [sub_re] at he
    dsimp [c]
    have hh := (abs_le.mp (he.trans hw.le)).1
    linarith
  have hi : Integrable (F z) μ :=
    actualXiComplexLaplace_integrableOn_of_future_average hM hT₀ haverage hz
  have hmeas : ∀ᶠ w in 𝓝 z, AEStronglyMeasurable (F w) μ := by
    filter_upwards [Metric.ball_mem_nhds z hradius] with w hw
    exact (actualXiComplexLaplace_integrableOn_of_future_average hM hT₀ haverage
      (hc.trans_le (by have := hre hw; linarith))).aestronglyMeasurable
  have hprime : AEStronglyMeasurable (F' z) μ :=
    Complex.continuous_ofReal.neg.aestronglyMeasurable.mul hi.aestronglyMeasurable
  have hib : Integrable (fun t => (1 / c) *
      ‖actualAnchoredXiTailPrimitive t * Real.exp (-c * t)‖) μ :=
    (actualXiLaplace_integrableOn_of_future_average hM hT₀ hc haverage).norm.const_mul _
  have hb : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      ‖F' w t‖ ≤ (1 / c) * ‖actualAnchoredXiTailPrimitive t * Real.exp (-c * t)‖ := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht w hw
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.le
    dsimp [F', F]
    rw [norm_mul, norm_mul, Complex.norm_real, Complex.norm_real, Complex.norm_exp]
    simp only [Real.norm_eq_abs, abs_neg, abs_of_nonneg ht0, mul_re, neg_re,
      ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
    exact derivative_norm_bound hc (hre hw) ht0
  have hd : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      HasDerivAt (fun w => F w t) (F' w t) w := by
    filter_upwards [] with t w _
    simpa only [F, F', mul_assoc] using kernel_hasDerivAt t w
  have hh := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds z hradius) hmeas hi hprime hb hib hd
  simpa only [F, F', μ, actualXiComplexLaplace, mul_assoc] using hh

/-- The same literal transform is holomorphic on positive real parts under the genuine future mean. -/
theorem actualXiComplexLaplace_analyticOnNhd_of_future_average {M T₀ : ℝ}
    (hM : 0 ≤ M) (hT₀ : Real.log 7 ≤ T₀)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T) :
    AnalyticOnNhd ℂ actualXiComplexLaplace {z : ℂ | 0 < z.re} := by
  have hd : DifferentiableOn ℂ actualXiComplexLaplace {z : ℂ | 0 < z.re} := by
    intro z hz
    exact (actualXiComplexLaplace_hasDerivAt_of_future_average hM hT₀ haverage hz).2
      .differentiableAt.differentiableWithinAt
  exact hd.analyticOnNhd (isOpen_lt continuous_const Complex.continuous_re)

end
end FormalResearch.RiemannHypothesis.RootActualXiConditionalHolomorphy
```
