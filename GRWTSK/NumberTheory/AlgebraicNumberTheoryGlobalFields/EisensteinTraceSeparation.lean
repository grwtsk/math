/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic
import Mathlib.Tactic

/-!
# Separation of bounded traces from an Eisenstein value

Local attribution: grwtsk contributors.

The norm estimate requires only a point on the complex unit circle. A finite
root-of-unity relation additionally makes the scaled difference integral. The
result is a leaf of the nonzero integer-product argument, not a construction of
the automorphic trace families to which that argument is applied. See the
adjacent source record for the exact external statement and evidence scope.
-/

namespace GRWTSK.NumberTheory.EisensteinTraceSeparation

/-- The three-term value used in the trace-product argument. -/
noncomputable def eisensteinTrace (q e : ℕ) (z : ℂ) : ℂ :=
  ((q : ℂ) ^ e)⁻¹ * z + 1 + (q : ℂ) ^ e * z⁻¹

/-- Multiplication by the scale removes its reciprocal from the difference. -/
theorem scaled_difference_identity (a z t : ℂ) (ha : a ≠ 0) :
    a * (t - (a⁻¹ * z + 1 + a * z⁻¹)) =
      a * t - z - a - a ^ 2 * z⁻¹ := by
  field_simp
  ring

/-- A unit-circle estimate independent of algebraic integrality. The lower
bound is quantitative, so taking a logarithm never uses the value at zero. -/
theorem scaled_difference_norm_bounds (a z t : ℂ)
    (ha : 7 ≤ ‖a‖) (hz : ‖z‖ = 1) (ht : ‖t‖ ≤ ‖a‖ / 2 + 2) :
    5 / 2 ≤ ‖a * (t - (a⁻¹ * z + 1 + a * z⁻¹))‖ ∧
      ‖a * (t - (a⁻¹ * z + 1 + a * z⁻¹))‖ ≤ 2 * ‖a‖ ^ 2 := by
  have ha0 : a ≠ 0 := by
    intro h
    simp only [h, norm_zero] at ha
    norm_num at ha
  have hi : ‖a‖⁻¹ ≤ 1 / 7 := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 7) ha
  have hnorm : ‖a * z⁻¹‖ = ‖a‖ := by
    simp only [norm_mul, norm_inv, hz, inv_one, mul_one]
  have hsum :
      a * z⁻¹ = (t - (a⁻¹ * z + 1 + a * z⁻¹)) * (-1) + t - (a⁻¹ * z + 1) := by
    ring
  have hsmall : ‖a⁻¹ * z + 1‖ ≤ ‖a‖⁻¹ + 1 := by
    calc
      _ ≤ ‖a⁻¹ * z‖ + ‖(1 : ℂ)‖ := norm_add_le _ _
      _ = _ := by simp only [norm_mul, norm_inv, hz, mul_one, norm_one]
  have hreverse : ‖a‖ ≤ ‖t - (a⁻¹ * z + 1 + a * z⁻¹)‖ + ‖t‖ + ‖a‖⁻¹ + 1 := by
    calc
      ‖a‖ = ‖(t - (a⁻¹ * z + 1 + a * z⁻¹)) * (-1) + t - (a⁻¹ * z + 1)‖ := by
        rw [← hsum, hnorm]
      _ ≤ ‖(t - (a⁻¹ * z + 1 + a * z⁻¹)) * (-1) + t‖ + ‖a⁻¹ * z + 1‖ := norm_sub_le _ _
      _ ≤ (‖t - (a⁻¹ * z + 1 + a * z⁻¹)‖ + ‖t‖) + (‖a‖⁻¹ + 1) := by
        gcongr
        simpa only [norm_mul, norm_neg, norm_one, mul_one] using
          norm_add_le ((t - (a⁻¹ * z + 1 + a * z⁻¹)) * (-1)) t
      _ = _ := by ring
  have hlower : 5 / 14 ≤ ‖t - (a⁻¹ * z + 1 + a * z⁻¹)‖ := by linarith
  constructor
  · rw [norm_mul]
    nlinarith [mul_le_mul_of_nonneg_left hlower (norm_nonneg a)]
  · rw [scaled_difference_identity a z t ha0]
    have hupper : ‖a * t - z - a - a ^ 2 * z⁻¹‖ ≤
        ‖a‖ * ‖t‖ + 1 + ‖a‖ + ‖a‖ ^ 2 := by
      calc
        _ ≤ ‖a * t - z - a‖ + ‖a ^ 2 * z⁻¹‖ := norm_sub_le _ _
        _ ≤ (‖a * t - z‖ + ‖a‖) + ‖a ^ 2 * z⁻¹‖ := by
          gcongr
          exact norm_sub_le _ _
        _ ≤ ((‖a * t‖ + ‖z‖) + ‖a‖) + ‖a ^ 2 * z⁻¹‖ := by
          gcongr
          exact norm_sub_le _ _
        _ = _ := by simp only [norm_mul, norm_pow, norm_inv, hz, inv_one, mul_one]
    have hmul := mul_le_mul_of_nonneg_left ht (norm_nonneg a)
    have hgap : 0 ≤ (‖a‖ - 7) * (‖a‖ + 1) := by positivity
    nlinarith

