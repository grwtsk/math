# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerCentralFrequencyNative06.Variant16598a6691b2ea72c349bc600883e406c5ccf21ffafcae5e65cb0146641bff2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea0ab5b5747f26b6804be11e8f541aa24c46717c` · SHA-256 `e03006ec545875132d062fdbe7b65f9f0a99561388d677771ecd4e4e37cfef4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RealBumpMass.Variant3a684adcf5bd270e7696a8356457ad878d1baa9ef330df595e65e864605e6179","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a684adcf5bd270e7696a8356457ad878d1baa9ef330df595e65e864605e6179","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RealBumpMass.Variant3a684adcf5bd270e7696a8356457ad878d1baa9ef330df595e65e864605e6179","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3a684adcf5bd270e7696a8356457ad878d1baa9ef330df595e65e864605e6179","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-euler-central-frequency/SourceActualEulerCentralFrequency-native06.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RealBumpMass.Variant3a684adcf5bd270e7696a8356457ad878d1baa9ef330df595e65e864605e6179

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
open ActualComplexCorrelationAsymptotic ActualCorrelationOppositeHalf
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

private def closedRealMass (A : ℝ) : ℝ :=
  ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊+1),
    if n = 0 then 0 else ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ)

private theorem closedRealMass_nonneg (A : ℝ) : 0 ≤ closedRealMass A := by
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
      (closedRealMass A : ℂ)‖ ≤ closedRealMass A / 50 := by
  have hp : 0 < A := by linarith
  have htA : |t| * A ≤ 1 / 100 := by
    have hh := (le_div_iff₀ (by positivity : 0 < 100 * A)).mp ht
    nlinarith
  unfold actualClosedPrimeDirichletPolynomial closedRealMass
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
    ‖((3 / 2 : ℂ) + (t : ℂ) * I) ^ 2 * (((3 / 2 : ℂ) + (t : ℂ) * I) - 1) ^ 2 - 9 / 16‖ ≤ 1 / 16 := by
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
      _ ≤ ‖(f - 9 / 16) * (b ^ 2 * d)‖+‖(9 / 16 : ℂ) * (b ^ 2 * d - (B ^ 2 * M : ℝ))‖ := norm_add_le _ _
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

end
end FormalResearch.RiemannHypothesis.SourceActualEulerCentralFrequency
```
