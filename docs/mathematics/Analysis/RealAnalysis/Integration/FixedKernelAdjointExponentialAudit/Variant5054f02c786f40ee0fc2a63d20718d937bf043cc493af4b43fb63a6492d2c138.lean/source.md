# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdjointExponentialAudit.Variant5054f02c786f40ee0fc2a63d20718d937bf043cc493af4b43fb63a6492d2c138

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eca0fbd3b582fc115cf671631babc05f2f860dc` · SHA-256 `c46e721c8cc36e81a1fed3e828759a05822b331411c6ad0ace89ce51280c8c50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FullH.Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306","mathematical_subject":"Analysis.Integration","original_sha256":"d4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/FixedKernelAdjointExponentialAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Function.LpSeminorm.Indicator
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Positive
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Convex.Topology



namespace GRWTSK.Analysis.RealAnalysis.Integration.FullH.Variantd4f0a0fd4724489fe6796aa564894cf7327bd1cb58bcd212bda03d5e624f0306

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


/-!
The duality between actual zero extension and restriction. This module does not
supply or assume any convolution adjoint formula.
-/

set_option autoImplicit false
namespace HalfLineDualityScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
open HalfLineExtensionScratch
noncomputable section

theorem restricted_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (h t)) halfLineMeasure := by
  refine (L2.integrable_inner (𝕜 := ℂ) (restriction f) h).congr ?_
  filter_upwards [restriction_ae f] with t ht
  rw [ht]

theorem extended_inner_integrable (f : FullH) (h : H) :
    Integrable (fun t : ℝ => inner ℂ (f t) (zeroExtension h t)) volume :=
  L2.integrable_inner (𝕜 := ℂ) f (zeroExtension h)

theorem inner_restriction_zeroExtension (f : FullH) (h : H) :
    inner ℂ (restriction f) h = inner ℂ f (zeroExtension h) := by
  rw [L2.inner_def, L2.inner_def]
  calc
    _ = ∫ t : ℝ, inner ℂ (f t) (h t) ∂halfLineMeasure := by
      apply integral_congr_ae
      filter_upwards [restriction_ae f] with t ht
      rw [ht]
    _ = ∫ t : ℝ, (Ioi (0 : ℝ)).indicator (fun x => inner ℂ (f x) (h x)) t := by
      exact (integral_indicator measurableSet_Ioi).symm
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [zeroExtension_ae h] with t ht
      rw [ht]
      by_cases htpos : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem htpos]
      · simp only [indicator_of_notMem htpos, inner_zero_right]

theorem zeroExtension_adjoint : zeroExtension.toContinuousLinearMap.adjoint = restriction := by
  symm
  exact (ContinuousLinearMap.eq_adjoint_iff restriction
    zeroExtension.toContinuousLinearMap).mpr inner_restriction_zeroExtension

theorem restriction_adjoint : restriction.adjoint = zeroExtension.toContinuousLinearMap := by
  rw [← zeroExtension_adjoint, ContinuousLinearMap.adjoint_adjoint]

end
end HalfLineDualityScratch

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


/-!
# Continuation of the actual fixed kernel Laplace integral

The admitted L1 source gives a holomorphic integral on the positive half-plane.
The source repaired product is analytic there, including its removed pole.
The initial identity therefore continues without a new arithmetic assumption.
-/

set_option autoImplicit false
namespace FixedLaplaceContinuationScratch
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedSourceFilter FixedSourceTransfer FixedKernelLaplace
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- The actual integral of the complete source kernel on the original positive time domain. -/
def actualLaplace (z : ℂ) : ℂ :=
  ∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))

private theorem decay_derivative_bound (a t : ℝ) (ha : 0 < a) :
    t * Real.exp (-a * t) ≤ 1 / a := by
  have h := Real.mul_exp_neg_le_exp_neg_one (a * t)
  have he : Real.exp (-1 : ℝ) ≤ 1 := Real.exp_le_one_iff.mpr (by norm_num)
  apply (le_div_iff₀ ha).mpr
  calc
    t * Real.exp (-a * t) * a = (a * t) * Real.exp (-(a * t)) := by
      rw [neg_mul]
      ring
    _ ≤ Real.exp (-1) := h
    _ ≤ 1 := he

