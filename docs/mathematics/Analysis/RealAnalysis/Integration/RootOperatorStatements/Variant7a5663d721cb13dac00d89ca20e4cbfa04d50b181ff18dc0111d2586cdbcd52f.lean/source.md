# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.RootOperatorStatements.Variant7a5663d721cb13dac00d89ca20e4cbfa04d50b181ff18dc0111d2586cdbcd52f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dc73fce402b4cad70afb9d1075a242b442b8585` · SHA-256 `6dd890716d13181e46a4210205eb9b8110f85a9707e1c51933015f4c217e9b7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8","mathematical_subject":"Analysis.Integration","original_sha256":"646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/RootOperatorStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals



namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant646d823d50c7f037ac3762ff26ba9c1a2701dad0d26a8b3341b3ef2c7e74abd8

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
namespace TimeKernelTruncationScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open HalfLineOperatorScratch
noncomputable section

def truncatedKernel (N : ℝ) : ℝ → ℝ := (Icc (0 : ℝ) N).indicator fixedKernel

theorem truncatedKernel_integrable (N : ℝ) : Integrable (truncatedKernel N) :=
  fixedKernel_integrable.indicator measurableSet_Icc

theorem truncatedKernel_memLp (N : ℝ) : MemLp (truncatedKernel N) 2 volume :=
  fixedKernel_memLp_two.indicator measurableSet_Icc

theorem kernel_sub_truncated (N : ℝ) (t : ℝ) :
    fixedKernel t - truncatedKernel N t = (Ioi N).indicator fixedKernel t := by
  by_cases ht : t ≤ N
  · rw [indicator_of_notMem (show t ∉ Ioi N from not_lt.mpr ht)]
    by_cases ht0 : 0 ≤ t
    · simp only [truncatedKernel, indicator_of_mem (show t ∈ Icc 0 N from ⟨ht0, ht⟩), sub_self]
    · rw [truncatedKernel, indicator_of_notMem (show t ∉ Icc 0 N from fun h => ht0 h.1),
        fixedKernel_zero_of_nonpos t (le_of_lt (lt_of_not_ge ht0)), sub_zero]
  · rw [truncatedKernel, indicator_of_notMem (show t ∉ Icc 0 N from fun h => ht h.2),
      indicator_of_mem (show t ∈ Ioi N from lt_of_not_ge ht), sub_zero]

theorem norm_kernel_sub_truncated_integral (N : ℝ) :
    (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) = ∫ t : ℝ in Ioi N, ‖fixedKernel t‖ := by
  simp_rw [kernel_sub_truncated N]
  rw [← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with t
  by_cases ht : t ∈ Ioi N <;> simp [ht]

theorem tail_majorant_integrable (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) := by
  have hi := (integrableOn_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Ioi N))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
  ring

