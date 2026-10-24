# Complete source: GRWTSK.Topology.GeneralTopology.SourceActualEulerCentralFrequencyNative12.Variantf50c467f2d5a8d629592922b092b2d3a27deaebb6eac0f0179de1e13193a13d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5661011680c034ce23a08bc04f78b1636eba9c83` · SHA-256 `a7a2ff9dbc748f8825b6d00162e459b972f3f7cb98bbfe21720822f045e7d180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealBumpMass.Variant36da7e151b49bb495b815e5d203253aefef0435ff73f152951381a9064670658","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36da7e151b49bb495b815e5d203253aefef0435ff73f152951381a9064670658","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealBumpMass.Variant36da7e151b49bb495b815e5d203253aefef0435ff73f152951381a9064670658","mathematical_subject":"Topology.GeneralTopology","original_sha256":"36da7e151b49bb495b815e5d203253aefef0435ff73f152951381a9064670658","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-euler-central-frequency/SourceActualEulerCentralFrequency-native12.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerSupportHead
import SourceActualEulerResidualApproximation
import SourceActualAbsolutePrimeMomentUpper
import ActualComplexCorrelationAsymptotic

/-!
A genuine central - frequency positive sector of the retained actual prime
Dirichlet polynomial. All closed prime powers and the ordinary complex square
remain. The complete complementary frequency range must cancel this sector;
neither a uniform residual cap nor arithmetic divergence is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.RealBumpMass.Variant36da7e151b49bb495b815e5d203253aefef0435ff73f152951381a9064670658

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
open MeasureTheory Set Complex Filter
open scoped BigOperators Topology
open SourcePairing SourceBumpLaplace SourceActualInitialPrimeContour
open SourceActualInitialPrimeLineL1 SourceActualPrimeBumpDictionary
open SourceActualBumpMellinLineBudget SourceActualBumpMovingHeight
open SourceActualRightBumpTail SourceActualEulerSupportHead
open SourceActualEulerResidualApproximation SourceActualAbsolutePrimeMomentUpper
open SourceActualAbsolutePrimeMomentObstruction SourceActualSignedVariationFraction
open ActualComplexCorrelationAsymptotic ActualCorrelationOppositeHalf ActualComplexCorrelationSquare
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

private def realBumpMass (A : ℝ) : ℝ :=
  ∫ x in ( - 1 : ℝ)..1, (1 - x ^ 2) ^ 4 * Real.exp (A * x)

private theorem realBumpMass_nonneg (A : ℝ) : 0 ≤ realBumpMass A := by
  apply intervalIntegral.integral_nonneg (by norm_num)
  intro x _
  exact mul_nonneg ((by positivity : 0 ≤ (1 - x ^ 2) ^ 4)) (Real.exp_pos _).le

private theorem bump_real_eq (A : ℝ) : bumpLaplace (A : ℂ) = (realBumpMass A : ℂ) := by
  unfold bumpLaplace realBumpMass
  rw [← intervalIntegral.integral_ofReal]
  apply intervalIntegral.integral_congr
  intro x _
  push_cast
  rfl

