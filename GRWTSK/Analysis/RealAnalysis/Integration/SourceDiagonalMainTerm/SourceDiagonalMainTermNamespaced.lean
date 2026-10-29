-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitBumpIntegral.Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitBumpIntegral.Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec","mathematical_subject":"Analysis.Integration","original_sha256":"730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/diagonal-main/SourceDiagonalMainTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import FormalResearch.RiemannHypothesis.GevreyPolynomial
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# Exact diagonal normalization for the unchanged polynomial source

The zero-frequency Fourier identity gives the full correlation integral from the
literal normalized source integral. Evenness, compact support and the exact
change of variables give its positive-half logarithmic integral. No arithmetic
covariance estimate or free Jacobi identification is used.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitBumpIntegral.Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

open MeasureTheory Set
open scoped FourierTransform Interval
open SourcePairing GevreyPolynomial SourceDiagonalPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization SourcePlancherel

noncomputable section

/-- The immutable interior bump has the exact integral used in the diagonal main term. -/
theorem unitBump_integral :
    (∫ x : ℝ in (-1)..1, unitBump x) = (256 / 315 : ℝ) := by
  have he : unitBump = fun x : ℝ => 1 - 4 * x ^ 2 + 6 * x ^ 4 - 4 * x ^ 6 + x ^ 8 := by
    funext x
    unfold unitBump
    ring
  rw [he]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- This is a full-line integral of the actual zero-extended source, including its endpoints. -/
theorem sourceBump_integral : (∫ x : ℝ, sourceBump x) = (256 / 315 : ℝ) := by
  rw [sourceBump_eq_indicator, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitBump_integral

/-- The compact second derivative contributes no zero-frequency mass. -/
theorem explicitSecondDerivative_integral (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, explicitSecondDerivative A x) = 0 := by
  rw [explicitSecondDerivative, zeroExtension_integral _ (-A) A (by linarith)]
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => firstInterior_hasDerivAt A x)
    ((secondInterior_continuous A).intervalIntegrable (-A) A)
  rw [(firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2] at h
  simpa using h

/-- The amplitude scaling retains exactly the source square-root factor. -/
theorem scaledBump_integral (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, scaledBump A x) = Real.sqrt A * (256 / 315 : ℝ) := by
  simp only [scaledBump, integral_div]
  rw [Measure.integral_comp_div sourceBump A]
  rw [smul_eq_mul, abs_of_pos hA, sourceBump_integral]
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.mpr hA).ne'
  apply (div_eq_iff hs).mpr
  nlinarith [Real.sq_sqrt hA.le]

/-- Zero frequency of the actual pole-annihilated, unit-normalized source. -/
theorem normalizedTest_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A x) =
      -(Real.sqrt A * (256 / 315 : ℝ)) / (4 * Real.sqrt (sourceNormalization A)) := by
  have hp : 0 < A := by linarith
  simp only [normalizedTest, dilationTest]
  rw [integral_div, integral_sub (explicitSecondDerivative_integrable A)
    ((scaledBump_integrable A hp).div_const 4), integral_div,
    explicitSecondDerivative_integral A hp, scaledBump_integral A hp]
  ring

/-- At zero the checked Fourier-correlation identity is exactly the squared source integral. -/
theorem sourceCorrelation_integral_eq_square (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) =
      (∫ x : ℝ, normalizedTest explicitSecondDerivative A x) ^ 2 := by
  have h := fourier_correlation A hA 0
  have hc : 𝓕 (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ)) 0 =
      (((∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) : ℝ) : ℂ) := by
    rw [Real.fourier_real_eq_integral_exp_smul]
    simpa using (integral_ofReal (𝕜 := ℂ) (μ := volume)
      (f := sourceCorrelation explicitSecondDerivative A))
  have hq : 𝓕 (fun t : ℝ => (normalizedTest explicitSecondDerivative A t : ℂ)) 0 =
      (((∫ t : ℝ, normalizedTest explicitSecondDerivative A t) : ℝ) : ℂ) := by
    rw [Real.fourier_real_eq_integral_exp_smul]
    simpa using (integral_ofReal (𝕜 := ℂ) (μ := volume)
      (f := normalizedTest explicitSecondDerivative A))
  rw [hc, hq, Complex.normSq_ofReal, ← pow_two] at h
  exact_mod_cast h

/-- The full correlation mass has a fully evaluated coefficient and the unchanged source normalization. -/
theorem sourceCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) =
      (4096 / 99225 : ℝ) * A / sourceNormalization A := by
  rw [sourceCorrelation_integral_eq_square A hA, normalizedTest_integral A hA]
  have hp : 0 ≤ A := by linarith
  have hz := (source_normalization_pos A hA).le
  rw [div_pow, neg_sq, mul_pow, mul_pow, Real.sq_sqrt hp, Real.sq_sqrt hz]
  ring

/-- Evenness and support evaluate the half-correlation integral without dropping a boundary. -/
theorem diagonalCorrelation_integral_eq_quarter (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..A, diagonalCorrelation A t) =
      (1 / 4 : ℝ) * (∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hi := (sourceCorrelation_contDiff A hp).continuous
  have hs : Function.support C ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro t ht
    have hn : |t| < 2 * A := by
      by_contra hn
      exact ht (sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have heven : (∫ t in -(2 * A)..0, C t) = ∫ t in 0..2 * A, C t := by
    have he : (fun t : ℝ => C (-t)) = C := funext (sourceCorrelation_even A)
    have hn := intervalIntegral.integral_comp_neg C (a := -(2 * A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hi.intervalIntegrable (μ := volume) (-(2 * A)) 0)
    (hi.intervalIntegrable (μ := volume) 0 (2 * A))
  change (∫ t in 0..A, C (2 * t)) = (1 / 4 : ℝ) * ∫ t : ℝ, C t
  rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)]
  simp only [mul_zero, smul_eq_mul]
  change (2 : ℝ)⁻¹ * (∫ t in 0..2 * A, C t) = _
  rw [heven, hfull] at hadd
  linarith

/-- The canonical coefficient retains the exact source normalization `Z_A`. -/
def diagonalMainCoefficient (A : ℝ) : ℝ := 1024 / (99225 * sourceNormalization A)

/-- The literal diagonal integral is the explicitly normalized linear main term. -/
theorem diagonalCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..A, diagonalCorrelation A t) = diagonalMainCoefficient A * A := by
  rw [diagonalCorrelation_integral_eq_quarter A hA, sourceCorrelation_integral A hA]
  unfold diagonalMainCoefficient
  ring

end
end FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
