# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceResolventTruncationAudit.Variante7eaee5b5a77ff92b1fed7f942d3a2d4c9d1b7e8f4ef8f1cd44a294777415eb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd0c92783cfc84b347170b477a6f75b1d1dd1d28` · SHA-256 `51b22b0226c9e37abe6f9942effaa690eaf32005bc67041609b8a6f3de9de6eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6","mathematical_subject":"Analysis.Integration","original_sha256":"12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/SourceResolventTruncationAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.InnerProductSpace.Positive
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Tactic




namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution
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
end FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution


/-!
The genuine zero-extension isometry and restriction contraction between the actual
half-line Hilbert space and full-line L2. No convolution or adjoint is assumed.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
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
end FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FormalResearch.RiemannHypothesis.SourceComparison.FullLineConvolution FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
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
end FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineOperator
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
end FormalResearch.RiemannHypothesis.SourceComparison.TimeKernelTruncation


/-!
Positive bounded operator resolvents are admitted from a proved unit before
any inverse bound is used. These are Hilbert-space transports; they provide
no independent estimate that a directional regularized mass tends to zero.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent

open ContinuousLinearMap
open scoped InnerProduct ComplexConjugate ComplexOrder NNReal

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- Add the positive scalar multiple of the identity to the original operator. -/
noncomputable def positiveShift (S : E →L[ℂ] E) (α : ℝ) : E →L[ℂ] E :=
  S + (α : ℂ) • (1 : E →L[ℂ] E)

/-- The shifted original positive operator remains positive. -/
theorem positiveShift_isPositive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveShift S α).IsPositive := by
  apply hS.add
  apply ContinuousLinearMap.isPositive_one.smul_of_nonneg
  exact_mod_cast hα.le

/-- Coercivity follows from positivity with exactly the original scalar shift. -/
theorem positiveShift_coercive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (x : E) :
    α * ‖x‖ ^ 2 ≤ (inner ℂ (positiveShift S α x) x).re := by
  have h := hS.re_inner_nonneg_left x
  have hself : (inner ℂ x x).re = ‖x‖ ^ 2 := inner_self_eq_norm_sq (𝕜 := ℂ) x
  simp only [positiveShift, add_apply, smul_apply,
    one_apply_eq_self, inner_add_left, inner_smul_left, Complex.add_re,
    Complex.conj_ofReal, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, hself]
  change 0 ≤ (inner ℂ (S x) x).re at h
  linarith

variable [CompleteSpace E]

/-- Positivity and a strictly positive shift prove genuine bounded invertibility. -/
theorem positiveShift_isUnit (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : IsUnit (positiveShift S α) := by
  apply ContinuousLinearMap.isUnit_of_forall_le_norm_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα)
  intro x
  have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
      (inner ℂ (positiveShift S α x) x).re := by
    simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
  exact hc.trans (Complex.re_le_norm _)

/-- The ordinary ring inverse; the preceding theorem supplies its unit admission. -/
noncomputable def positiveResolvent (S : E →L[ℂ] E) (α : ℝ) : E →L[ℂ] E :=
  Ring.inverse (positiveShift S α)