private theorem norm_phase_sub_one (y : ℝ) :
    ‖Complex.exp (I * (y : ℂ)) - 1‖ ≤ |y| := by
  rw [Complex.norm_exp_I_mul_ofReal_sub_one, Real.norm_eq_abs, abs_mul]
  norm_num
  have hh := Real.abs_sin_le_abs (x := y / 2)
  have h := mul_le_mul_of_nonneg_left hh (by norm_num : (0 : ℝ) ≤ 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h
  linarith

private theorem bump_phase_error (A t : ℝ) :
    ‖bumpLaplace ((A : ℂ) + I * (A * t : ℝ))- (realBumpMass A : ℂ)‖ ≤
      |A * t| * realBumpMass A := by
  rw [← bump_real_eq]
  unfold bumpLaplace
  rw [← intervalIntegral.integral_sub
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
    ((by fun_prop : Continuous _).intervalIntegrable _ _)]
  have hh := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) (a := ( - 1 : ℝ)) (b := 1)
    (f := fun x => (((1 - x ^ 2) ^ 4 : ℝ) : ℂ)*
      Complex.exp (((A : ℂ) + I * (A * t : ℝ)) * (x : ℂ)) -
        (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp ((A : ℂ) * (x : ℂ)))
    (g := fun x => |A * t| *((1 - x ^ 2) ^ 4 * Real.exp (A * x))) (by norm_num)
    (Filter.Eventually.of_forall fun x hx => by
      have hx1 : |x| ≤ 1 := abs_le.mpr ⟨hx.1.le, hx.2⟩
      have he : (((A : ℂ) + I * (A * t : ℝ)) * (x : ℂ)) =
          ((A * x : ℝ) : ℂ) + I * (A * t * x : ℝ) := by push_cast; ring
      rw [he, Complex.exp_add]
      have hid : (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) *
          (Complex.exp ((A * x : ℝ) : ℂ) * Complex.exp (I * (A * t * x : ℝ))) -
        (((1 - x ^ 2) ^ 4 : ℝ) : ℂ) * Complex.exp ((A : ℂ) * (x : ℂ)) =
          (((1 - x ^ 2) ^ 4 * Real.exp (A * x) : ℝ) : ℂ)*
            (Complex.exp (I * (A * t * x : ℝ)) - 1) := by
        push_cast
        ring
      rw [hid, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (mul_nonneg ((by positivity : 0 ≤ (1 - x ^ 2) ^ 4)) (Real.exp_pos _).le)]
      calc
        _ ≤ ((1 - x ^ 2) ^ 4 * Real.exp (A * x))*|A * t * x| :=
          mul_le_mul_of_nonneg_left (norm_phase_sub_one _) (by positivity)
        _ ≤ _ := by
          rw [abs_mul]
          have hh := mul_le_mul_of_nonneg_left hx1
            (mul_nonneg (by positivity : 0 ≤ (1 - x ^ 2) ^ 4 * Real.exp (A * x))
              (abs_nonneg (A * t)))
          simpa [mul_assoc, mul_comm, mul_left_comm] using hh)
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
  simpa only [intervalIntegral.integral_const_mul, realBumpMass, mul_comm] using hh

/-- All literal closed Mangoldt coefficients on the real right line, including unit zero. -/
def actualClosedPrimeRightMass (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊+1),
    if n = 0 then 0 else ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ)

private theorem actualClosedPrimeRightMass_nonneg (A : ℝ) : 0 ≤ actualClosedPrimeRightMass A := by
  apply Finset.sum_nonneg
  intro n _
  split_ifs <;> positivity

private theorem term_phase (n : ℕ) (t : ℝ) (hn : n ≠ 0) :
    LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n =
      ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
        Complex.exp (I * ( - t * Real.log n : ℝ)) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
  have hlog : Complex.log (n : ℂ) = ((Real.log n : ℝ) : ℂ) := by
    exact (Complex.ofReal_log hnR.le).symm
  rw [hlog, Real.rpow_def_of_pos hnR, Complex.ofReal_div, Complex.ofReal_exp]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  rw [mul_assoc, ← Complex.exp_add]
  congr 1
  congr 1
  push_cast
  ring

private theorem closed_phase_error {A t : ℝ} (hA : 1 ≤ A)
    (ht : |t| ≤ 1 / (100 * A)) :
    ‖actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I) -
      (actualClosedPrimeRightMass A : ℂ)‖ ≤ actualClosedPrimeRightMass A / 50 := by
  have hp : 0 < A := by linarith
  have htA : |t| * A ≤ 1 / 100 := by
    have hh := (le_div_iff₀ (by positivity : 0 < 100 * A)).mp ht
    nlinarith
  unfold actualClosedPrimeDirichletPolynomial actualClosedPrimeRightMass
  push_cast
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n -
          ((if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
            (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ)‖ := norm_sum_le _ _
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊+1),
        (if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
          (n : ℝ) ^ (3 / 2 : ℝ)) / 50 := by
      apply Finset.sum_le_sum
      intro n hn
      rcases eq_or_ne n 0 with rfl | hn0
      · simp
      have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn0
      have hl0 : 0 ≤ Real.log n := Real.log_nonneg (by
        exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn0)
      have hle : (n : ℝ) ≤ Real.exp (2 * A) :=
        (Nat.le_floor_iff (Real.exp_pos _).le).mp (by
          have hh := Finset.mem_range.mp hn
          omega)
      have hl : Real.log n ≤ 2 * A := (Real.log_le_iff_le_exp hnR).mpr hle
      have hph : |-t * Real.log n| ≤ 1 / 50 := by
        rw [abs_mul, abs_neg, abs_of_nonneg hl0]
        nlinarith
      rw [if_neg hn0, term_phase n t hn0]
      rw [show ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ)*
          Complex.exp (I * ( - t * Real.log n : ℝ)) -
        ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) =
        ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ)*
          (Complex.exp (I * ( - t * Real.log n : ℝ)) - 1) by ring,
        norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
      exact (mul_le_mul_of_nonneg_left ((norm_phase_sub_one _).trans hph)
        (by positivity)).trans_eq (by ring)
    _ = _ := by rw [Finset.sum_div]

