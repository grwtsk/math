# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceConvolutionAE.Variant9d93bb29809a25f1e20f74444e02f57115a02a890036c5611ba4b48a0fbb461e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a454a3d6527e5664d5d15346ddfbe4479215ed80` · SHA-256 `b968f0e73222dd79e2a18e7b933d8ca2da462416cd4a45c25aac51f94fd715d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SmulIntegrableOfMemLpTwo.Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SmulIntegrableOfMemLpTwo.Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc","mathematical_subject":"Analysis.Integration","original_sha256":"af9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/SourceConvolutionAE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
import Mathlib.MeasureTheory.Function.AEEqOfIntegral
import Mathlib.MeasureTheory.Integral.Prod


namespace GRWTSK.Analysis.RealAnalysis.Integration.SmulIntegrableOfMemLpTwo.Variantaf9645a3e218af6b789c7b8fa115446d826d2a5be521f9e620ff47ad812d80cc

set_option autoImplicit false
namespace SourceConvolutionAEScratch
open MeasureTheory Set
open scoped ENNReal
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open FullLineConvolutionScratch HalfLineOperatorScratch
open HalfLineExtensionScratch hiding FullH
noncomputable section

theorem smul_integrable_of_memLp_two (u : ℝ → ℝ) (v : ℝ → ℂ)
    (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    Integrable (fun a => u a • v a) := by
  exact memLp_one_iff_integrable.mp (hv.smul hu)

theorem integral_norm_smul_le (u : ℝ → ℝ) (v : ℝ → ℂ)
    (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    (∫ a, ‖u a • v a‖) ≤ (eLpNorm u 2 volume).toReal * (eLpNorm v 2 volume).toReal := by
  have hmem : MemLp (u • v) 1 volume := hv.smul hu
  have hle : eLpNorm (u • v) 1 volume ≤ eLpNorm u 2 volume * eLpNorm v 2 volume :=
    eLpNorm_smul_le_mul_eLpNorm hv.aestronglyMeasurable hu.aestronglyMeasurable
  have ht := ENNReal.toReal_mono (ENNReal.mul_ne_top hu.2.ne hv.2.ne) hle
  rw [ENNReal.toReal_mul] at ht
  calc
    _ = ‖hmem.toLp (u • v)‖ := by
      rw [L1.norm_eq_integral_norm]
      exact integral_congr_ae (hmem.coeFn_toLp.fun_comp norm).symm
    _ = _ := Lp.norm_toLp _ hmem
    _ ≤ _ := ht

def convolutionFunction (f : FullH) (t : ℝ) : ℂ :=
  ∫ a : ℝ, fixedKernel a • f (t - a)

theorem convolution_integrand_integrable (f : FullH) (t : ℝ) :
    Integrable (fun a : ℝ => fixedKernel a • f (t - a)) := by
  exact smul_integrable_of_memLp_two fixedKernel _ fixedKernel_memLp_two
    ((Lp.memLp f).comp_measurePreserving (volume.measurePreserving_sub_left t))

theorem convolution_norm_integral_bound (f : FullH) (t : ℝ) :
    (∫ a : ℝ, ‖fixedKernel a • f (t - a)‖) ≤
      (eLpNorm fixedKernel 2 volume).toReal * ‖f‖ := by
  have h := integral_norm_smul_le fixedKernel _ fixedKernel_memLp_two
    ((Lp.memLp f).comp_measurePreserving (volume.measurePreserving_sub_left t))
  simpa only [eLpNorm_comp_measurePreserving (Lp.aestronglyMeasurable f)
    (volume.measurePreserving_sub_left t), Lp.norm_def, Function.comp_apply] using h


theorem convolution_integrand_stronglyMeasurable (f : FullH) :
    StronglyMeasurable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2 - p.1)) :=
  (fixedKernel_measurable.stronglyMeasurable.comp_measurable measurable_fst).smul
    ((Lp.stronglyMeasurable f).comp_measurable (measurable_snd.sub measurable_fst))

