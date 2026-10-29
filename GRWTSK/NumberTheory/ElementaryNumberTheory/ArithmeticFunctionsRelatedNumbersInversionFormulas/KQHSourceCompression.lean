-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SecondMode.Variant1406a3caab384a26ae8a843dacca1eb88342daf977747ac66a8c95fc600e9bf7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1406a3caab384a26ae8a843dacca1eb88342daf977747ac66a8c95fc600e9bf7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SecondMode.Variant1406a3caab384a26ae8a843dacca1eb88342daf977747ac66a8c95fc600e9bf7","mathematical_subject":"Analysis.Integration","original_sha256":"1406a3caab384a26ae8a843dacca1eb88342daf977747ac66a8c95fc600e9bf7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/KQHSourceCompression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.KQHArithmeticNativeCoordinates
import FormalResearch.RiemannHypothesis.KQHArithmeticCompression
import FormalResearch.RiemannHypothesis.KQHSourceBootstrap

/-!
# Exact finite two-profile readout of the native signed source

The second mode is the actual zero-extended weak derivative times A squared.
The compression keeps every prime power and the closed touching cutoff. This
unexpanded finite quadratic form does not assume the T0/T2/T4 profile adapter.
grwtsk contributors supplied the direction; OpenAI Codex supplied this adapter.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SecondMode.Variant1406a3caab384a26ae8a843dacca1eb88342daf977747ac66a8c95fc600e9bf7

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHSourceCompression

open MeasureTheory SourcePairing KQHArithmeticNativeCoordinates
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateCorrelation EstimatePrimeSmoothDefect
open EstimateMertensResidual
open SourceKapitzaReconstruction
open SourceBumpAutocorrelation SourceMangoldtAbel KQHArithmeticCompression
open BridgeNormalization

def secondMode (A x : ℝ) : ℝ := A ^ 2 * explicitSecondDerivative A x

def profile (A u v x : ℝ) : ℝ := u * scaledBump A x + v * secondMode A x

/-- An actual finite form, retaining the complete signed pairing before expansion. -/
def compression (A u v : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log n / 2) *
      ∫ x : ℝ, profile A u v x * profile A u v (x - Real.log n)

theorem source_profile (A x : ℝ) (hA : A ≠ 0) :
    profile A (-1 / 4) (1 / A ^ 2) x = dilationTest explicitSecondDerivative A x := by
  unfold profile secondMode dilationTest
  field_simp [hA]
  ring

/-- The exact zero-extended polynomial identifies the second mode as A^-1/2 b''. -/
theorem secondMode_polynomial (A x : ℝ) (hA : 0 < A) :
    secondMode A x = if x ∈ Set.Icc (-A) A then
      (-8 + 72 * (x / A) ^ 2 - 120 * (x / A) ^ 4 + 56 * (x / A) ^ 6) /
        Real.sqrt A else 0 := by
  have hA0 := ne_of_gt hA
  have hS := ne_of_gt (Real.sqrt_pos.mpr hA)
  by_cases hx : x ∈ Set.Icc (-A) A
  · simp only [secondMode, explicitSecondDerivative, Set.indicator_of_mem hx,
      if_pos hx, secondInterior]
    field_simp [hA0, hS]
  · simp [secondMode, explicitSecondDerivative, hx]

theorem profile_eq_indicator (A u v : ℝ) (hA : 0 < A) :
    profile A u v = (Set.Icc (-A) A).indicator (fun x : ℝ =>
      (u * unitBump (x / A) + v * unitSecond (x / A)) / Real.sqrt A) := by
  funext x
  unfold profile
  rw [scaledBump_eq_indicator A hA, secondMode_polynomial A x hA]
  simp only [Set.indicator_apply]
  split_ifs <;> simp [bumpInterior, unitBump, unitSecond]
  ring

theorem unit_profile_square_integral (u v : ℝ) :
    (∫ x : ℝ in (-1)..1, (u * unitBump x + v * unitSecond x) ^ 2) =
      gramForm u v := by
  have he : (fun x : ℝ => (u * unitBump x + v * unitSecond x) ^ 2) =
      (fun x : ℝ => u ^ 2 * unitBump x ^ 2 +
        (2 * u * v) * (unitSecond x * unitBump x) + v ^ 2 * unitSecond x ^ 2) := by
    funext x
    ring
  rw [he]
  simp (disch := (
    apply Continuous.intervalIntegrable
    simp only [unitBump, unitSecond]
    fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_const_mul]
  rw [unitBump_square_integral, unitSecond_mul_bump_integral, unitSecond_square_integral]
  unfold gramForm
  ring

theorem profile_square_integrable (A u v : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x : ℝ => profile A u v x ^ 2) volume := by
  have hp : 0 < A := by linarith
  have he : (fun x : ℝ => profile A u v x ^ 2) =
      (Set.Icc (-A) A).indicator (fun x : ℝ =>
        ((u * unitBump (x / A) + v * unitSecond (x / A)) / Real.sqrt A) ^ 2) := by
    rw [profile_eq_indicator A u v hp]
    funext x
    simp only [Set.indicator_apply]
    split_ifs <;> simp
  rw [he]
  apply integrable_zeroExtension
  simp only [unitBump, unitSecond]
  fun_prop

/-- The matrix G is now the actual Gram form of the two native profiles. -/
theorem profile_square_integral (A u v : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, profile A u v x ^ 2) = gramForm u v := by
  have hp : 0 < A := by linarith
  have hn := ne_of_gt hp
  have he : (fun x : ℝ => profile A u v x ^ 2) =
      (Set.Icc (-A) A).indicator (fun x : ℝ =>
        (u * unitBump (x / A) + v * unitSecond (x / A)) ^ 2 / A) := by
    rw [profile_eq_indicator A u v hp]
    funext x
    simp only [Set.indicator_apply]
    split_ifs <;> simp [div_pow, Real.sq_sqrt hp.le]
  rw [he, zeroExtension_integral _ (-A) A (by linarith)]
  rw [intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x : ℝ => (u * unitBump x + v * unitSecond x) ^ 2) hn]
  simp only [neg_div, div_self hn, smul_eq_mul, unit_profile_square_integral]
  exact mul_div_cancel_left₀ _ hn