private theorem factor_phase_error {t : ℝ} (ht : |t| ≤ 1 / 100) :
    ‖((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
      (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 - 9 / 16‖ ≤ 1 / 16 := by
  have he : ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 - 9 / 16 =
      ((( - (11 / 2) * t ^ 2 + t ^ 4 : ℝ) : ℂ)) + I * (3 * t - 4 * t ^ 3 : ℝ) := by
    apply Complex.ext <;> norm_num [pow_two, pow_succ] <;> ring
  rw [he]
  have h2 : |t|^2 ≤ (1 / 100 : ℝ) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) ht 2
  have h3 : |t|^3 ≤ (1 / 100 : ℝ) ^ 3 := pow_le_pow_left₀ (abs_nonneg _) ht 3
  have h4 : |t|^4 ≤ (1 / 100 : ℝ) ^ 4 := pow_le_pow_left₀ (abs_nonneg _) ht 4
  calc
    _ ≤ |-(11 / 2) * t ^ 2 + t ^ 4| + |3 * t - 4 * t ^ 3| := by
      simpa only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
        Complex.I_im, Complex.ofReal_im, zero_mul, mul_zero, sub_zero, zero_add,
        Complex.add_im, Complex.mul_im, one_mul, add_zero] using Complex.norm_le_abs_re_add_abs_im
        (((( -(11 / 2) * t ^ 2 + t ^ 4 : ℝ) : ℂ)) + I * (3 * t - 4 * t ^ 3 : ℝ))
    _ ≤ (11 / 2)*|t|^2+|t|^4 + 3*|t|+4*|t|^3 := by
      have h := add_le_add (abs_add_le ( - (11 / 2) * t ^ 2) (t ^ 4))
        (abs_sub (3 * t) (4 * t ^ 3))
      simp only [abs_mul, abs_neg, abs_pow] at h
      norm_num at h
      have heq : -(11 / 2) * t ^ 2 + t ^ 4 = -(11 / 2 * t ^ 2) + t ^ 4 := by ring
      rw [heq, sq_abs]
      linarith
    _ ≤ _ := by nlinarith

private theorem product_phase_lower {B M : ℝ} {b d f : ℂ}
    (hB : 0 ≤ B) (hM : 0 ≤ M) (hb : ‖b - (B : ℂ)‖ ≤ B / 100)
    (hd : ‖d - (M : ℂ)‖ ≤ M / 50) (hf : ‖f - 9 / 16‖ ≤ 1 / 16) :
    B ^ 2 * M / 3 ≤ (f * b ^ 2 * d).re := by
  have bn : ‖b‖ ≤ 101 / 100 * B := by
    have h := norm_add_le (b - (B : ℂ)) (B : ℂ)
    rw [sub_add_cancel, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hB] at h
    linarith
  have dn : ‖d‖ ≤ 51 / 50 * M := by
    have h := norm_add_le (d - (M : ℂ)) (M : ℂ)
    rw [sub_add_cancel, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hM] at h
    linarith
  have bsum : ‖b + (B : ℂ)‖ ≤ 201 / 100 * B := by
    exact (norm_add_le _ _).trans (by
      rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hB]
      linarith)
  have b2 : ‖b ^ 2 - (B ^ 2 : ℝ)‖ ≤ B ^ 2 / 40 := by
    rw [show b ^ 2 - (B ^ 2 : ℝ) = (b - (B : ℂ)) * (b + (B : ℂ)) by
      push_cast; ring, norm_mul]
    calc
      _ ≤ (B / 100) * (201 / 100 * B) := mul_le_mul hb bsum (norm_nonneg _) (by positivity)
      _ ≤ _ := by nlinarith
  have prod : ‖b ^ 2 * d - (B ^ 2 * M : ℝ)‖ ≤ B ^ 2 * M / 20 := by
    have he : b ^ 2 * d - (B ^ 2 * M : ℝ) =
        (b ^ 2 - (B ^ 2 : ℝ)) * d + (B ^ 2 : ℝ) * (d - (M : ℂ)) := by
      push_cast
      ring
    rw [he]
    calc
      _ ≤ ‖(b ^ 2 - (B ^ 2 : ℝ)) * d‖ + ‖(B ^ 2 : ℝ) * (d - (M : ℂ))‖ := norm_add_le _ _
      _ ≤ (B ^ 2 / 40) * (51 / 50 * M) + B ^ 2 * (M / 50) := by
        rw [norm_mul, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _)]
        exact add_le_add (mul_le_mul b2 dn (norm_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left hd (sq_nonneg _))
      _ ≤ _ := by nlinarith
  have pn : ‖b ^ 2 * d‖ ≤ 21 / 20 * (B ^ 2 * M) := by
    have h := norm_add_le (b ^ 2 * d - (B ^ 2 * M : ℝ)) (B ^ 2 * M : ℝ)
    rw [sub_add_cancel, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (by positivity : 0 ≤ B ^ 2 * M)] at h
    linarith
  have err : ‖f * b ^ 2 * d - ((9 / 16 * B ^ 2 * M : ℝ) : ℂ)‖ ≤ 3 / 32 * (B ^ 2 * M) := by
    have he : f * b ^ 2 * d - ((9 / 16 * B ^ 2 * M : ℝ) : ℂ) =
        (f - 9 / 16) * (b ^ 2 * d) + (9 / 16 : ℂ) * (b ^ 2 * d - (B ^ 2 * M : ℝ)) := by
      push_cast
      ring
    rw [he]
    calc
      _ ≤ ‖(f - 9 / 16) * (b ^ 2 * d)‖ +
          ‖(9 / 16 : ℂ) * (b ^ 2 * d - (B ^ 2 * M : ℝ))‖ := norm_add_le _ _
      _ ≤ (1 / 16) * (21 / 20 * (B ^ 2 * M)) + (9 / 16) * (B ^ 2 * M / 20) := by
        rw [norm_mul, norm_mul]
        norm_num
        exact add_le_add (mul_le_mul hf (by simpa [norm_mul, norm_pow] using pn)
          (by positivity) (by norm_num))
          (mul_le_mul_of_nonneg_left
            (by simpa only [Complex.ofReal_mul, Complex.ofReal_pow] using prod)
            (by norm_num))
      _ = _ := by ring
  have er := (Complex.abs_re_le_norm _).trans err
  simp only [Complex.sub_re, Complex.ofReal_re] at er
  have en := neg_abs_le ((f * b ^ 2 * d).re - 9 / 16 * B ^ 2 * M)
  nlinarith

/-- The narrow actual frequency radius, with the true real dilation retained. -/
def actualCentralFrequencyRadius (A : ℝ) : ℝ := 1 / (100 * A)

/-- The actual closed polynomial times its original Mellin weight on the right line. -/
def actualClosedFrequencyDensity (A t : ℝ) : ℝ :=
  (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
    actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re

/-- This is a signed integral over the true central frequency range. -/
def actualCentralFrequencyMass (A : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) * ∫ t in -actualCentralFrequencyRadius A..
    actualCentralFrequencyRadius A, actualClosedFrequencyDensity A t

/-- The positive contribution of the literal prime two fixes a genuine constant. -/
def actualCentralFrequencyConstant : ℝ :=
  (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) *
    41472 / (200 * Real.pi)

private theorem real_mellin {A : ℝ} (hA : 1 ≤ A) :
    actualInitialPrimeMellin A (3 / 2) =
      ((A / sourceNormalization A * (9 / 16) * realBumpMass A ^ 2 : ℝ) : ℂ) := by
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
  unfold bumpMellinWeight
  norm_num
  rw [bump_real_eq]
  ring

private theorem real_mellin_nonneg {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ (actualInitialPrimeMellin A (3 / 2)).re := by
  rw [real_mellin hA, Complex.ofReal_re]
  have hz := source_normalization_pos A hA
  positivity

/-- Every central density retains its actual complex phase and has a positive lower bound. -/
theorem actualCentralFrequencyDensity_lower {A t : ℝ} (hA : 1 ≤ A)
    (ht : |t| ≤ actualCentralFrequencyRadius A) :
    (actualInitialPrimeMellin A (3 / 2)).re * actualClosedPrimeRightMass A / 2 ≤
      actualClosedFrequencyDensity A t := by
  have hp : 0 < A := by linarith
  have hz := source_normalization_pos A hA
  have hB := realBumpMass_nonneg A
  have hM := actualClosedPrimeRightMass_nonneg A
  have htA : |A * t| ≤ 1 / 100 := by
    have hh := (le_div_iff₀ (by positivity : 0 < 100 * A)).mp ht
    rw [abs_mul, abs_of_pos hp]
    nlinarith
  have htt : |t| ≤ 1 / 100 := by
    have he : |t| * A ≤ 1 / 100 := by
      simpa only [abs_mul, abs_of_pos hp, mul_comm] using htA
    nlinarith [mul_le_mul_of_nonneg_left hA (abs_nonneg t)]
  have hb := bump_phase_error A t
  have hb' : ‖bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) -
      (realBumpMass A : ℂ)‖ ≤ realBumpMass A / 100 :=
    hb.trans (by nlinarith)
  have hl := product_phase_lower hB hM hb' (closed_phase_error hA ht)
    (factor_phase_error htt)
  have hh := mul_le_mul_of_nonneg_left hl
    (show 0 ≤ A / sourceNormalization A by positivity)
  have harg : (A : ℂ) * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1 / 2) =
      (A : ℂ) + I * (A * t : ℝ) := by push_cast; ring
  unfold actualClosedFrequencyDensity
  rw [real_mellin hA, Complex.ofReal_re,
    actualInitialPrimeMellin_eq_bumpMellinWeight hA ((3 / 2 : ℂ) + (t : ℂ) * I)]
  unfold bumpMellinWeight
  rw [harg]
  have he : (((A / sourceNormalization A : ℝ) : ℂ) *
      ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
      (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
      bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
      actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re =
      A / sourceNormalization A *
        (((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
          (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
          bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
          actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)).re := by
    rw [show ((A / sourceNormalization A : ℝ) : ℂ) *
        ((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
        (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
        bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
        actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I) =
        ((A / sourceNormalization A : ℝ) : ℂ) *
        (((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 *
          (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 *
          bumpLaplace ((A : ℂ) + I * (A * t : ℝ)) ^ 2 *
          actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)) by ring]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      zero_mul, sub_zero]
  rw [he]
  nlinarith [mul_nonneg (show 0 ≤ A / sourceNormalization A by positivity)
    (show 0 ≤ realBumpMass A ^ 2 * actualClosedPrimeRightMass A by positivity)]

private theorem complex_density_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (fun t : ℝ => actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
      actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
  have hB : Continuous bumpLaplace := by
    have he : bumpLaplace = bumpLaplaceMoment 0 := by
      funext z
      exact (bump_laplace_moment_zero z).symm
    rw [he]
    exact bump_laplace_moment_continuous 0
  have hb : Continuous (fun t : ℝ =>
      bumpLaplace ((A : ℂ) * ((3 / 2 : ℂ) + (t : ℂ) * I - 1 / 2))) :=
    hB.comp (by fun_prop)
  have hm : Continuous (fun t : ℝ =>
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
    simp_rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    unfold bumpMellinWeight
    fun_prop
  have hd : Continuous (fun t : ℝ =>
      actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
    unfold actualClosedPrimeDirichletPolynomial
    apply continuous_finsetSum
    intro n _
    rcases eq_or_ne n 0 with rfl | hn
    · simp only [LSeries.term_zero]
      exact continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun _ => ?_)
      · exact Continuous.const_cpow (by fun_prop) (Or.inl (by exact_mod_cast hn))
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  exact hm.mul hd

private theorem density_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (actualClosedFrequencyDensity A) :=
  Complex.continuous_re.comp (complex_density_continuous hA)

private theorem two_mass_pos :
    0 < ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ) := by
  rw [ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two]
  exact div_pos (Real.log_pos (by norm_num)) (by positivity)

private theorem closed_mass_two_lower {A : ℝ} (hA : 1 ≤ A) :
    ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ) ≤
      actualClosedPrimeRightMass A := by
  have he : (2 : ℝ) ≤ Real.exp (2 * A) := by
    have hh := Real.add_one_le_exp (2 * A)
    linarith
  have hn : 2 < ⌊Real.exp (2 * A)⌋₊ + 1 := by
    have hh : 2 ≤ ⌊Real.exp (2 * A)⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos _).le).mpr he
    omega
  have hh := Finset.single_le_sum
    (f := fun n : ℕ => if n = 0 then (0 : ℝ) else
      ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ))
    (fun n _ => by split_ifs <;> positivity) (Finset.mem_range.mpr hn)
  simpa only [Nat.reduceEqDiff, if_false, Nat.cast_ofNat, actualClosedPrimeRightMass] using hh

/-- The fixed central coefficient is strictly positive using the actual prime two. -/
theorem actualCentralFrequencyConstant_pos : 0 < actualCentralFrequencyConstant := by
  unfold actualCentralFrequencyConstant
  exact div_pos (mul_pos two_mass_pos (by norm_num)) (by positivity)

/-- The source central integral has its true length and every closed coefficient retained. -/
theorem actualCentralFrequencyMass_lower {A : ℝ} (hA : 1 ≤ A) :
    (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (actualInitialPrimeMellin A (3 / 2)).re ≤
        actualCentralFrequencyMass A := by
  have hp : 0 < A := by linarith
  have hr : 0 ≤ actualCentralFrequencyRadius A := by
    unfold actualCentralFrequencyRadius
    positivity
  have hh := intervalIntegral.integral_mono_on (μ := volume) (by linarith :
      -actualCentralFrequencyRadius A ≤ actualCentralFrequencyRadius A)
    intervalIntegrable_const ((density_continuous hA).intervalIntegrable _ _)
    (fun t ht => actualCentralFrequencyDensity_lower hA
      (abs_le.mpr ⟨ht.1, ht.2⟩))
  rw [intervalIntegral.integral_const] at hh
  simp only [smul_eq_mul] at hh
  unfold actualCentralFrequencyMass
  have hi := mul_le_mul_of_nonneg_left hh
    (show 0 ≤ 1 / (2 * Real.pi) by positivity)
  dsimp [actualCentralFrequencyRadius] at hi
  have he : (1 / (2 * Real.pi)) *
      ((1 / (100 * A) - -(1 / (100 * A))) *
        ((actualInitialPrimeMellin A (3 / 2)).re * actualClosedPrimeRightMass A / 2)) =
      actualClosedPrimeRightMass A / (200 * Real.pi * A) *
        (actualInitialPrimeMellin A (3 / 2)).re := by ring
  rw [he] at hi
  have hm' : (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (actualInitialPrimeMellin A (3 / 2)).re ≤
      actualClosedPrimeRightMass A / (200 * Real.pi * A) *
        (actualInitialPrimeMellin A (3 / 2)).re := by
    exact mul_le_mul_of_nonneg_right
      (div_le_div_of_nonneg_right (closed_mass_two_lower hA) (by positivity))
      (real_mellin_nonneg hA)
  exact hm'.trans hi

private theorem real_mellin_eventually_lower :
    ∀ᶠ A : ℝ in atTop, 41472 * Real.exp (2 * A) / A ^ 9 ≤
      (actualInitialPrimeMellin A (3 / 2)).re := by
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    (actualBilateralCorrelationTransform_normalized_tendsto (z := 1) (by norm_num))
  have ht' : Tendsto (fun A : ℝ => A ^ 9 * sourceNormalization A * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re) atTop (𝓝 (82944 : ℝ)) := by
    norm_num at ht
    apply ht.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simp only [Function.comp_apply]
    have he : actualBilateralCorrelationTransform A 1 =
        actualInitialPrimeMellin A (3 / 2) := by
      rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
      simpa only [show (3 / 2 : ℂ) - 1 / 2 = 1 by norm_num] using
        (show actualBilateralCorrelationTransform A ((3 / 2 : ℂ) - 1 / 2) =
        bumpMellinWeight A (3 / 2) from
          SourceActualBumpTransform.actualBilateralCorrelationTransform_eq_bump hA (3 / 2))
    rw [he]
    have hs : actualCorrelationAsymptoticScale A 1 =
        ((A ^ 9 * sourceNormalization A * Real.exp (-2 * A) : ℝ) : ℂ) := by
      unfold actualCorrelationAsymptoticScale
      rw [show -2 * (1 : ℂ) * (A : ℂ) = ((-2 * A : ℝ) : ℂ) by push_cast; ring]
      rw [← Complex.ofReal_exp, ← Complex.ofReal_mul]
    rw [hs]
    simp only [Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero]
  have hz := actualSourceNormalization_tendsto.eventually (gt_mem_nhds (by norm_num :
    ((65536 / 109395 : ℝ) / 16) < 1))
  have hm := ht'.eventually (lt_mem_nhds (by norm_num : (41472 : ℝ) < 82944))
  filter_upwards [eventually_ge_atTop (1 : ℝ), hz, hm] with A hA hZ hM
  have hp : 0 < A := by linarith
  have hn := real_mellin_nonneg hA
  have hcomp := mul_le_mul_of_nonneg_right hZ.le
    (show 0 ≤ A ^ 9 * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re by positivity)
  have hM' : 41472 ≤ A ^ 9 * Real.exp (-2 * A) *
      (actualInitialPrimeMellin A (3 / 2)).re := by nlinarith
  have he : Real.exp (-2 * A) * Real.exp (2 * A) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    simp
  apply (div_le_iff₀ (show 0 < A ^ 9 by positivity)).2
  have hh := mul_le_mul_of_nonneg_left hM' (Real.exp_pos (2 * A)).le
  have hc : Real.exp (2 * A) *
      (A ^ 9 * Real.exp (-2 * A) * (actualInitialPrimeMellin A (3 / 2)).re) =
      (actualInitialPrimeMellin A (3 / 2)).re * A ^ 9 := by
    calc
      _ = (actualInitialPrimeMellin A (3 / 2)).re * A ^ 9 *
        (Real.exp (-2 * A) * Real.exp (2 * A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hc] at hh
  simpa only [mul_comm] using hh

/-- A genuine positive central frequency block grows at the squared-transform scale. -/
theorem actualCentralFrequencyMass_eventually_lower :
    ∀ᶠ A : ℝ in atTop, actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10 ≤
      actualCentralFrequencyMass A := by
  filter_upwards [eventually_ge_atTop (1 : ℝ), real_mellin_eventually_lower] with A hA hm
  have hp : 0 < A := by linarith
  calc
    _ = (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (41472 * Real.exp (2 * A) / A ^ 9) := by
        unfold actualCentralFrequencyConstant
        field_simp
    _ ≤ (ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ)) /
      (200 * Real.pi * A) * (actualInitialPrimeMellin A (3 / 2)).re :=
        mul_le_mul_of_nonneg_left hm (by positivity)
    _ ≤ _ := actualCentralFrequencyMass_lower hA

/-- Both complete complementary intervals retain their orientations and finite head endpoints. -/
def actualComplementaryFrequencyMass (A : ℝ) : ℝ :=
  (1 / (2 * Real.pi)) *
    ((∫ t in -actualBumpMovingHeight A (3 / 2)..-actualCentralFrequencyRadius A,
      actualClosedFrequencyDensity A t) +
    ∫ t in actualCentralFrequencyRadius A..actualBumpMovingHeight A (3 / 2),
      actualClosedFrequencyDensity A t)

/-- The true whole retained head is exactly central plus complementary frequency mass. -/
theorem actualClosedPrimeHead_eq_central_add_complement {A : ℝ} (hA : 1 ≤ A) :
    (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re =
      actualCentralFrequencyMass A + actualComplementaryFrequencyMass A := by
  have hc := complex_density_continuous hA
  have hr := density_continuous hA
  have hi := intervalIntegral.integral_add_adjacent_intervals
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2))
      (-actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (-actualCentralFrequencyRadius A) (actualCentralFrequencyRadius A))
  have hj := intervalIntegral.integral_add_adjacent_intervals
    (hr.intervalIntegrable (-actualBumpMovingHeight A (3 / 2)) (actualCentralFrequencyRadius A))
    (hr.intervalIntegrable (actualCentralFrequencyRadius A) (actualBumpMovingHeight A (3 / 2)))
  unfold actualClosedPrimeHead actualCentralFrequencyMass actualComplementaryFrequencyMass
  rw [Complex.mul_re]
  simp only [Complex.div_re, Complex.one_re, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, Complex.ofNat_re, Complex.one_im, Complex.ofNat_im, zero_mul,
    mul_zero, sub_zero, zero_add, add_zero, Complex.div_im, zero_sub]
  rw [← intervalIntegral.intervalIntegral_re (hc.intervalIntegrable _ _)]
  change _ * (∫ t in -actualBumpMovingHeight A (3 / 2)..actualBumpMovingHeight A (3 / 2),
    actualClosedFrequencyDensity A t) = _
  rw [← hj, ← hi]
  ring

private theorem residual_abs_le_mass {A : ℝ} (hA : 1 ≤ A) :
    |mertensResidual A| ≤ actualClosedAbsolutePrimeMoment A := by
  rw [actualMertensResidual_eq_variation_difference hA,
    actualClosedAbsolutePrimeMoment_eq_variation_sum]
  have hP := actualPositivePrimeVariation_nonneg A
  have hN := actualNegativePrimeVariation_nonneg A
  exact abs_le.mpr ⟨by linarith, by linarith⟩

private theorem head_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => A ^ 10 * Real.exp (-2 * A) *
      (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re)
      atTop (𝓝 0) := by
  let E := actualBumpMovingTailConstant (3 / 2) +
    actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)
  have hn1 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
  have hn2 := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1).comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have ht : Tendsto (fun A : ℝ => actualAbsolutePrimeMomentUpperConstant *
      A * Real.exp (-A) + E * A * Real.exp (-2 * A)) atTop (𝓝 0) := by
    have hh := (hn1.const_mul actualAbsolutePrimeMomentUpperConstant).add
      (hn2.const_mul (E / 2))
    simpa only [pow_one, mul_zero, add_zero] using hh.congr
      (fun A => by dsimp; ring)
  apply squeeze_zero_norm' _ ht
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have hK : 0 ≤ actualBumpMovingTailConstant (3 / 2) := by
    unfold actualBumpMovingTailConstant
    have h := actualRightLineMass_nonneg (3 / 2)
    positivity
  have hE : 0 ≤ actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) := by
    unfold actualClosedPrimeHeadErrorConstant
    have h := actualRightLineMass_nonneg (5 / 4)
    positivity
  have he : Real.exp (-2 * (3 / 2 - 5 / 4) * A) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith)
  have herror := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
    (by norm_num) (by norm_num)
  have herr : ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤ E / A ^ 9 :=
    herror.trans (div_le_div_of_nonneg_right (by
      dsimp [E]
      nlinarith [mul_le_mul_of_nonneg_left he hE]) (by positivity))
  have hh : ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 + E / A ^ 9 := by
    calc
      _ ≤ ‖(mertensResidual A : ℂ)‖ +
          ‖(mertensResidual A : ℂ) -
            actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ := by
        have h := norm_sub_le_norm_add_norm (mertensResidual A : ℂ)
          ((mertensResidual A : ℂ) -
            actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2)))
        simpa only [sub_sub_cancel] using h
      _ ≤ _ := add_le_add (by
        rw [Complex.norm_real, Real.norm_eq_abs]
        exact (residual_abs_le_mass hA).trans (actualClosedAbsolutePrimeMoment_le hA)) herr
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (by positivity :
    0 ≤ A ^ 10 * Real.exp (-2 * A))]
  calc
    _ ≤ (A ^ 10 * Real.exp (-2 * A)) *
        ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
      mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm _) (by positivity)
    _ ≤ (A ^ 10 * Real.exp (-2 * A)) *
        (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 + E / A ^ 9) :=
      mul_le_mul_of_nonneg_left hh (by positivity)
    _ = _ := by
      have hx : Real.exp (-2 * A) * Real.exp A = Real.exp (-A) := by
        rw [← Real.exp_add]
        congr 1
        ring
      calc
        _ = actualAbsolutePrimeMomentUpperConstant * A *
            (Real.exp (-2 * A) * Real.exp A) + E * A * Real.exp (-2 * A) := by
          field_simp
          ring
        _ = _ := by rw [hx]