/-- Genuine right inverse identity for the positive shift. -/
theorem positiveShift_mul_resolvent (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveShift S α * positiveResolvent S α = 1 :=
  Ring.mul_inverse_cancel _ (positiveShift_isUnit S hS α hα)

/-- Genuine left inverse identity for the positive shift. -/
theorem resolvent_mul_positiveShift (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : positiveResolvent S α * positiveShift S α = 1 :=
  Ring.inverse_mul_cancel _ (positiveShift_isUnit S hS α hα)

/-- The right inverse acts as the identity on each vector. -/
theorem positiveShift_resolvent_apply (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) (x : E) :
    positiveShift S α (positiveResolvent S α x) = x := by
  have h := congrArg (fun A : E →L[ℂ] E => A x) (positiveShift_mul_resolvent S hS α hα)
  simpa only [mul_apply_eq_comp, one_apply_eq_self] using h

/-- The coercive inverse has the required reciprocal-parameter operator norm bound. -/
theorem positiveResolvent_norm_le (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : ‖positiveResolvent S α‖ ≤ 1 / α := by
  have ha := ContinuousLinearMap.antilipschitz_of_forall_le_inner_map (positiveShift S α)
    (c := ⟨α, hα.le⟩) (by exact_mod_cast hα) (fun x => by
      have hc : ‖x‖ ^ 2 * (⟨α, hα.le⟩ : ℝ≥0) ≤
          (inner ℂ (positiveShift S α x) x).re := by
        simpa only [NNReal.coe_mk, mul_comm] using positiveShift_coercive S hS α x
      exact hc.trans (Complex.re_le_norm _))
  apply (positiveResolvent S α).opNorm_le_bound (by positivity)
  intro x
  have h := ha.le_mul_dist (positiveResolvent S α x) 0
  simp only [map_zero, dist_zero_right, positiveShift_resolvent_apply S hS α hα] at h
  change ‖positiveResolvent S α x‖ ≤ α⁻¹ * ‖x‖ at h
  simpa only [one_div] using h

/-- The admitted inverse itself is a positive operator. -/
theorem positiveResolvent_isPositive (S : E →L[ℂ] E) (hS : S.IsPositive)
    (α : ℝ) (hα : 0 < α) : (positiveResolvent S α).IsPositive := by
  apply ContinuousLinearMap.isPositive_def'.2
  refine ⟨(positiveShift_isPositive S hS α hα).isSelfAdjoint.ringInverse, ?_⟩
  intro x
  have h := (positiveShift_isPositive S hS α hα).re_inner_nonneg_right
    (positiveResolvent S α x)
  rw [positiveShift_resolvent_apply S hS α hα] at h
  exact h

/-- The exact resolvent identity retains the operator order. -/
theorem positiveResolvent_sub (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    positiveResolvent S α - positiveResolvent T α =
      positiveResolvent S α * (T - S) * positiveResolvent T α := by
  have hdiff : positiveShift T α - positiveShift S α = T - S := by
    unfold positiveShift
    abel
  rw [← hdiff, mul_sub, sub_mul, mul_assoc,
    positiveShift_mul_resolvent T hT α hα, mul_one,
    resolvent_mul_positiveShift S hS α hα, one_mul]

/-- Operator-norm perturbation at the same strictly positive parameter. -/
theorem positiveResolvent_sub_norm_le (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    ‖positiveResolvent S α - positiveResolvent T α‖ ≤ ‖S - T‖ / α ^ 2 := by
  rw [positiveResolvent_sub S T hS hT α hα]
  calc
    _ ≤ ‖positiveResolvent S α‖ * ‖T - S‖ * ‖positiveResolvent T α‖ :=
      (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _))
    _ ≤ (1 / α) * ‖T - S‖ * (1 / α) := by
      gcongr
      · exact positiveResolvent_norm_le S hS α hα
      · exact positiveResolvent_norm_le T hT α hα
    _ = ‖S - T‖ / α ^ 2 := by rw [norm_sub_rev]; ring

/-- The real directional regularized mass of the admitted resolvent. -/
noncomputable def regularizedMass (S : E →L[ℂ] E) (α : ℝ) (r : E) : ℝ :=
  α * (inner ℂ r (positiveResolvent S α r)).re

omit [CompleteSpace E] in
private theorem abs_re_inner_map_le (A : E →L[ℂ] E) (r : E) :
    |(inner ℂ r (A r)).re| ≤ ‖r‖ ^ 2 * ‖A‖ := by
  calc
    _ ≤ ‖inner ℂ r (A r)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖r‖ * ‖A r‖ := norm_inner_le_norm _ _
    _ ≤ ‖r‖ * (‖A‖ * ‖r‖) := mul_le_mul_of_nonneg_left (A.le_opNorm r) (norm_nonneg _)
    _ = ‖r‖ ^ 2 * ‖A‖ := by ring

/-- The parameter-scaled directional error loses only one power of alpha. -/
theorem regularizedMass_sub_abs_le (S T : E →L[ℂ] E)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) (r : E) :
    |regularizedMass S α r - regularizedMass T α r| ≤ ‖r‖ ^ 2 * ‖S - T‖ / α := by
  have hbound := abs_re_inner_map_le (positiveResolvent S α - positiveResolvent T α) r
  have heq : (inner ℂ r ((positiveResolvent S α - positiveResolvent T α) r)).re =
      (inner ℂ r (positiveResolvent S α r)).re -
        (inner ℂ r (positiveResolvent T α r)).re := by
    rw [sub_apply, inner_sub_right, Complex.sub_re]
  rw [heq] at hbound
  unfold regularizedMass
  rw [← mul_sub, abs_mul, abs_of_pos hα]
  calc
    _ ≤ α * (‖r‖ ^ 2 * ‖positiveResolvent S α - positiveResolvent T α‖) :=
      mul_le_mul_of_nonneg_left hbound hα.le
    _ ≤ α * (‖r‖ ^ 2 * (‖S - T‖ / α ^ 2)) := by
      gcongr
      exact positiveResolvent_sub_norm_le S T hS hT α hα
    _ = ‖r‖ ^ 2 * ‖S - T‖ / α := by field_simp

/-- Actual half-line reference normalization gives the precise factor one half. -/
theorem reference_regularizedMass_sub_abs_le
    (S T : FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H →L[ℂ]
      FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.H)
    (hS : S.IsPositive) (hT : T.IsPositive) (α : ℝ) (hα : 0 < α) :
    |regularizedMass S α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector -
      regularizedMass T α
        FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector| ≤
      ‖S - T‖ / (2 * α) := by
  have h := regularizedMass_sub_abs_le S T hS hT α hα
    FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector
  rw [FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential.referenceVector_norm_sq] at h
  convert h using 1
  ring

end FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolvent


/-!
# Actual source resolvents and a joint time/parameter truncation bound

Every inverse below is justified by positivity of the original TT*. The diagonal
comparison controls approximation error; it does not prove vanishing of either
actual or truncated directional mass.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
open MeasureTheory Set Filter
open scoped Topology
open HalfLineExponential FixedSourceKernel HalfLineOperator TimeKernelTruncation PositiveResolvent
noncomputable section

/-- The requested directional mass for the actual source TT*. -/
def sourceMass (α : ℝ) : ℝ := regularizedMass sourceEnergy α referenceVector

/-- The same reference vector and parameter for the actual time-truncated TT*. -/
def truncatedMass (N α : ℝ) : ℝ := regularizedMass (truncatedEnergy N) α referenceVector

/-- The source inverse exists at every strictly positive parameter. -/
theorem sourceShift_isUnit (α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift sourceEnergy α) :=
  positiveShift_isUnit sourceEnergy sourceEnergy_isPositive α hα

/-- The truncated source inverse exists at every strictly positive parameter. -/
theorem truncatedShift_isUnit (N α : ℝ) (hα : 0 < α) :
    IsUnit (positiveShift (truncatedEnergy N) α) :=
  positiveShift_isUnit (truncatedEnergy N) (truncatedEnergy_isPositive N) α hα

/-- Genuine resolvent positivity retains the actual reference direction. -/
theorem sourceMass_nonneg (α : ℝ) (hα : 0 < α) : 0 ≤ sourceMass α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive sourceEnergy sourceEnergy_isPositive α hα).re_inner_nonneg_right _)

/-- Positive approximants use exactly the same reference direction. -/
theorem truncatedMass_nonneg (N α : ℝ) (hα : 0 < α) : 0 ≤ truncatedMass N α :=
  mul_nonneg hα.le
    ((positiveResolvent_isPositive (truncatedEnergy N)
      (truncatedEnergy_isPositive N) α hα).re_inner_nonneg_right _)

private theorem regularizedMass_le_norm_sq
    (S : H →L[ℂ] H) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r : H) :
    regularizedMass S α r ≤ ‖r‖ ^ 2 := by
  have hinner : (inner ℂ r (positiveResolvent S α r)).re ≤
      ‖r‖ ^ 2 * (1 / α) := by
    calc
      _ ≤ ‖inner ℂ r (positiveResolvent S α r)‖ := Complex.re_le_norm _
      _ ≤ ‖r‖ * ‖positiveResolvent S α r‖ := norm_inner_le_norm _ _
      _ ≤ ‖r‖ * (‖positiveResolvent S α‖ * ‖r‖) :=
        mul_le_mul_of_nonneg_left ((positiveResolvent S α).le_opNorm r) (norm_nonneg _)
      _ ≤ ‖r‖ * ((1 / α) * ‖r‖) := by
        gcongr
        exact positiveResolvent_norm_le S hS α hα
      _ = _ := by ring
  calc
    _ ≤ α * (‖r‖ ^ 2 * (1 / α)) := mul_le_mul_of_nonneg_left hinner hα.le
    _ = _ := by field_simp

