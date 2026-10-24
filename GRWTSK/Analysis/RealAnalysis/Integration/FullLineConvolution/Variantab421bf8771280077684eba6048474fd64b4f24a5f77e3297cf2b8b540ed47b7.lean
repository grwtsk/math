-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc","mathematical_subject":"Analysis.Integration","original_sha256":"41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/FullLineConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap


namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc

set_option autoImplicit false
namespace FullLineConvolutionScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission
noncomputable section
abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def fullShift (a : ℝ) : FullH →ₗᵢ[ℂ] FullH :=
  Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a)

theorem fullShift_ae (a : ℝ) (f : FullH) :
    fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume a)

theorem fullShift_continuous (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := by
  let g : ℝ → C(ℝ, ℝ) := fun a => ⟨fun x => x - a, continuous_id.sub continuous_const⟩
  have hg : Continuous g := ContinuousMap.continuous_of_continuous_uncurry g (by
    change Continuous (fun p : ℝ × ℝ => p.2 - p.1)
    fun_prop)
  exact continuous_const.compMeasurePreservingLp hg
    (fun a => measurePreserving_sub_right volume a) (by norm_num)

theorem weighted_shift_integrable (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    Integrable (fun a : ℝ => (g a : ℂ) • fullShift a f) := by
  refine (hg.norm.mul_const ‖f‖).mono' ?_ ?_
  · have hgc : Integrable (fun a : ℝ => (g a : ℂ)) := hg.ofReal
    exact hgc.aestronglyMeasurable.smul (fullShift_continuous f).aestronglyMeasurable
  · filter_upwards [] with a
    simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map]
    exact le_rfl

def vector (g : ℝ → ℝ) (f : FullH) : FullH := ∫ a : ℝ, (g a : ℂ) • fullShift a f

theorem vector_norm_le (g : ℝ → ℝ) (f : FullH) :
    ‖vector g f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(g a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

theorem vector_add (g : ℝ → ℝ) (hg : Integrable g) (f h : FullH) :
    vector g (f + h) = vector g f + vector g h := by
  simp only [vector, map_add, smul_add]
  exact integral_add (weighted_shift_integrable g hg f) (weighted_shift_integrable g hg h)

theorem vector_smul (g : ℝ → ℝ) (c : ℂ) (f : FullH) :
    vector g (c • f) = c • vector g f := by
  simp only [vector, map_smul, smul_comm (g _ : ℂ) c, integral_smul]

def linearMap (g : ℝ → ℝ) (hg : Integrable g) : FullH →ₗ[ℂ] FullH where
  toFun := vector g
  map_add' := vector_add g hg
  map_smul' := vector_smul g

def fullConvolution (g : ℝ → ℝ) (hg : Integrable g) : FullH →L[ℂ] FullH :=
  (linearMap g hg).mkContinuous (∫ a : ℝ, ‖g a‖) (vector_norm_le g)

theorem fullConvolution_apply (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    fullConvolution g hg f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl

theorem fullConvolution_norm_le (g : ℝ → ℝ) (hg : Integrable g) :
    ‖fullConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ :=
  LinearMap.mkContinuous_norm_le _ (integral_nonneg (fun a => norm_nonneg (g a))) _

theorem fullConvolution_sub_kernel (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    fullConvolution (g - h) (hg.sub hh) = fullConvolution g hg - fullConvolution h hh := by
  apply ContinuousLinearMap.ext
  intro f
  change vector (g - h) f = vector g f - vector h f
  simp only [vector, Pi.sub_apply, Complex.ofReal_sub, sub_smul]
  exact integral_sub (weighted_shift_integrable g hg f) (weighted_shift_integrable h hh f)

theorem fullConvolution_norm_sub_le (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖fullConvolution g hg - fullConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ := by
  rw [← fullConvolution_sub_kernel g h hg hh]
  exact fullConvolution_norm_le (g - h) (hg.sub hh)

def actualFull : FullH →L[ℂ] FullH := fullConvolution fixedKernel fixedKernel_integrable

theorem actualFull_apply (f : FullH) :
    actualFull f = ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f := rfl

theorem actualFull_norm_le : ‖actualFull‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ :=
  fullConvolution_norm_le fixedKernel fixedKernel_integrable

end
end FullLineConvolutionScratch