/-- A local derivative bound by the admitted L1 kernel proves genuine complex differentiability. -/
theorem actualLaplace_differentiableAt (z : ℂ) (hz : 0 < z.re) :
    DifferentiableAt ℂ actualLaplace z := by
  let a : ℝ := z.re / 2
  have ha : 0 < a := by dsimp [a]; linarith
  let F : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * Complex.exp ((-w) * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t ↦
    (fixedKernel t : ℂ) * (Complex.exp ((-w) * (t : ℂ)) * (-(t : ℂ)))
  have hmeas (w : ℂ) : AEStronglyMeasurable (F w) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hdmeas : AEStronglyMeasurable (F' z) (volume.restrict (Ioi 0)) := by
    exact (fixedKernel_measurable.complex_ofReal.aestronglyMeasurable).mul
      (by fun_prop)
  have hbound : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, ‖F' w t‖ ≤ |fixedKernel t| / a := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    intro w hw
    have hexp : Real.exp (-w.re * t) ≤ Real.exp (-a * t) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_right (neg_le_neg hw.le) ht.le
    have hh : t * Real.exp (-w.re * t) ≤ 1 / a :=
      (mul_le_mul_of_nonneg_left hexp ht.le).trans (decay_derivative_bound a t ha)
    dsimp [F']
    rw [norm_mul, norm_mul, norm_neg, Complex.norm_real, Complex.norm_real,
      Real.norm_eq_abs, Real.norm_eq_abs, Complex.norm_exp]
    rw [show |t| = t from abs_of_pos ht]
    simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
      Complex.neg_im, Complex.ofReal_im, mul_zero, sub_zero]
    calc
      |fixedKernel t| * (Real.exp (-w.re * t) * t) =
          |fixedKernel t| * (t * Real.exp (-w.re * t)) := by ring
      _ ≤ |fixedKernel t| * (1 / a) := mul_le_mul_of_nonneg_left hh (abs_nonneg _)
      _ = _ := by ring
  have hbint : Integrable (fun t : ℝ ↦ |fixedKernel t| / a)
      (volume.restrict (Ioi 0)) :=
    FixedKernelAdmission.fixedKernel_integrableOn_Ioi.abs.div_const a
  have hdiff : ∀ᵐ t : ℝ ∂volume.restrict (Ioi 0),
      ∀ w ∈ {w : ℂ | a < w.re}, HasDerivAt (F · t) (F' w t) w := by
    filter_upwards [] with t
    intro w _
    have h := (((hasDerivAt_id w).neg.mul_const (t : ℂ)).cexp).const_mul
      (fixedKernel t : ℂ)
    simpa only [Pi.neg_apply, id_eq, neg_mul, one_mul, F, F'] using h
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (show a < z.re by dsimp [a]; linarith))
    (Eventually.of_forall hmeas) (fixedKernel_laplace_integrable z hz.le)
    hdmeas hbound hbint hdiff
  exact h.2.differentiableAt

/-- The exact source formula supplies differentiability away from its formula guard. -/
theorem V_differentiableAt_of_ne_zero (z : ℂ) (hz : z ≠ 0) :
    DifferentiableAt ℂ V z := by
  have hd : DifferentiableAt ℂ (fun w : ℂ ↦ (w ^ 2 - 1 / 4) * removedFilter w) z :=
    ((differentiableAt_id.pow 2).sub_const _).mul (removedFilter_differentiableAt z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hz] with w hw
  exact V_eq_removedFilter w hw

/-- Away from the two formula guards, the repaired product retains its genuine derivative. -/
theorem repairedTransfer_differentiableAt_of_ne (z : ℂ) (hz : z ≠ 0)
    (hzp : z ≠ 1 / 2) : DifferentiableAt ℂ repairedTransfer z := by
  have hp : (1 / 2 : ℂ) + z ≠ 1 := by
    intro h
    apply hzp
    linear_combination h
  have hd : DifferentiableAt ℂ
      (fun w : ℂ ↦ Complex.exp (-w) * riemannZeta (1 / 2 + w) * V w) z :=
    ((Complex.differentiable_exp.differentiableAt.comp z differentiableAt_id.neg).mul
      ((differentiableAt_riemannZeta hp).comp z ((differentiableAt_const (1 / 2 : ℂ)).add differentiableAt_id))).mul
        (V_differentiableAt_of_ne_zero z hz)
  apply hd.congr_of_eventuallyEq
  filter_upwards [isOpen_compl_singleton.mem_nhds hzp] with w hw
  exact repairedTransfer_eq_product w hw

/-- The proved pole limit and punctured differentiability remove the source singularity. -/
theorem repairedTransfer_analyticAt_pole : AnalyticAt ℂ repairedTransfer (1 / 2) := by
  apply Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
    _ repairedTransfer_continuousAt_pole
  have hn : ∀ᶠ z : ℂ in 𝓝 (1 / 2), z ≠ 0 :=
    isOpen_compl_singleton.mem_nhds (by norm_num : (1 / 2 : ℂ) ≠ 0)
  filter_upwards [self_mem_nhdsWithin, hn.filter_mono nhdsWithin_le_nhds] with z hzp hz
  exact repairedTransfer_differentiableAt_of_ne z hz hzp

/-- The repaired arithmetic transfer is holomorphic throughout the positive half-plane. -/
theorem repairedTransfer_differentiableOn_positive :
    DifferentiableOn ℂ repairedTransfer {z : ℂ | 0 < z.re} := by
  intro z hz
  by_cases hzp : z = 1 / 2
  · subst z
    exact repairedTransfer_analyticAt_pole.differentiableAt.differentiableWithinAt
  · apply (repairedTransfer_differentiableAt_of_ne z _ hzp).differentiableWithinAt
    intro h
    subst z
    simp at hz

/-- The admitted integral is analytic throughout the positive half-plane. -/
theorem actualLaplace_analyticOn_positive :
    AnalyticOnNhd ℂ actualLaplace {z : ℂ | 0 < z.re} :=
  (show DifferentiableOn ℂ actualLaplace {z : ℂ | 0 < z.re} from
    fun z hz ↦ (actualLaplace_differentiableAt z hz).differentiableWithinAt).analyticOnNhd
      (isOpen_lt continuous_const Complex.continuous_re)

/-- The identity theorem continues the genuine initial integral identity, including the pole. -/
theorem actualLaplace_eq_repairedTransfer (z : ℂ) (hz : 0 < z.re) :
    actualLaplace z = repairedTransfer z := by
  have hopen : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  have hL := actualLaplace_analyticOn_positive
  have hR := repairedTransfer_differentiableOn_positive.analyticOnNhd hopen
  have hconn : IsPreconnected {w : ℂ | 0 < w.re} :=
    ((convex_Ioi (0 : ℝ)).linear_preimage Complex.reLm).isPreconnected
  have heq : actualLaplace =ᶠ[𝓝 (1 : ℂ)] repairedTransfer := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds
      (by norm_num : (1 / 2 : ℝ) < (1 : ℂ).re)] with w hw
    exact fixedKernel_laplace_eq_repairedTransfer w hw
  exact hL.eqOn_of_preconnected_of_eventuallyEq hR hconn
    (by norm_num : (1 : ℂ) ∈ {w : ℂ | 0 < w.re}) heq hz

/-- The actual integral attains the proved removed-pole value. -/
theorem actualLaplace_at_pole : actualLaplace (1 / 2) = removedPoleValue := by
  rw [actualLaplace_eq_repairedTransfer (1 / 2) (by norm_num), repairedTransfer_at_pole]

/-- The actual integral has no retained artificial zero at the removed pole. -/
theorem actualLaplace_pole_ne_zero : actualLaplace (1 / 2) ≠ 0 := by
  rw [actualLaplace_at_pole]
  exact removedPoleValue_ne_zero

/-- The continued identity exposes the literal source integral without replacing the kernel. -/
theorem actual_laplace_integral_eq_repairedTransfer (z : ℂ) (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-z) * (t : ℂ))) =
      repairedTransfer z :=
  actualLaplace_eq_repairedTransfer z hz