/-- The original reference has squared norm one half, bounding its actual directional mass. -/
theorem sourceMass_le_half (α : ℝ) (hα : 0 < α) : sourceMass α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq sourceEnergy sourceEnergy_isPositive α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- The identical reference normalization bounds each actual truncated directional mass. -/
theorem truncatedMass_le_half (N α : ℝ) (hα : 0 < α) : truncatedMass N α ≤ 1 / 2 := by
  have h := regularizedMass_le_norm_sq (truncatedEnergy N)
    (truncatedEnergy_isPositive N) α hα referenceVector
  simpa only [referenceVector_norm_sq, sourceMass, truncatedMass] using h

/-- Uniform source-based error, with one inverse power of the parameter. -/
theorem mass_sub_abs_le (N : ℝ) (hN : 2 ≤ N) (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass N α| ≤
      2 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2) / α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy (truncatedEnergy N)
    sourceEnergy_isPositive (truncatedEnergy_isPositive N) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy N‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * Real.exp ((1 - N) / 2)) / (2 * α) :=
      div_le_div_of_nonneg_right (energy_norm_sub_le N hN) (by positivity)
    _ = _ := by ring

/-- The joint cutoff produces a vanishing error, without interchanging limits. -/
theorem diagonal_mass_sub_abs_le (α : ℝ) (hα : 0 < α) :
    |sourceMass α - truncatedMass (diagonalCutoff α) α| ≤
      2 * kernelMass * derivativeBudget * α := by
  have h := reference_regularizedMass_sub_abs_le sourceEnergy
    (truncatedEnergy (diagonalCutoff α)) sourceEnergy_isPositive
    (truncatedEnergy_isPositive (diagonalCutoff α)) α hα
  calc
    _ ≤ ‖sourceEnergy - truncatedEnergy (diagonalCutoff α)‖ / (2 * α) := h
    _ ≤ (4 * kernelMass * derivativeBudget * α ^ 2) / (2 * α) :=
      div_le_div_of_nonneg_right (diagonal_energy_error_le α hα) (by positivity)
    _ = _ := by field_simp; ring