theorem convolution_product_integrable (f : FullH) (B : Set ℝ)
    (hB : volume B < ∞) :
    Integrable (fun p : ℝ × ℝ => fixedKernel p.1 • f (p.2 - p.1))
      (volume.prod (volume.restrict B)) := by
  refine (integrable_prod_iff' (convolution_integrand_stronglyMeasurable f).aestronglyMeasurable).mpr
    ⟨Filter.Eventually.of_forall (convolution_integrand_integrable f), ?_⟩
  have hconst : IntegrableOn
      (fun _ : ℝ => (eLpNorm fixedKernel 2 volume).toReal * ‖f‖) B :=
    integrableOn_const hB.ne
  refine hconst.mono' ?_ ?_
  · exact (convolution_integrand_stronglyMeasurable f).norm.integral_prod_left'.aestronglyMeasurable
  · filter_upwards [] with t
    rw [Real.norm_of_nonneg (integral_nonneg (fun a => norm_nonneg _))]
    exact convolution_norm_integral_bound f t

theorem convolutionFunction_integrableOn (f : FullH) (B : Set ℝ)
    (hB : volume B < ∞) : IntegrableOn (convolutionFunction f) B :=
  (convolution_product_integrable f B hB).integral_prod_right

theorem vector_setIntegral (f : FullH) (B : Set ℝ)
    (hB : MeasurableSet B) (hBfin : volume B < ∞) :
    (∫ t in B, actualFull f t) =
      ∫ a : ℝ, ∫ t in B, fixedKernel a • f (t - a) := by
  rw [← L2.inner_indicatorConstLp_one hB hBfin.ne, actualFull_apply,
    ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable f)]
  apply integral_congr_ae
  filter_upwards [] with a
  rw [L2.inner_indicatorConstLp_one hB hBfin.ne]
  apply integral_congr_ae
  filter_upwards [ae_restrict_of_ae (Lp.coeFn_smul (fixedKernel a : ℂ) (fullShift a f)),
    ae_restrict_of_ae (fullShift_ae a f)] with t hmul hshift
  rw [hmul, Pi.smul_apply, hshift]
  rfl

theorem actualFull_ae_convolution (f : FullH) :
    actualFull f =ᵐ[volume] convolutionFunction f := by
  apply ae_eq_of_forall_setIntegral_eq_of_sigmaFinite
  · intro B _ hB
    exact integrableOn_Lp_of_measure_ne_top (actualFull f) (by norm_num) hB.ne
  · intro B _ hB
    exact convolutionFunction_integrableOn f B hB
  · intro B hB hBfin
    rw [vector_setIntegral f B hB hBfin]
    exact integral_integral_swap (convolution_product_integrable f B hBfin)


theorem convolutionFunction_commuted (f : FullH) (t : ℝ) :
    convolutionFunction f t = ∫ a : ℝ, fixedKernel (t - a) • f a := by
  have h := integral_sub_left_eq_self
    (fun a : ℝ => fixedKernel a • f (t - a)) volume t
  simpa only [sub_sub_cancel, convolutionFunction] using h.symm

theorem causal_integrand_identity (f : H) (t a : ℝ) :
    fixedKernel (t - a) • (Ioi (0 : ℝ)).indicator f a =
      (Ioc 0 t).indicator (fun s => fixedKernel (t - s) • f s) a := by
  by_cases ha : 0 < a
  · rw [indicator_of_mem (show a ∈ Ioi (0 : ℝ) from ha)]
    by_cases hat : a ≤ t
    · rw [indicator_of_mem (show a ∈ Ioc 0 t from ⟨ha, hat⟩)]
    · rw [indicator_of_notMem (show a ∉ Ioc 0 t from fun h => hat h.2)]
      rw [fixedKernel_zero_of_nonpos (t - a) (by linarith), zero_smul]
  · rw [indicator_of_notMem (show a ∉ Ioi (0 : ℝ) from ha),
      indicator_of_notMem (show a ∉ Ioc 0 t from fun h => ha h.1), smul_zero]

theorem convolutionFunction_zeroExtension_eq_setIntegral (f : H) (t : ℝ) :
    convolutionFunction (zeroExtension f) t =
      ∫ a in Ioc 0 t, fixedKernel (t - a) • f a := by
  rw [convolutionFunction_commuted, ← integral_indicator measurableSet_Ioc]
  apply integral_congr_ae
  filter_upwards [zeroExtension_ae f] with a ha
  rw [ha, causal_integrand_identity]


