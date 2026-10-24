# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceDiagonalMainTerm.Variant5e7a064958c86c3505f8dfd097c57cecd0413577fa87e4311d32ac3cf815672a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c59980cdb3cc0a80367906c7f6b1534e2fe6222` · SHA-256 `c5c9126a3182b151779caaf700964f87e56cf42ef0ec74255494fed9b0e20e92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitBumpIntegral.Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitBumpIntegral.Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d","mathematical_subject":"Analysis.Integration","original_sha256":"7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/SourceDiagonalMainTerm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDiagonalPrimeAbel
import FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow
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


namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitBumpIntegral.Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm

open MeasureTheory Set
open scoped FourierTransform Interval
open SourcePairing GevreyPolynomial SourceDiagonalPrimeAbel SourceDiagonalShortWindow
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

/-- The full correlation mass has an evaluated coefficient and the unchanged
source normalization. -/
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

/-- The half-integral statement exposes the literal source kernel and normalization. -/
theorem actual_source_half_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..A, sourceCorrelation explicitSecondDerivative A (2 * t)) =
      1024 / (99225 * sourceNormalization A) * A :=
  diagonalCorrelation_integral A hA

/-- The maintained prime sector has the same explicitly evaluated main term and a fixed error. -/
theorem retainedPrimeDiagonal_main_term_error :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |retainedPrimeDiagonal A + diagonalMainCoefficient A * A -
        Real.log (⌊A ^ 2⌋₊ : ℝ)| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := retainedPrimeDiagonal_integral_error
  refine ⟨C + 80, by positivity, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hi := (diagonalCorrelation_contDiff A hp).continuous
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hi.intervalIntegrable (μ := volume) 0 (Real.log (⌊A ^ 2⌋₊ : ℝ)))
    (hi.intervalIntegrable (μ := volume) (Real.log (⌊A ^ 2⌋₊ : ℝ)) A)
  rw [diagonalCorrelation_integral A hA] at hadd
  have he := hC A hA
  have hl := floor_square_short_integral_error A hA
  calc
    _ = |(retainedPrimeDiagonal A +
          (∫ t in Real.log (⌊A ^ 2⌋₊ : ℝ)..A, diagonalCorrelation A t)) +
        ((∫ t in 0..Real.log (⌊A ^ 2⌋₊ : ℝ), diagonalCorrelation A t) -
          Real.log (⌊A ^ 2⌋₊ : ℝ))| := by congr 1; linarith [hadd]
    _ ≤ _ := abs_add_le _ _
    _ ≤ C + 80 := add_le_add he hl

end
end FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
```