/-- Only the actual-versus-truncated directional error is proved to vanish. -/
theorem diagonal_mass_sub_abs_tendsto_zero :
    Tendsto (fun α : ℝ => |sourceMass α - truncatedMass (diagonalCutoff α) α|)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply squeeze_zero' (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
  · filter_upwards [self_mem_nhdsWithin] with α hα
    exact diagonal_mass_sub_abs_le α hα
  · have h : Tendsto (fun α : ℝ => 2 * kernelMass * derivativeBudget * α)
        (𝓝[>] (0 : ℝ)) (𝓝 (2 * kernelMass * derivativeBudget * 0)) :=
      tendsto_const_nhds.mul (tendsto_id.mono_left nhdsWithin_le_nhds)
    simpa only [mul_zero] using h

/-- The signed approximation error also vanishes along the same prescribed joint cutoff. -/
theorem diagonal_mass_sub_tendsto_zero :
    Tendsto (fun α : ℝ => sourceMass α - truncatedMass (diagonalCutoff α) α)
      (𝓝[>] (0 : ℝ)) (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  simpa only [Real.norm_eq_abs] using diagonal_mass_sub_abs_tendsto_zero

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceShift_isUnit

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedShift_isUnit

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_nonneg

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_nonneg

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.sourceMass_le_half

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.truncatedMass_le_half

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.mass_sub_abs_le

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_le

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_abs_tendsto_zero

#check @FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
#print FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation.diagonal_mass_sub_tendsto_zero
```