theorem tail_majorant_integral (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  have he (t : ℝ) : Real.exp ((1 - t) / 2) * derivativeBudget =
      (Real.exp (1 / 2) * derivativeBudget) * Real.exp (-(1 / 2) * t) := by
    rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
    ring
  simp_rw [he]
  rw [integral_const_mul, integral_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N]
  rw [show (1 - N) / 2 = 1 / 2 + -(1 / 2) * N by ring, Real.exp_add]
  ring

theorem kernel_tail_integral_le (N : ℝ) (hN : 2 ≤ N) :
    (∫ t : ℝ in Ioi N, ‖fixedKernel t‖) ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  rw [← tail_majorant_integral]
  apply integral_mono_ae fixedKernel_integrable.norm.integrableOn (tail_majorant_integrable N)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  simpa only [Real.norm_eq_abs] using fixedKernel_abs_le t (hN.trans ht.le)

theorem norm_kernel_sub_truncated_integral_le (N : ℝ) (hN : 2 ≤ N) :
    (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := by
  rw [norm_kernel_sub_truncated_integral N]
  exact kernel_tail_integral_le N hN

def kernelMass : ℝ := ∫ t : ℝ, ‖fixedKernel t‖

theorem kernelMass_nonneg : 0 ≤ kernelMass := integral_nonneg (fun t => norm_nonneg (fixedKernel t))

theorem truncated_norm_integral_le (N : ℝ) : (∫ t : ℝ, ‖truncatedKernel N t‖) ≤ kernelMass := by
  apply integral_mono (truncatedKernel_integrable N).norm fixedKernel_integrable.norm
  intro t
  by_cases ht : t ∈ Icc (0 : ℝ) N <;> simp [truncatedKernel, ht]

def truncatedOperator (N : ℝ) : H →L[ℂ] H :=
  halfConvolution (truncatedKernel N) (truncatedKernel_integrable N)

theorem truncatedOperator_norm_le (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass :=
  (halfConvolution_norm_le _ _).trans (truncated_norm_integral_le N)

theorem operator_norm_sub_le (N : ℝ) (hN : 2 ≤ N) :
    ‖sourceOperator - truncatedOperator N‖ ≤
      2 * derivativeBudget * Real.exp ((1 - N) / 2) :=
  (halfConvolution_norm_sub_le _ _ fixedKernel_integrable (truncatedKernel_integrable N)).trans
    (norm_kernel_sub_truncated_integral_le N hN)

def truncatedEnergy (N : ℝ) : H →L[ℂ] H :=
  (truncatedOperator N).comp (truncatedOperator N).adjoint

theorem truncatedEnergy_isPositive (N : ℝ) : (truncatedEnergy N).IsPositive :=
  ContinuousLinearMap.isPositive_self_comp_adjoint (truncatedOperator N)

theorem norm_energy_difference (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := by
  have he : S.comp S.adjoint - T.comp T.adjoint =
      (S - T).comp S.adjoint + T.comp (S.adjoint - T.adjoint) := by
    apply ContinuousLinearMap.ext
    intro f
    simp only [ContinuousLinearMap.comp_apply, sub_apply, add_apply, map_sub]
    abel
  rw [he]
  calc
    _ ≤ ‖(S - T).comp S.adjoint‖ + ‖T.comp (S.adjoint - T.adjoint)‖ := norm_add_le _ _
    _ ≤ ‖S - T‖ * ‖S.adjoint‖ + ‖T‖ * ‖S.adjoint - T.adjoint‖ :=
      add_le_add (ContinuousLinearMap.opNorm_comp_le _ _) (ContinuousLinearMap.opNorm_comp_le _ _)
    _ = _ := by
      rw [← map_sub, LinearIsometryEquiv.norm_map, LinearIsometryEquiv.norm_map]
      ring

theorem energy_norm_sub_le (N : ℝ) (hN : 2 ≤ N) :
    ‖sourceEnergy - truncatedEnergy N‖ ≤
      4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) := by
  calc
    _ ≤ (‖sourceOperator‖ + ‖truncatedOperator N‖) * ‖sourceOperator - truncatedOperator N‖ :=
      norm_energy_difference _ _
    _ ≤ (kernelMass + kernelMass) * (2 * derivativeBudget * Real.exp ((1 - N) / 2)) := by
      exact mul_le_mul (add_le_add sourceOperator_norm_le (truncatedOperator_norm_le N))
        (operator_norm_sub_le N hN) (norm_nonneg _)
        (add_nonneg kernelMass_nonneg kernelMass_nonneg)
    _ = _ := by ring

def diagonalCutoff (α : ℝ) : ℝ := max 2 (1 + 4 * Real.log (1 / α))

theorem diagonalCutoff_ge_two (α : ℝ) : 2 ≤ diagonalCutoff α := le_max_left _ _

theorem diagonal_exp_le (α : ℝ) (hα : 0 < α) :
    Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := by
  have hN : 1 + 4 * Real.log (1 / α) ≤ diagonalCutoff α := le_max_right _ _
  calc
    _ ≤ Real.exp (-2 * Real.log (1 / α)) := Real.exp_le_exp.mpr (by linarith)
    _ = α ^ 2 := by
      rw [one_div, Real.log_inv]
      have he : -2 * -Real.log α = (2 : ℕ) * Real.log α := by norm_num
      rw [he, Real.exp_nat_mul, Real.exp_log hα]

theorem diagonal_operator_error_le (α : ℝ) (hα : 0 < α) :
    ‖sourceOperator - truncatedOperator (diagonalCutoff α)‖ ≤ 2 * derivativeBudget * α ^ 2 := by
  exact (operator_norm_sub_le _ (diagonalCutoff_ge_two α)).trans
    (mul_le_mul_of_nonneg_left (diagonal_exp_le α hα)
      (mul_nonneg (by norm_num) derivativeBudget_nonneg))

theorem diagonal_energy_error_le (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := by
  exact (energy_norm_sub_le _ (diagonalCutoff_ge_two α)).trans
    (mul_le_mul_of_nonneg_left (diagonal_exp_le α hα)
      (mul_nonneg (mul_nonneg (by norm_num) kernelMass_nonneg) derivativeBudget_nonneg))

end
end TimeKernelTruncationScratch

namespace RootOperatorLiteral
open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section

section Full
open FullLineConvolutionScratch
-- 01: the exact ambient Hilbert space.
example : FullH = Lp ℂ 2 (volume : Measure ℝ) := rfl
-- 02: the actual measure-preserving translation, including its sign.
example (a : ℝ) : fullShift a =
    Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a) := rfl
-- 03
example (a : ℝ) (f : FullH) : fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  fullShift_ae a f
-- 04
example (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := fullShift_continuous f
-- 05
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    Integrable (fun a : ℝ => (g a : ℂ) • fullShift a f) := weighted_shift_integrable g hg f
-- 06: literal Bochner integral body.
example (g : ℝ → ℝ) (f : FullH) : vector g f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 07
example (g : ℝ → ℝ) (f : FullH) :
    ‖vector g f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := vector_norm_le g f
-- 08
example (g : ℝ → ℝ) (hg : Integrable g) (f h : FullH) :
    vector g (f + h) = vector g f + vector g h := vector_add g hg f h
-- 09
example (g : ℝ → ℝ) (c : ℂ) (f : FullH) : vector g (c • f) = c • vector g f := vector_smul g c f
-- 10: linear-map function body, with its integrability premise retained.
example (g : ℝ → ℝ) (hg : Integrable g) :
    (linearMap g hg : FullH → FullH) = fun f => ∫ a : ℝ, (g a : ℂ) • fullShift a f := rfl
-- 11: the actual continuous-map constructor and bound.
example (g : ℝ → ℝ) (hg : Integrable g) : fullConvolution g hg =
    (linearMap g hg).mkContinuous (∫ a : ℝ, ‖g a‖) (vector_norm_le g) := rfl
-- 12
example (g : ℝ → ℝ) (hg : Integrable g) (f : FullH) :
    fullConvolution g hg f = ∫ a : ℝ, (g a : ℂ) • fullShift a f := fullConvolution_apply g hg f
-- 13
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖fullConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := fullConvolution_norm_le g hg
-- 14
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    fullConvolution (g - h) (hg.sub hh) = fullConvolution g hg - fullConvolution h hh :=
  fullConvolution_sub_kernel g h hg hh
-- 15
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖fullConvolution g hg - fullConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  fullConvolution_norm_sub_le g h hg hh
-- 16: actual source, not an arbitrary substituted kernel.
example : actualFull = fullConvolution fixedKernel fixedKernel_integrable := rfl
-- 17
example (f : FullH) : actualFull f = ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f := actualFull_apply f
-- 18
example : ‖actualFull‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := actualFull_norm_le
end Full

section Half
open FullLineConvolutionScratch HalfLineExtensionScratch HalfLineOperatorScratch
-- 19: exact restriction/convolution/extension order.
example (g : ℝ → ℝ) (hg : Integrable g) : halfConvolution g hg =
    restriction.comp ((fullConvolution g hg).comp zeroExtension.toContinuousLinearMap) := rfl
-- 20
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    halfConvolution g hg f = restriction (∫ a : ℝ, (g a : ℂ) • fullShift a (zeroExtension f)) :=
  halfConvolution_apply g hg f
-- 21
example (g : ℝ → ℝ) (hg : Integrable g) (f : H) :
    ‖halfConvolution g hg f‖ ≤ (∫ a : ℝ, ‖g a‖) * ‖f‖ := halfConvolution_apply_norm_le g hg f
-- 22
example (g : ℝ → ℝ) (hg : Integrable g) :
    ‖halfConvolution g hg‖ ≤ ∫ a : ℝ, ‖g a‖ := halfConvolution_norm_le g hg
-- 23
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    halfConvolution (g - h) (hg.sub hh) = halfConvolution g hg - halfConvolution h hh :=
  halfConvolution_sub_kernel g h hg hh
-- 24
example (g h : ℝ → ℝ) (hg : Integrable g) (hh : Integrable h) :
    ‖halfConvolution g hg - halfConvolution h hh‖ ≤ ∫ a : ℝ, ‖g a - h a‖ :=
  halfConvolution_norm_sub_le g h hg hh
-- 25
example : sourceOperator = halfConvolution fixedKernel fixedKernel_integrable := rfl
-- 26
example (f : H) : sourceOperator f =
    restriction (∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a (zeroExtension f)) := sourceOperator_apply f
-- 27
example (f : H) : ‖sourceOperator f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ :=
  sourceOperator_apply_norm_le f
-- 28
example : ‖sourceOperator‖ ≤ ∫ a : ℝ, ‖fixedKernel a‖ := sourceOperator_norm_le
-- 29: T T*, not T* T or T squared.
example : sourceEnergy = sourceOperator.comp sourceOperator.adjoint := rfl
-- 30
example (f : H) : sourceEnergy f = sourceOperator (sourceOperator.adjoint f) := sourceEnergy_apply f
-- 31
example : sourceEnergy.IsPositive := sourceEnergy_isPositive
-- 32
example : IsSelfAdjoint sourceEnergy := sourceEnergy_isSelfAdjoint
-- 33
example (f : H) : inner ℂ f (sourceEnergy f) =
    inner ℂ (sourceOperator.adjoint f) (sourceOperator.adjoint f) := sourceEnergy_inner f
-- 34
example (f : H) : (inner ℂ f (sourceEnergy f)).re = ‖sourceOperator.adjoint f‖ ^ 2 :=
  sourceEnergy_re_inner f
-- 35
example : sourceEnergy.ker = sourceOperator.adjoint.ker := sourceEnergy_kernel
-- 36
example : ‖sourceEnergy‖ = ‖sourceOperator‖ ^ 2 := sourceEnergy_norm
end Half

section Truncation
open HalfLineOperatorScratch TimeKernelTruncationScratch
-- 37: actual time truncation, with both interval endpoints retained.
example (N : ℝ) : truncatedKernel N = (Icc (0 : ℝ) N).indicator fixedKernel := rfl
-- 38
example (N : ℝ) : Integrable (truncatedKernel N) := truncatedKernel_integrable N
-- 39
example (N : ℝ) : MemLp (truncatedKernel N) 2 volume := truncatedKernel_memLp N
-- 40
example (N t : ℝ) : fixedKernel t - truncatedKernel N t = (Ioi N).indicator fixedKernel t :=
  kernel_sub_truncated N t
-- 41
example (N : ℝ) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) =
    ∫ t : ℝ in Ioi N, ‖fixedKernel t‖ := norm_kernel_sub_truncated_integral N
-- 42
example (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) :=
  tail_majorant_integrable N
-- 43: exact evaluation of the majorant, not equality to the unknown actual tail.
example (N : ℝ) :
    (∫ t : ℝ in Ioi N, Real.exp ((1 - t) / 2) * derivativeBudget) =
      2 * derivativeBudget * Real.exp ((1 - N) / 2) := tail_majorant_integral N
-- 44
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ in Ioi N, ‖fixedKernel t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := kernel_tail_integral_le N hN
-- 45
example (N : ℝ) (hN : 2 ≤ N) : (∫ t : ℝ, ‖fixedKernel t - truncatedKernel N t‖) ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := norm_kernel_sub_truncated_integral_le N hN
-- 46
example : kernelMass = ∫ t : ℝ, ‖fixedKernel t‖ := rfl
-- 47
example : 0 ≤ kernelMass := kernelMass_nonneg
-- 48
example (N : ℝ) : (∫ t : ℝ, ‖truncatedKernel N t‖) ≤ kernelMass := truncated_norm_integral_le N
-- 49
example (N : ℝ) : truncatedOperator N =
    halfConvolution (truncatedKernel N) (truncatedKernel_integrable N) := rfl
-- 50
example (N : ℝ) : ‖truncatedOperator N‖ ≤ kernelMass := truncatedOperator_norm_le N
-- 51
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceOperator - truncatedOperator N‖ ≤
    2 * derivativeBudget * Real.exp ((1 - N) / 2) := operator_norm_sub_le N hN
-- 52
example (N : ℝ) : truncatedEnergy N =
    (truncatedOperator N).comp (truncatedOperator N).adjoint := rfl
-- 53
example (N : ℝ) : (truncatedEnergy N).IsPositive := truncatedEnergy_isPositive N
-- 54
example (S T : H →L[ℂ] H) :
    ‖S.comp S.adjoint - T.comp T.adjoint‖ ≤ (‖S‖ + ‖T‖) * ‖S - T‖ := norm_energy_difference S T
-- 55
example (N : ℝ) (hN : 2 ≤ N) : ‖sourceEnergy - truncatedEnergy N‖ ≤
    4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) := energy_norm_sub_le N hN
-- 56
example (α : ℝ) : diagonalCutoff α = max 2 (1 + 4 * Real.log (1 / α)) := rfl
-- 57
example (α : ℝ) : 2 ≤ diagonalCutoff α := diagonalCutoff_ge_two α
-- 58
example (α : ℝ) (hα : 0 < α) : Real.exp ((1 - diagonalCutoff α) / 2) ≤ α ^ 2 := diagonal_exp_le α hα
-- 59
example (α : ℝ) (hα : 0 < α) :
    ‖sourceOperator - truncatedOperator (diagonalCutoff α)‖ ≤ 2 * derivativeBudget * α ^ 2 :=
  diagonal_operator_error_le α hα
-- 60
example (α : ℝ) (hα : 0 < α) :
    ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ ≤
      4 * kernelMass * derivativeBudget * α ^ 2 := diagonal_energy_error_le α hα
end Truncation
end
end RootOperatorLiteral
```
