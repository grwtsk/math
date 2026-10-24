# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceConvolutionAEAudit.Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fc6a7f6d151be2063ef640de560e9f954ccc242` · SHA-256 `a58fd4cdb1f45980774e22667d823e5be559de7d8f18ff9b9e24e28637fe2e7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df","mathematical_subject":"Analysis.Integration","original_sha256":"987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/SourceConvolutionAEAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Function.AEEqOfIntegral
import Mathlib.MeasureTheory.Integral.Prod
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.InnerProductSpace.Positive



namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant987b92f6efb4d7ec7692102e35b076ddca0d749c68b0920522d041008115c6df

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


/-!
The genuine zero-extension isometry and restriction contraction between the actual
half-line Hilbert space and full-line L2. No convolution or adjoint is assumed.
-/

set_option autoImplicit false
namespace HalfLineExtensionScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
noncomputable section

abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def zeroExtensionFunction (f : H) : ℝ → ℂ := (Ioi (0 : ℝ)).indicator f

theorem zeroExtensionFunction_memLp (f : H) :
    MemLp (zeroExtensionFunction f) 2 volume := by
  exact (memLp_indicator_iff_restrict measurableSet_Ioi).mpr (Lp.memLp f)

def zeroExtensionVector (f : H) : FullH :=
  (zeroExtensionFunction_memLp f).toLp (zeroExtensionFunction f)

theorem zeroExtensionVector_ae (f : H) :
    zeroExtensionVector f =ᵐ[volume] zeroExtensionFunction f :=
  (zeroExtensionFunction_memLp f).coeFn_toLp

theorem zeroExtensionVector_norm (f : H) : ‖zeroExtensionVector f‖ = ‖f‖ := by
  rw [zeroExtensionVector, Lp.norm_toLp, zeroExtensionFunction,
    eLpNorm_indicator_eq_eLpNorm_restrict measurableSet_Ioi]
  rfl

theorem zeroExtensionVector_add (f g : H) :
    zeroExtensionVector (f + g) = zeroExtensionVector f + zeroExtensionVector g := by
  apply Lp.ext
  have hfg := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_add f g)
  filter_upwards [zeroExtensionVector_ae (f + g),
    Lp.coeFn_add (zeroExtensionVector f) (zeroExtensionVector g),
    zeroExtensionVector_ae f, zeroExtensionVector_ae g, hfg] with x hsum hout hf hg hfgx
  rw [hsum, hout, Pi.add_apply, hf, hg]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.add_apply] using hfgx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, add_zero]

theorem zeroExtensionVector_smul (c : ℂ) (f : H) :
    zeroExtensionVector (c • f) = c • zeroExtensionVector f := by
  apply Lp.ext
  have hcf := (ae_restrict_iff' measurableSet_Ioi).mp (Lp.coeFn_smul c f)
  filter_upwards [zeroExtensionVector_ae (c • f),
    Lp.coeFn_smul c (zeroExtensionVector f), zeroExtensionVector_ae f, hcf]
      with x hsum hout hf hcfx
  rw [hsum, hout, Pi.smul_apply, hf]
  by_cases hx : x ∈ Ioi (0 : ℝ)
  · simpa only [zeroExtensionFunction, indicator_of_mem hx, Pi.smul_apply] using hcfx hx
  · simp only [zeroExtensionFunction, indicator_of_notMem hx, smul_zero]

/-- Zero extension is a complex-linear isometry of the actual AE quotient spaces. -/
def zeroExtension : H →ₗᵢ[ℂ] FullH where
  toFun := zeroExtensionVector
  map_add' := zeroExtensionVector_add
  map_smul' := zeroExtensionVector_smul
  norm_map' := zeroExtensionVector_norm

theorem zeroExtension_ae (f : H) :
    zeroExtension f =ᵐ[volume] (Ioi (0 : ℝ)).indicator f :=
  zeroExtensionVector_ae f

theorem zeroExtension_norm (f : H) : ‖zeroExtension f‖ = ‖f‖ :=
  zeroExtension.norm_map f

theorem zeroExtension_ae_halfLine (f : H) :
    zeroExtension f =ᵐ[halfLineMeasure] f := by
  change zeroExtension f =ᵐ[volume.restrict (Ioi (0 : ℝ))] f
  exact Filter.EventuallyEq.trans (ae_restrict_of_ae (zeroExtension_ae f))
    (indicator_ae_eq_restrict measurableSet_Ioi)

theorem zeroExtension_ae_nonpositive (f : H) :
    zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (zeroExtension_ae f), ae_restrict_mem measurableSet_Iic]
    with x hx hnonpos
  rw [hx, indicator_of_notMem]
  change ¬0 < x
  exact not_lt.mpr (show x ≤ 0 from hnonpos)

/-- Restriction is Mathlib's genuine Lp restriction continuous linear map. -/
def restriction : FullH →L[ℂ] H := LpToLpRestrictCLM ℝ ℂ ℂ volume 2 (Ioi 0)