/-- The literal source integral has the nonzero exponential-times-slope pole value. -/
theorem actual_laplace_integral_at_pole :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) * Complex.exp ((-(1 / 2 : ℂ)) * (t : ℂ))) =
      Complex.exp (-(1 / 2 : ℂ)) * (positivePoleSlope : ℂ) :=
  actualLaplace_at_pole

/-- An original right-of-line nontrivial zero gives an actual integral zero, retaining all guards. -/
theorem actual_laplace_integral_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ)
    (hρre : 1 / 2 < ρ.re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-(ρ - 1 / 2)) * (t : ℂ))) = 0 := by
  rw [actual_laplace_integral_eq_repairedTransfer (ρ - 1 / 2) (by
    simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]
    linarith)]
  exact repairedTransfer_zero_of_nontrivial ρ hρ

/-- Every right-half-plane occurrence retains its own actual integral zero and multiplicity slot. -/
theorem actual_laplace_integral_zero_occurrence
    (o : ZeroObject.ZeroOccurrence)
    (ho : 0 <
      (ZeroObject.shiftedValue o).re) :
    (∫ t : ℝ in Ioi 0, (fixedKernel t : ℂ) *
      Complex.exp ((-ZeroObject.shiftedValue o) *
        (t : ℂ))) = 0 := by
  rw [actual_laplace_integral_eq_repairedTransfer _ ho]
  exact repairedTransfer_zero_occurrence o