/-- The new unconditional arithmetic result applies to the actual zeroth
profile compression, including the closed touching endpoint. -/
theorem compression_zero_mode (A : ℝ) (hA : 1 ≤ A) :
    compression A 1 0 = bumpCompression00 A := by
  unfold compression bumpCompression00
  apply Finset.sum_congr rfl
  intro n hn
  have hb := mangoldtInventory_log_bounds (2 * A) n hn
  have hp : 0 < A := by linarith
  simp only [profile, one_mul, zero_mul, add_zero]
  rw [scaledBump_autocorrelation_eq_profile hp hb.1 hb.2]

theorem compression_zero_mode_lower (A : ℝ) (hA : 1 ≤ A) :
    Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 ≤ compression A 1 0 := by
  rw [compression_zero_mode A hA]
  exact bumpCompression00_lower A (by linarith)

theorem correlation_eq_source_profile (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t =
      (∫ x : ℝ, profile A (-1 / 4) (1 / A ^ 2) x *
        profile A (-1 / 4) (1 / A ^ 2) (x - t)) / sourceNormalization A := by
  have hA0 : A ≠ 0 := by linarith
  have hZ := source_normalization_pos A hA
  have he : (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) =
      (fun x : ℝ => (profile A (-1 / 4) (1 / A ^ 2) x *
        profile A (-1 / 4) (1 / A ^ 2) (x - t)) / sourceNormalization A) := by
    funext x
    rw [source_profile A x hA0, source_profile A (x - t) hA0]
    unfold normalizedTest
    rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hZ.le]
  rw [sourceCorrelation, he, integral_div]

/-- Native closed/strict cutoff adapters are reused through the literal residual. -/
theorem residual_eq_compression (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = compression A (-1 / 4) (1 / A ^ 2) / sourceNormalization A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment compression exponentialTest
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro n _
  rw [correlation_eq_source_profile A (Real.log n) hA]
  ring

/-- The rank-one certificate is now consumed by the actual source, with no
supplied readout equality. A uniform B and an all-real certificate remain open. -/
theorem residual_le_of_native_rank_certificate (A B k : ℝ) (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - compression A x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2) : mertensResidual A ≤ B := by
  exact native_residual_le_of_rank_certificate A B k (compression A) hA hcert
    (residual_eq_compression A hA)

/-- Describing a residual certificate as a nonaffine certificate pays the exact
delta and the genuine trend provider. -/
theorem nonaffine_le_of_native_rank_certificate (A B k ε : ℝ) (hA : 1 ≤ A)
    (hcert : ∀ x y : ℝ, 0 ≤ B * gramForm x y - compression A x y +
      k * ((1 / A ^ 2) * x + y / 4) ^ 2)
    (htrend : |trendValue A| ≤ ε) :
    nonaffineWork A ≤ B + 1 - continuousDefect A + ε := by
  have hr := residual_le_of_native_rank_certificate A B k hA hcert
  have he := mertensResidual_eq_defect_trend_nonaffine A hA
  have ht := (abs_le.mp htrend).1
  linarith

/-- A genuine uniform B on the actual finite forms returns directly to #16,
with the original finite prefix and a radius-dependent penalty allowed. -/
theorem original_lower_of_native_rank_certificates (R B : ℝ) (k : ℝ → ℝ)
    (hR : 1 ≤ R)
    (hcert : ∀ A : ℝ, R ≤ A → ∀ x y : ℝ,
      0 ≤ B * gramForm x y - compression A x y +
        k A * ((1 / A ^ 2) * x + y / 4) ^ 2) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R) (archimedeanMultiplier 0 - 2 * B) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := residual_le_of_native_rank_certificate A B (k A)
      (hR.trans hRA) (hcert A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

theorem estimate_of_native_rank_certificates (R B : ℝ) (k : ℝ → ℝ) (hR : 1 ≤ R)
    (hcert : ∀ A : ℝ, R ≤ A → ∀ x y : ℝ,
      0 ≤ B * gramForm x y - compression A x y +
        k A * ((1 / A ^ 2) * x + y / 4) ^ 2) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_native_rank_certificates R B k hR hcert⟩

end FormalResearch.RiemannHypothesis.KQHSourceCompression
