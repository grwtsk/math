# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.BridgeNormalization.Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `490649b651808e779f685bc4b7a0a8f28f3a29a2` · SHA-256 `6d881314d416fa277c55a4bc9ffca6006ec38fbd83f3542378ea28d2c09bf84e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitBump.Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitBump.Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7","mathematical_subject":"Analysis.Integration","original_sha256":"790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/BridgeNormalization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Exact normalization of the recovered RH dilation

The B3.1 normalization subclaim is proved directly for the concrete weak
second derivative, by three finite polynomial integrals and exact scaling.
This does not assert Weil admissibility or close the analytic bridge.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitBump.Variant790c4045cf1e6a745981719beb0e9ad8ed6bdc0fdb1ccb12ff44ba1671a558c7

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourcePairing

noncomputable section

/-- The polynomial used by the source bump on its unit interval. -/
def unitBump (x : ℝ) : ℝ := (1 - x ^ 2) ^ 4

/-- The exact second derivative of the unit-interval source polynomial. -/
def unitSecond (x : ℝ) : ℝ := -8 + 72 * x ^ 2 - 120 * x ^ 4 + 56 * x ^ 6

/-- The first source normalization constant is an actual squared-norm integral. -/
theorem unitBump_square_integral :
    (∫ x : ℝ in (-1)..1, unitBump x ^ 2) = (65536 / 109395 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitBump x ^ 2) =
      (fun x ↦ 1 - 8*x^2 + 28*x^4 - 56*x^6 + 70*x^8 - 56*x^10 +
        28*x^12 - 8*x^14 + x^16) := by
    funext x
    dsimp [unitBump]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The second derivative contributes the third exact source constant. -/
theorem unitSecond_square_integral :
    (∫ x : ℝ in (-1)..1, unitSecond x ^ 2) = (196608 / 5005 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitSecond x ^ 2) =
      (fun x ↦ 64 - 1152*x^2 + 7104*x^4 - 18176*x^6 + 22464*x^8 -
        13440*x^10 + 3136*x^12) := by
    funext x
    dsimp [unitSecond]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- The mixed term has the source's negative sign; it is not a norm square. -/
theorem unitSecond_mul_bump_integral :
    (∫ x : ℝ in (-1)..1, unitSecond x * unitBump x) = -(131072 / 45045 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitSecond x * unitBump x) =
      (fun x ↦ -8 + 104*x^2 - 456*x^4 + 1000*x^6 - 1240*x^8 +
        888*x^10 - 344*x^12 + 56*x^14) := by
    funext x
    dsimp [unitSecond, unitBump]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- Squaring the scaled compact polynomial cancels precisely one factor of A. -/
theorem interior_square_scaling (A x : ℝ) (hA : 0 < A) :
    (secondInterior A x - bumpInterior A x / 4) ^ 2 =
      (unitSecond (x / A) / A ^ 2 - unitBump (x / A) / 4) ^ 2 / A := by
  have factor : secondInterior A x - bumpInterior A x / 4 =
      (unitSecond (x / A) / A ^ 2 - unitBump (x / A) / 4) / Real.sqrt A := by
    dsimp [secondInterior, bumpInterior, unitSecond, unitBump]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [factor, div_pow, Real.sq_sqrt hA.le]

/-- The unscaled unit-interval integral gives the exact source normalization. -/
theorem unit_dilation_square_integral (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) =
      sourceNormalization A := by
  have expand : (fun x : ℝ ↦ (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) =
      (fun x ↦ unitSecond x ^ 2 / A ^ 4 -
        (unitSecond x * unitBump x) / (2 * A ^ 2) + unitBump x ^ 2 / 16) := by
    funext x
    ring
  rw [expand]
  simp (disch := (
    apply Continuous.intervalIntegrable
    simp only [unitSecond, unitBump]
    fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub]
  simp only [intervalIntegral.integral_div, unitSecond_square_integral,
    unitSecond_mul_bump_integral, unitBump_square_integral, sourceNormalization]
  ring

/-- The source's prescribed Z_A equals the genuine integral for the explicit weak derivative.
Square integrability is proved independently in `Realization`; no realization is assumed. -/
theorem explicit_normalization (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, dilationTest explicitSecondDerivative A x ^ 2) = sourceNormalization A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hne : A ≠ 0 := ne_of_gt hpos
  have hfun : (fun x ↦ dilationTest explicitSecondDerivative A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ (secondInterior A x - bumpInterior A x / 4) ^ 2) := by
    rw [explicit_dilationTest_eq_indicator A hpos]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [hfun, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [interior_square_scaling A _ hpos]
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitSecond x / A ^ 2 - unitBump x / 4) ^ 2) hne]
  simp only [neg_div, div_self hne, smul_eq_mul, unit_dilation_square_integral]
  exact mul_div_cancel_left₀ _ hne

/-- Normalization preserves actual square integrability; a totalized integral is not used
as a substitute for this analytic premise. -/
theorem normalized_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ normalizedTest explicitSecondDerivative A x ^ 2) volume := by
  simp only [normalizedTest, div_pow]
  exact (explicit_dilationTest_square_integrable A hA).div_const _

/-- The normalized source test has squared norm exactly one. -/
theorem normalized_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, normalizedTest explicitSecondDerivative A x ^ 2) = 1 := by
  have hpos := source_normalization_pos A hA
  simp only [normalizedTest, div_pow, Real.sq_sqrt hpos.le]
  rw [integral_div, explicit_normalization A hA, div_self (ne_of_gt hpos)]

/-- In particular the normalized test is not the zero function. -/
theorem normalized_ne_zero (A : ℝ) (hA : 1 ≤ A) :
    normalizedTest explicitSecondDerivative A ≠ (0 : ℝ → ℝ) := by
  intro hzero
  have hnorm := normalized_square_integral A hA
  rw [hzero] at hnorm
  norm_num at hnorm

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
```