end
end FixedLaplaceContinuationScratch


/-!
# The actual causal operator and its exponential adjoint witnesses

Weak inner-product transport uses genuine L2 shifts, extension/restriction duality,
and an admitted Bochner integral. Original right-half-plane source zeros yield
nonzero adjoint-kernel vectors; their exclusion remains a separate arithmetic task.
-/

set_option autoImplicit false
namespace FixedKernelAdjointExponentialScratch
open MeasureTheory Set Filter
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential FixedSourceKernel FixedKernelAdmission
open FullLineConvolutionScratch HalfLineExtensionScratch HalfLineDualityScratch
open HalfLineOperatorScratch FixedLaplaceContinuationScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
noncomputable section

/-- Inverse translations cancel in the genuine full-line L2 quotient. -/
theorem fullShift_neg_cancel (a : ℝ) (f : FullLineConvolutionScratch.FullH) :
    fullShift (-a) (fullShift a f) = f := by
  apply Lp.ext
  have h := (measurePreserving_sub_right volume (-a)).quasiMeasurePreserving.ae_eq_comp
    (fullShift_ae a f)
  filter_upwards [fullShift_ae (-a) (fullShift a f), h] with t h1 h2
  simp only [Function.comp_apply] at h2
  rw [h1, h2]
  congr 1
  ring