theorem causal_setIntegral_integrable (f : H) (t : ℝ) :
    IntegrableOn (fun a : ℝ => fixedKernel (t - a) • f a) (Ioc 0 t) := by
  have hraw : Integrable (fun a : ℝ => fixedKernel (t - a) • zeroExtension f a) := by
    have h := (convolution_integrand_integrable (zeroExtension f) t).comp_sub_left t
    simpa only [sub_sub_cancel] using h
  apply (integrable_indicator_iff measurableSet_Ioc).mp
  refine hraw.congr ?_
  filter_upwards [zeroExtension_ae f] with a ha
  rw [ha, causal_integrand_identity]

theorem causal_intervalIntegrable (f : H) (t : ℝ) (ht : 0 ≤ t) :
    IntervalIntegrable (fun a : ℝ => (fixedKernel (t - a) : ℂ) * f a) volume 0 t := by
  apply (intervalIntegrable_iff_integrableOn_Ioc_of_le ht).mpr
  exact causal_setIntegral_integrable f t

theorem convolutionFunction_zeroExtension_nonpositive (f : H) (t : ℝ) (ht : t ≤ 0) :
    convolutionFunction (zeroExtension f) t = 0 := by
  rw [convolutionFunction_zeroExtension_eq_setIntegral, Ioc_eq_empty_of_le ht,
    Measure.restrict_empty, integral_zero_measure]

theorem sourceOperator_ae_causal_setIntegral (f : H) :
    sourceOperator f =ᵐ[halfLineMeasure]
      (fun t => ∫ a in Ioc 0 t, fixedKernel (t - a) • f a) := by
  have h1 := restriction_ae (actualFull (zeroExtension f))
  have h2 : actualFull (zeroExtension f) =ᵐ[halfLineMeasure]
      convolutionFunction (zeroExtension f) :=
    ae_restrict_of_ae (actualFull_ae_convolution (zeroExtension f))
  refine Filter.EventuallyEq.trans h1 (h2.trans ?_)
  exact Filter.Eventually.of_forall (convolutionFunction_zeroExtension_eq_setIntegral f)


theorem sourceOperator_ae_causal_integral (f : H) :
    sourceOperator f =ᵐ[halfLineMeasure]
      (fun t => ∫ a in (0 : ℝ)..t, (fixedKernel (t - a) : ℂ) * f a) := by
  filter_upwards [sourceOperator_ae_causal_setIntegral f,
    (show ∀ᵐ t ∂halfLineMeasure, t ∈ Ioi (0 : ℝ) from ae_restrict_mem measurableSet_Ioi)]
      with t ht hpos
  rw [ht, intervalIntegral.integral_of_le (le_of_lt hpos)]
  rfl

theorem full_sourceOperator_causal (f : H) :
    actualFull (zeroExtension f) =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (actualFull_ae_convolution (zeroExtension f)),
    ae_restrict_mem measurableSet_Iic] with t ht hnonpos
  rw [ht, convolutionFunction_zeroExtension_nonpositive f t hnonpos]


theorem zeroExtension_sourceOperator (f : H) :
    zeroExtension (sourceOperator f) = actualFull (zeroExtension f) := by
  have hR : sourceOperator f =ᵐ[volume.restrict (Ioi (0 : ℝ))]
      actualFull (zeroExtension f) := restriction_ae (actualFull (zeroExtension f))
  have hI := (ae_eq_restrict_iff_indicator_ae_eq measurableSet_Ioi).mp hR
  have hzero : actualFull (zeroExtension f) =ᵐ[volume.restrict (Ioi (0 : ℝ))ᶜ] 0 := by
    simpa only [compl_Ioi, Pi.zero_def] using full_sourceOperator_causal f
  apply Lp.ext
  exact Filter.EventuallyEq.trans (zeroExtension_ae (sourceOperator f))
    (hI.trans (indicator_ae_eq_of_restrict_compl_ae_eq_zero measurableSet_Ioi hzero))

end
end SourceConvolutionAEScratch
```