theorem restriction_ae (f : FullH) : restriction f =ᵐ[halfLineMeasure] f :=
  LpToLpRestrictCLM_coeFn ℂ (Ioi 0) f

theorem restriction_norm_le (f : FullH) : ‖restriction f‖ ≤ ‖f‖ :=
  norm_Lp_toLp_restrict_le (Ioi 0) f

theorem restriction_opNorm_le : ‖restriction‖ ≤ 1 := by
  refine ContinuousLinearMap.opNorm_le_bound restriction (by norm_num) ?_
  intro f
  simpa only [one_mul] using restriction_norm_le f

theorem restriction_zeroExtension (f : H) : restriction (zeroExtension f) = f := by
  exact Lp.ext ((restriction_ae (zeroExtension f)).trans (zeroExtension_ae_halfLine f))

theorem restriction_comp_zeroExtension :
    restriction.comp zeroExtension.toContinuousLinearMap = ContinuousLinearMap.id ℂ H := by
  apply ContinuousLinearMap.ext
  intro f
  exact restriction_zeroExtension f

end
end HalfLineExtensionScratch

set_option autoImplicit false
namespace HalfLineOperatorScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FullLineConvolutionScratch HalfLineExtensionScratch
noncomputable section

def halfConvolution (g : ℝ → ℝ) (hg : Integrable g) : H →L[ℂ] H :=
  restriction.comp ((fullConvolution g hg).comp zeroExtension.toContinuousLinearMap)