/-- The admitted exponential has its actual zero-extended representative almost everywhere. -/
theorem zeroExtension_exponential_ae (z : ℂ) (hz : 0 < z.re) :
    zeroExtension (exponentialVector z hz) =ᵐ[volume]
      (Ioi (0 : ℝ)).indicator (exponentialFunction z) := by
  have h := (ae_restrict_iff' measurableSet_Ioi).mp (exponentialVector_ae z hz)
  filter_upwards [zeroExtension_ae (exponentialVector z hz), h] with t he ht
  rw [he]
  by_cases hpos : t ∈ Ioi (0 : ℝ)
  · rw [indicator_of_mem hpos, indicator_of_mem hpos]
    exact ht hpos
  · rw [indicator_of_notMem hpos, indicator_of_notMem hpos]

/-- Backward translation of an extended exponential restricts to the exact scalar multiple. -/
theorem restriction_backwardShift_exponential (a : ℝ) (ha : 0 ≤ a)
    (z : ℂ) (hz : 0 < z.re) :
    restriction (fullShift (-a) (zeroExtension (exponentialVector z hz))) =
      Complex.exp (-conj z * (a : ℂ)) • exponentialVector z hz := by
  apply Lp.ext
  have he := (measurePreserving_sub_right volume (-a)).quasiMeasurePreserving.ae_eq_comp
    (zeroExtension_exponential_ae z hz)
  filter_upwards [restriction_ae (fullShift (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae (fullShift_ae (-a) (zeroExtension (exponentialVector z hz))),
    ae_restrict_of_ae he, Lp.coeFn_smul (Complex.exp (-conj z * (a : ℂ))) (exponentialVector z hz),
    exponentialVector_ae z hz, ae_restrict_mem measurableSet_Ioi]
    with t hr hs heq hsm hex ht
  simp only [Function.comp_apply] at heq
  rw [hr, hs, heq, hsm, Pi.smul_apply, hex]
  rw [indicator_of_mem (show t - -a ∈ Ioi (0 : ℝ) by
    change 0 < t - -a
    linarith [show 0 < t from ht])]
  change Complex.exp (-conj z * ((t - -a : ℝ) : ℂ)) =
    Complex.exp (-conj z * (a : ℂ)) * Complex.exp (-conj z * (t : ℂ))
  rw [← Complex.exp_add]
  congr 1
  push_cast
  ring

/-- The half-line exponential tests actual shifts with the Laplace exponential factor. -/
theorem exponential_inner_shift (a : ℝ) (ha : 0 ≤ a) (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (zeroExtension (exponentialVector z hz)) (fullShift a (zeroExtension f)) =
      Complex.exp (-z * (a : ℂ)) * inner ℂ (exponentialVector z hz) f := by
  calc
    _ = inner ℂ (fullShift (-a) (zeroExtension (exponentialVector z hz)))
        (fullShift (-a) (fullShift a (zeroExtension f))) :=
      ((fullShift (-a)).inner_map_map _ _).symm
    _ = inner ℂ (restriction (fullShift (-a) (zeroExtension (exponentialVector z hz)))) f := by
      rw [fullShift_neg_cancel, inner_restriction_zeroExtension]
    _ = _ := by
      rw [restriction_backwardShift_exponential a ha z hz, inner_smul_left]
      rw [← Complex.exp_conj]
      simp only [map_mul, map_neg, Complex.conj_conj, Complex.conj_ofReal]

/-- An admitted Bochner integral gives the exact weak source-operator identity. -/
theorem exponential_inner_sourceOperator (z : ℂ) (hz : 0 < z.re) (f : H) :
    inner ℂ (exponentialVector z hz) (sourceOperator f) =
      actualLaplace z * inner ℂ (exponentialVector z hz) f := by
  rw [sourceOperator_apply]
  have hdual : ∀ u : FullLineConvolutionScratch.FullH,
      inner ℂ (exponentialVector z hz) (restriction u) =
        inner ℂ (zeroExtension (exponentialVector z hz)) u := by
    intro u
    rw [← inner_conj_symm, inner_restriction_zeroExtension, inner_conj_symm]
  rw [hdual, ← integral_inner (weighted_shift_integrable fixedKernel fixedKernel_integrable
    (zeroExtension f))]
  calc
    _ = ∫ a : ℝ, ((fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := by
      apply integral_congr_ae
      filter_upwards [] with a
      rw [inner_smul_right]
      by_cases ha : 0 ≤ a
      · rw [exponential_inner_shift a ha z hz f]
        ring
      · rw [fixedKernel_zero_of_nonpos a (le_of_not_ge ha), Complex.ofReal_zero,
          zero_mul, zero_mul, zero_mul]
    _ = (∫ a : ℝ, (fixedKernel a : ℂ) * Complex.exp (-z * (a : ℂ))) *
        inner ℂ (exponentialVector z hz) f := integral_mul_const _ _
    _ = _ := by
      congr 1
      exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
        (fun t ht ↦ by rw [fixedKernel_zero_of_nonpos t (le_of_not_gt ht),
          Complex.ofReal_zero, zero_mul])).symm

/-- The actual Hilbert adjoint acts on exponential vectors by the conjugated source transform. -/
theorem sourceOperator_adjoint_exponential (z : ℂ) (hz : 0 < z.re) :
    sourceOperator.adjoint (exponentialVector z hz) =
      conj (actualLaplace z) • exponentialVector z hz := by
  apply ext_inner_right ℂ
  intro f
  rw [ContinuousLinearMap.adjoint_inner_left, exponential_inner_sourceOperator,
    inner_smul_left, Complex.conj_conj]

/-- An original right-of-line zeta zero gives an actual adjoint-kernel vector. -/
theorem sourceOperator_adjoint_exponential_zero_of_nontrivial (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    sourceOperator.adjoint (exponentialVector (ρ - 1 / 2) (by
      simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]; linarith)) = 0 := by
  rw [sourceOperator_adjoint_exponential]
  have h : actualLaplace (ρ - 1 / 2) = 0 :=
    actual_laplace_integral_zero_of_nontrivial ρ hρ hρre
  rw [h, map_zero, zero_smul]

/-- Every right-half-plane occurrence gives its own actual adjoint-kernel vector. -/
theorem sourceOperator_adjoint_exponential_zero_occurrence (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) :
    sourceOperator.adjoint (exponentialVector (ZeroObject.shiftedValue o) ho) = 0 := by
  rw [sourceOperator_adjoint_exponential]
  have h : actualLaplace (ZeroObject.shiftedValue o) = 0 :=
    actual_laplace_integral_zero_occurrence o ho
  rw [h, map_zero, zero_smul]

/-- The original zero supplies a nonzero kernel vector with strictly positive reference coefficient. -/
theorem nontrivial_reference_visible_kernel (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := by
  have hz : 0 < (ρ - (1 / 2 : ℂ)).re := by
    simp only [Complex.sub_re, Complex.div_ofNat_re, Complex.one_re]
    linarith
  exact ⟨exponentialVector (ρ - 1 / 2) hz, exponentialVector_ne_zero _ hz,
    sourceOperator_adjoint_exponential_zero_of_nontrivial ρ hρ hρre,
    reference_projection_coefficient_pos _ hz⟩

/-- The occurrence witness retains the exact reference coefficient and every multiplicity slot. -/
theorem occurrence_reference_visible_kernel (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) :
    ∃ u : H, u ≠ 0 ∧ sourceOperator.adjoint u = 0 ∧
      ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 =
        2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ∧
      0 < ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 := by
  exact ⟨exponentialVector (ZeroObject.shiftedValue o) ho, exponentialVector_ne_zero _ ho,
    sourceOperator_adjoint_exponential_zero_occurrence o ho,
    reference_projection_coefficient _ ho, reference_projection_coefficient_pos _ ho⟩

end
end FixedKernelAdjointExponentialScratch

set_option pp.proofs false

#print FixedKernelAdjointExponentialScratch.fullShift_neg_cancel
#print axioms FixedKernelAdjointExponentialScratch.fullShift_neg_cancel

#print FixedKernelAdjointExponentialScratch.zeroExtension_exponential_ae
#print axioms FixedKernelAdjointExponentialScratch.zeroExtension_exponential_ae

#print FixedKernelAdjointExponentialScratch.restriction_backwardShift_exponential
#print axioms FixedKernelAdjointExponentialScratch.restriction_backwardShift_exponential

#print FixedKernelAdjointExponentialScratch.exponential_inner_shift
#print axioms FixedKernelAdjointExponentialScratch.exponential_inner_shift

#print FixedKernelAdjointExponentialScratch.exponential_inner_sourceOperator
#print axioms FixedKernelAdjointExponentialScratch.exponential_inner_sourceOperator

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_of_nontrivial
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_of_nontrivial

#print FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_occurrence
#print axioms FixedKernelAdjointExponentialScratch.sourceOperator_adjoint_exponential_zero_occurrence

#print FixedKernelAdjointExponentialScratch.nontrivial_reference_visible_kernel
#print axioms FixedKernelAdjointExponentialScratch.nontrivial_reference_visible_kernel

#print FixedKernelAdjointExponentialScratch.occurrence_reference_visible_kernel
#print axioms FixedKernelAdjointExponentialScratch.occurrence_reference_visible_kernel
```