/-- The hypotheses on the natural prime-power parameters imply the elementary
scale bound required by `scaled_difference_norm_bounds`. Primality is unused. -/
theorem eisenstein_scaled_difference_norm_bounds (q e : ℕ) (hq : 7 ≤ q) (he : 1 ≤ e)
    (z t : ℂ) (hz : ‖z‖ = 1) (ht : ‖t‖ ≤ Real.sqrt q + 2) :
    5 / 2 ≤ ‖(q : ℂ) ^ e * (t - eisensteinTrace q e z)‖ ∧
      ‖(q : ℂ) ^ e * (t - eisensteinTrace q e z)‖ ≤ 2 * ((q : ℝ) ^ e) ^ 2 := by
  have hqr : (7 : ℝ) ≤ q := by exact_mod_cast hq
  have hqp : (q : ℝ) ≤ (q : ℝ) ^ e := le_self_pow₀ (by linarith) (by omega)
  have hsqrt : Real.sqrt (q : ℝ) ≤ (q : ℝ) / 2 := by
    apply (Real.sqrt_le_iff).2
    constructor
    · positivity
    · nlinarith [mul_nonneg (show (0 : ℝ) ≤ q by positivity) (show (0 : ℝ) ≤ q - 4 by linarith)]
  have hn : ‖(q : ℂ) ^ e‖ = (q : ℝ) ^ e := by simp [norm_pow]
  simpa only [hn, eisensteinTrace] using scaled_difference_norm_bounds ((q : ℂ) ^ e) z t
    (by rw [hn]; linarith) hz (by rw [hn]; linarith)

/-- Analytic separation and its logarithmic budget only need `‖z‖ = 1`. -/
theorem eisenstein_trace_difference_log_bound_of_norm_one (q e : ℕ)
    (hq : 7 ≤ q) (he : 1 ≤ e) (z t : ℂ)
    (hz : ‖z‖ = 1) (ht : ‖t‖ ≤ Real.sqrt q + 2) :
    t ≠ eisensteinTrace q e z ∧
      Real.log ‖(q : ℂ) ^ e * (t - eisensteinTrace q e z)‖ ≤
        2 * e * Real.log q + 1 := by
  obtain ⟨hl, hu⟩ := eisenstein_scaled_difference_norm_bounds q e hq he z t hz ht
  have hnpos : 0 < ‖(q : ℂ) ^ e * (t - eisensteinTrace q e z)‖ := by linarith
  have hqpos : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  constructor
  · intro h
    simp only [h, sub_self, mul_zero, norm_zero] at hnpos
    exact lt_irrefl 0 hnpos
  · calc
      _ ≤ Real.log (2 * ((q : ℝ) ^ e) ^ 2) := Real.log_le_log hnpos hu
      _ = Real.log 2 + 2 * (e : ℝ) * Real.log q := by
        rw [Real.log_mul (by norm_num) (by positivity), Real.log_pow, Real.log_pow]
        push_cast
        ring
      _ ≤ _ := by linarith [Real.log_le_sub_one_of_pos (show (0 : ℝ) < 2 by norm_num)]

/-- A positive root-of-unity order supplies integrality of both `z` and `z⁻¹`.
No trace-size hypothesis is needed for this algebraic step. -/
theorem scaled_difference_isIntegral (q e k : ℕ) (hq : q ≠ 0) (hk : 0 < k)
    (z t : ℂ) (hz : z ^ k = 1) (ht : IsIntegral ℤ ((q : ℂ) ^ e * t)) :
    IsIntegral ℤ ((q : ℂ) ^ e * (t - eisensteinTrace q e z)) := by
  have hzint : IsIntegral ℤ z := IsIntegral.of_pow hk (by simpa [hz] using (isIntegral_one : IsIntegral ℤ (1 : ℂ)))
  have hzinv : IsIntegral ℤ z⁻¹ := by
    apply IsIntegral.of_pow hk
    rw [inv_pow, hz, inv_one]
    exact isIntegral_one
  have hqint : IsIntegral ℤ (q : ℂ) := by
    simpa using (isIntegral_algebraMap (R := ℤ) (A := ℂ) (x := (q : ℤ)))
  have hqpow : (q : ℂ) ^ e ≠ 0 := pow_ne_zero e (by exact_mod_cast hq)
  rw [eisensteinTrace, scaled_difference_identity _ _ _ hqpow]
  exact ((ht.sub hzint).sub (hqint.pow e)).sub (((hqint.pow e).pow 2).mul hzinv)

/-- Exact local counterpart of the submitted trace-separation leaf, retaining
all three conclusions and all numerical and integrality hypotheses. -/
theorem eisenstein_trace_difference_log_bound (q e k : ℕ)
    (hq : 7 ≤ q) (he : 1 ≤ e) (hk : 0 < k) (z t : ℂ)
    (hz : z ^ k = 1) (ht : ‖t‖ ≤ Real.sqrt q + 2)
    (hti : IsIntegral ℤ ((q : ℂ) ^ e * t)) :
    t ≠ eisensteinTrace q e z ∧
      IsIntegral ℤ ((q : ℂ) ^ e * (t - eisensteinTrace q e z)) ∧
        Real.log ‖(q : ℂ) ^ e * (t - eisensteinTrace q e z)‖ ≤
          2 * e * Real.log q + 1 := by
  have hzunit := Complex.norm_eq_one_of_pow_eq_one hz (Nat.ne_of_gt hk)
  obtain ⟨hne, hlog⟩ := eisenstein_trace_difference_log_bound_of_norm_one q e hq he z t hzunit ht
  exact ⟨hne, scaled_difference_isIntegral q e k (by omega) hk z t hz hti, hlog⟩

end GRWTSK.NumberTheory.EisensteinTraceSeparation