theorem halfConvolution_apply (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    halfConvolution g hg f = restriction
      (∫ a : ℝ, (g a : ℂ) • fullShift a (zeroExtension f)) := rfl

theorem halfConvolution_apply_norm_le (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    ‖halfConvolution g hg f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := by
  calc
    _ ≤ ‖fullConvolution g hg (zeroExtension f)‖ := restriction_norm_le _
    _ ≤ (∫ a : ℝ, ‖g a‖) * ‖zeroExtension f‖ := vector_norm_le g _
    _ = _ := by rw [zeroExtension_norm]

theorem halfConvolution_norm_le (g : ℝ → ℝ) (hg : Integrable g) :
    ‖halfConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ :=
  ContinuousLinearMap.opNorm_le_bound _ (integral_nonneg (fun a => norm_nonneg (g a)))
    (halfConvolution_apply_norm_le g hg)

theorem halfConvolution_sub_kernel (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    halfConvolution (g - h) (hg.sub hh) = halfConvolution g hg - halfConvolution h hh := by
  apply ContinuousLinearMap.ext
  intro f
  change restriction (fullConvolution (g - h) (hg.sub hh) (zeroExtension f)) =
    restriction (fullConvolution g hg (zeroExtension f)) -
      restriction (fullConvolution h hh (zeroExtension f))
  rw [fullConvolution_sub_kernel, sub_apply, map_sub]

theorem halfConvolution_norm_sub_le (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖halfConvolution g hg - halfConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ := by
  rw [← halfConvolution_sub_kernel g h hg hh]
  exact halfConvolution_norm_le (g - h) (hg.sub hh)

def sourceOperator : H →L[ℂ] H := halfConvolution fixedKernel fixedKernel_integrable

theorem sourceOperator_apply (f : H) :
    sourceOperator f = restriction
      (∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a (zeroExtension f)) := rfl

theorem sourceOperator_apply_norm_le (f : H) :
    ‖sourceOperator f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ :=
  halfConvolution_apply_norm_le fixedKernel fixedKernel_integrable f

theorem sourceOperator_norm_le : ‖sourceOperator‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ :=
  halfConvolution_norm_le fixedKernel fixedKernel_integrable

/-- The prescribed operator order is T composed with its Hilbert adjoint. -/
def sourceEnergy : H →L[ℂ] H := sourceOperator.comp sourceOperator.adjoint

theorem sourceEnergy_apply (f : H) :
    sourceEnergy f = sourceOperator (sourceOperator.adjoint f) := rfl

theorem sourceEnergy_isPositive : sourceEnergy.IsPositive :=
  ContinuousLinearMap.isPositive_self_comp_adjoint sourceOperator

theorem sourceEnergy_isSelfAdjoint : IsSelfAdjoint sourceEnergy :=
  sourceEnergy_isPositive.isSelfAdjoint

theorem sourceEnergy_inner (f : H) :
    inner ℂ f (sourceEnergy f) = inner ℂ (sourceOperator.adjoint f) (sourceOperator.adjoint f) := by
  change inner ℂ f (sourceOperator (sourceOperator.adjoint f)) = _
  rw [← ContinuousLinearMap.adjoint_inner_left]

theorem sourceEnergy_re_inner (f : H) :
    (inner ℂ f (sourceEnergy f)).re = ‖sourceOperator.adjoint f‖ ^ 2 := by
  rw [sourceEnergy_inner]
  exact (norm_sq_eq_re_inner (𝕜 := ℂ) (sourceOperator.adjoint f)).symm

theorem sourceEnergy_kernel : sourceEnergy.ker = sourceOperator.adjoint.ker :=
  ContinuousLinearMap.ker_self_comp_adjoint sourceOperator

theorem sourceEnergy_norm : ‖sourceEnergy‖ = ‖sourceOperator‖ ^ 2 := by
  have h := ContinuousLinearMap.norm_adjoint_comp_self sourceOperator.adjoint
  simpa only [sourceEnergy, ContinuousLinearMap.adjoint_adjoint, LinearIsometryEquiv.norm_map,
    ← sq] using h

end
end HalfLineOperatorScratch


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

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @SourceConvolutionAEScratch.smul_integrable_of_memLp_two
#print SourceConvolutionAEScratch.smul_integrable_of_memLp_two
#print axioms SourceConvolutionAEScratch.smul_integrable_of_memLp_two

#check @SourceConvolutionAEScratch.integral_norm_smul_le
#print SourceConvolutionAEScratch.integral_norm_smul_le
#print axioms SourceConvolutionAEScratch.integral_norm_smul_le

#check @SourceConvolutionAEScratch.convolutionFunction
#print SourceConvolutionAEScratch.convolutionFunction
#print axioms SourceConvolutionAEScratch.convolutionFunction

#check @SourceConvolutionAEScratch.convolution_integrand_integrable
#print SourceConvolutionAEScratch.convolution_integrand_integrable
#print axioms SourceConvolutionAEScratch.convolution_integrand_integrable

#check @SourceConvolutionAEScratch.convolution_norm_integral_bound
#print SourceConvolutionAEScratch.convolution_norm_integral_bound
#print axioms SourceConvolutionAEScratch.convolution_norm_integral_bound

#check @SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable
#print SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable
#print axioms SourceConvolutionAEScratch.convolution_integrand_stronglyMeasurable

#check @SourceConvolutionAEScratch.convolution_product_integrable
#print SourceConvolutionAEScratch.convolution_product_integrable
#print axioms SourceConvolutionAEScratch.convolution_product_integrable

#check @SourceConvolutionAEScratch.convolutionFunction_integrableOn
#print SourceConvolutionAEScratch.convolutionFunction_integrableOn
#print axioms SourceConvolutionAEScratch.convolutionFunction_integrableOn

#check @SourceConvolutionAEScratch.vector_setIntegral
#print SourceConvolutionAEScratch.vector_setIntegral
#print axioms SourceConvolutionAEScratch.vector_setIntegral

#check @SourceConvolutionAEScratch.actualFull_ae_convolution
#print SourceConvolutionAEScratch.actualFull_ae_convolution
#print axioms SourceConvolutionAEScratch.actualFull_ae_convolution

#check @SourceConvolutionAEScratch.convolutionFunction_commuted
#print SourceConvolutionAEScratch.convolutionFunction_commuted
#print axioms SourceConvolutionAEScratch.convolutionFunction_commuted

#check @SourceConvolutionAEScratch.causal_integrand_identity
#print SourceConvolutionAEScratch.causal_integrand_identity
#print axioms SourceConvolutionAEScratch.causal_integrand_identity

#check @SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral
#print SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral
#print axioms SourceConvolutionAEScratch.convolutionFunction_zeroExtension_eq_setIntegral

#check @SourceConvolutionAEScratch.causal_setIntegral_integrable
#print SourceConvolutionAEScratch.causal_setIntegral_integrable
#print axioms SourceConvolutionAEScratch.causal_setIntegral_integrable

#check @SourceConvolutionAEScratch.causal_intervalIntegrable
#print SourceConvolutionAEScratch.causal_intervalIntegrable
#print axioms SourceConvolutionAEScratch.causal_intervalIntegrable

#check @SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive
#print SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive
#print axioms SourceConvolutionAEScratch.convolutionFunction_zeroExtension_nonpositive

#check @SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral
#print SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral
#print axioms SourceConvolutionAEScratch.sourceOperator_ae_causal_setIntegral

#check @SourceConvolutionAEScratch.sourceOperator_ae_causal_integral
#print SourceConvolutionAEScratch.sourceOperator_ae_causal_integral
#print axioms SourceConvolutionAEScratch.sourceOperator_ae_causal_integral

#check @SourceConvolutionAEScratch.full_sourceOperator_causal
#print SourceConvolutionAEScratch.full_sourceOperator_causal
#print axioms SourceConvolutionAEScratch.full_sourceOperator_causal

#check @SourceConvolutionAEScratch.zeroExtension_sourceOperator
#print SourceConvolutionAEScratch.zeroExtension_sourceOperator
#print axioms SourceConvolutionAEScratch.zeroExtension_sourceOperator
```