/-- The genuine complete frequency complement must be negative at the central growth scale. -/
theorem actualComplementaryFrequencyMass_eventually_upper :
    ∀ᶠ A : ℝ in atTop, actualComplementaryFrequencyMass A ≤
      -(actualCentralFrequencyConstant / 2) * Real.exp (2 * A) / A ^ 10 := by
  have hh := head_scaled_tendsto_zero.eventually (gt_mem_nhds
    (show (0 : ℝ) < actualCentralFrequencyConstant / 2 by
      exact div_pos actualCentralFrequencyConstant_pos (by norm_num)))
  filter_upwards [eventually_ge_atTop (1 : ℝ), actualCentralFrequencyMass_eventually_lower,
    hh] with A hA hc hh
  have hp : 0 < A := by linarith
  have he : (A ^ 10 * Real.exp (-2 * A)) * (Real.exp (2 * A) / A ^ 10) = 1 := by
    rw [Real.exp_neg]
    field_simp
  have hi := actualClosedPrimeHead_eq_central_add_complement hA
  have hmul := mul_le_mul_of_nonneg_left hc
    (show 0 ≤ A ^ 10 * Real.exp (-2 * A) by positivity)
  have hc' : actualCentralFrequencyConstant ≤ A ^ 10 * Real.exp (-2 * A) *
      actualCentralFrequencyMass A := by
    calc
      _ = (A ^ 10 * Real.exp (-2 * A)) *
          (actualCentralFrequencyConstant * Real.exp (2 * A) / A ^ 10) := by
        calc
          _ = actualCentralFrequencyConstant * 1 := by ring
          _ = _ := by rw [← he]; ring
      _ ≤ _ := hmul
  apply (le_div_iff₀ (show 0 < A ^ 10 by positivity)).2
  have ht : actualComplementaryFrequencyMass A ≤
      -(actualCentralFrequencyConstant / 2) * (Real.exp (2 * A) / A ^ 10) := by
    have hn : A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A ≤
        -(actualCentralFrequencyConstant / 2) := by rw [hi] at hh; nlinarith
    have hs := mul_le_mul_of_nonneg_left hn
      (show 0 ≤ Real.exp (2 * A) / A ^ 10 by positivity)
    have he' : (Real.exp (2 * A) / A ^ 10) *
        (A ^ 10 * Real.exp (-2 * A) * actualComplementaryFrequencyMass A) =
        actualComplementaryFrequencyMass A := by rw [← mul_assoc, mul_comm _ (A ^ 10 *
          Real.exp (-2 * A)), he]; ring
    rw [he'] at hs
    simpa only [mul_comm] using hs
  have hs := mul_le_mul_of_nonneg_right ht (show 0 ≤ A ^ 10 by positivity)
  field_simp at hs
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```
