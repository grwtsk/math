-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceExponentialDifferencePos.Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.SourceExponentialDifferencePos.Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/SourceLaplaceOneAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SourceExponentialDifferencePos.Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d

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

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 1000000
set_option pp.deepTerms true
set_option maxRecDepth 10000
#print SourceLaplaceOneScratch.source_exponential_difference_pos
#print axioms SourceLaplaceOneScratch.source_exponential_difference_pos
#print SourceLaplaceOneScratch.V_one_eq
#print axioms SourceLaplaceOneScratch.V_one_eq
#print SourceLaplaceOneScratch.V_one_re_pos
#print axioms SourceLaplaceOneScratch.V_one_re_pos
#print SourceLaplaceOneScratch.V_one_ne_zero
#print axioms SourceLaplaceOneScratch.V_one_ne_zero
#print SourceLaplaceOneScratch.actualLaplace_one_ne_zero
#print axioms SourceLaplaceOneScratch.actualLaplace_one_ne_zero
#print SourceLaplaceOneScratch.actualLaplace_one_re_pos
#print axioms SourceLaplaceOneScratch.actualLaplace_one_re_pos
#print SourceLaplaceOneScratch.actualLaplace_one_im_eq_zero
#print axioms SourceLaplaceOneScratch.actualLaplace_one_im_eq_zero
