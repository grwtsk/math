-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExponentialDifferencePos.Variant707abb15ec12648779fd21fc49e113e0b835d2d50889af24a5a22c451bcf70e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"707abb15ec12648779fd21fc49e113e0b835d2d50889af24a5a22c451bcf70e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceExponentialDifferencePos.Variant707abb15ec12648779fd21fc49e113e0b835d2d50889af24a5a22c451bcf70e7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"707abb15ec12648779fd21fc49e113e0b835d2d50889af24a5a22c451bcf70e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/SourceScalarProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExponentialDifferencePos.Variant707abb15ec12648779fd21fc49e113e0b835d2d50889af24a5a22c451bcf70e7

set_option autoImplicit false
namespace SourceLaplaceOneScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedKernelLaplace FixedLaplaceContinuation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSideTargets
noncomputable section

theorem source_exponential_difference_pos :
    0 < 36 * Real.exp 1 - 266 * Real.exp (-1) := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 12
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (266 : ℝ) < 36 * Real.exp 2 := by linarith
  have hp : 0 < Real.exp (-1 : ℝ) := Real.exp_pos _
  have hx : Real.exp (1 : ℝ) = Real.exp 2 * Real.exp (-1) := by
    rw [← Real.exp_add]
    norm_num
  rw [hx]
  nlinarith [mul_pos (sub_pos.mpr he') hp]

theorem V_one_eq :
    V 1 = ((288 * (36 * Real.exp 1 - 266 * Real.exp (-1)) /
      Real.sqrt (45056 / 1105 : ℝ) : ℝ) : ℂ) := by
  rw [V_eq_removedFilter 1 (by norm_num)]
  norm_num [removedFilter, transformPolynomial, Complex.ofReal_div,
    Complex.ofReal_mul, Complex.ofReal_sub, Complex.ofReal_exp]
  ring

theorem V_one_re_pos : 0 < (V 1).re := by
  rw [V_one_eq]
  simp only [Complex.ofReal_re]
  exact div_pos (mul_pos (by norm_num) source_exponential_difference_pos)
    (Real.sqrt_pos.mpr (by norm_num))

theorem V_one_ne_zero : V 1 ≠ 0 := by
  intro h
  have hp := V_one_re_pos
  rw [h] at hp
  norm_num at hp

theorem actualLaplace_one_ne_zero : actualLaplace 1 ≠ 0 := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num)]
  exact mul_ne_zero (mul_ne_zero (Complex.exp_ne_zero _)
    (riemannZeta_ne_zero_of_one_le_re (by norm_num))) V_one_ne_zero

theorem actualLaplace_one_re_pos : 0 < (actualLaplace 1).re := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num), V_one_eq]
  have he : Complex.exp (-1) = (Real.exp (-1) : ℂ) := by
    simp
  rw [he]
  have hz : 0 < (riemannZeta (1 / 2 + 1 : ℂ)).re := by
    convert riemannZeta_re_pos_of_one_lt (by norm_num : (1 : ℝ) < 3 / 2) using 1
    norm_num
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, mul_zero]
  exact mul_pos (mul_pos (Real.exp_pos _) hz)
    (div_pos (mul_pos (by norm_num) source_exponential_difference_pos)
      (Real.sqrt_pos.mpr (by norm_num)))

theorem actualLaplace_one_im_eq_zero : (actualLaplace 1).im = 0 := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num), V_one_eq]
  have he : Complex.exp (-1) = (Real.exp (-1) : ℂ) := by
    simp
  rw [he]
  have hz : (riemannZeta (1 / 2 + 1 : ℂ)).im = 0 := by
    convert riemannZeta_im_eq_zero_of_one_lt (by norm_num : (1 : ℝ) < 3 / 2) using 1
    norm_num
  simp only [Complex.mul_im, Complex.ofReal_im, Complex.ofReal_re, hz,
    zero_mul, mul_zero, add_zero]

end
end SourceLaplaceOneScratch

set_option autoImplicit false
namespace SourceScalarControllerScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open FixedLaplaceContinuation SourceResolventTruncation TimeKernelTruncation
open SourceControllerEnergy SourceLaplaceOneScratch
noncomputable section

/-- The real value of the actual complete source Laplace integral at one. -/
def kappa : ℝ := (actualLaplace 1).re

theorem kappa_pos : 0 < kappa := actualLaplace_one_re_pos

theorem reference_source_inner_re :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := by
  have h := exponential_inner_sourceOperator 1 (by norm_num) referenceVector
  change inner ℂ referenceVector (sourceOperator referenceVector) =
    actualLaplace 1 * inner ℂ referenceVector referenceVector at h
  have hr : inner ℂ referenceVector referenceVector = (1 / 2 : ℂ) := by
    rw [inner_self_eq_norm_sq_to_K]
    have hh := congrArg Complex.ofReal referenceVector_norm_sq
    set_option pp.all true in
      trace_state
    simpa only [Complex.ofReal_pow, Complex.ofReal_div, Complex.ofReal_one,
      Complex.ofReal_ofNat] using hh
  rw [hr] at h
  rw [h]
  simp [Complex.mul_re, kappa, div_eq_mul_inv]

theorem source_reference_norm_sq_le :
    ‖sourceOperator referenceVector‖ ^ 2 ≤ kernelMass ^ 2 / 2 := by
  have h := pow_le_pow_left₀ (norm_nonneg (sourceOperator referenceVector))
    (sourceOperator_apply_norm_le referenceVector) 2
  change ‖sourceOperator referenceVector‖ ^ 2 ≤
    (kernelMass * ‖referenceVector‖) ^ 2 at h
  simpa [mul_pow, referenceVector_norm_sq, div_eq_mul_inv] using h

theorem scaled_reference_full_energy (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := by
  rw [map_smul, norm_sub_sq (𝕜 := ℂ), referenceVector_norm_sq,
    inner_smul_right]
  set_option pp.all true in
    trace_state
  simp only [← RCLike.re_to_complex, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  rw [reference_source_inner_re]
  simp only [norm_smul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs,
    referenceVector_norm_sq]
  ring

/-- A single genuine reference controller, with the complete source operator. -/
def scalarController (α : ℝ) : H :=
  ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector

theorem scalarController_full_energy_le (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator (scalarController α)‖ ^ 2 +
      α * ‖scalarController α‖ ^ 2 ≤
      1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := by
  have hd : 0 < kernelMass ^ 2 + α := add_pos_of_nonneg_of_pos (sq_nonneg _) hα
  rw [scalarController, scaled_reference_full_energy]
  calc
    _ ≤ 1 / 2 - kappa / (kernelMass ^ 2 + α) * kappa +
        (kappa / (kernelMass ^ 2 + α)) ^ 2 * (kernelMass ^ 2 / 2 + α / 2) := by
      gcongr
      exact source_reference_norm_sq_le
    _ = _ := by
      field_simp
      ring

theorem sourceMass_le_scalar_improvement (α : ℝ) (hα : 0 < α) :
    sourceMass α ≤ 1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
  (sourceMass_le_full_energy α hα (scalarController α)).trans
    (scalarController_full_energy_le α hα)

theorem sourceMass_lt_reference_norm_sq (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := by
  have hd : 0 < 2 * (kernelMass ^ 2 + α) :=
    mul_pos (by norm_num) (add_pos_of_nonneg_of_pos (sq_nonneg _) hα)
  have hp : 0 < kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
    div_pos (sq_pos_of_pos kappa_pos) hd
  linarith [sourceMass_le_scalar_improvement α hα]

end
end SourceScalarControllerScratch
