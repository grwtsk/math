/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact finite-band return from a Schoenfeld-scale estimate

This original quantitative reduction uses the actual Mathlib `Chebyshev.theta`.
The Schoenfeld estimate remains an explicit hypothesis. No RH theorem or
external formalization is imported. The final conclusion is the unfolded
`ChebyshevBand.BandBound` from the existing repository module; this standalone
source avoids rebuilding its unrelated large finite anchor.
-/

namespace GRWTSK.NumberTheory.ChebyshevBandSchoenfeld

private theorem scale_mono {n m : ℕ} (hn : 1 ≤ n) (hnm : n ≤ m) :
    Real.sqrt n * (Real.log n) ^ 2 ≤ Real.sqrt m * (Real.log m) ^ 2 := by
  have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hnm' : (n : ℝ) ≤ m := by exact_mod_cast hnm
  apply mul_le_mul (Real.sqrt_le_sqrt hnm')
    (pow_le_pow_left₀ (Real.log_nonneg hn')
      (Real.log_le_log (by linarith) hnm') 2)
    (sq_nonneg _) (Real.sqrt_nonneg _)

private theorem scale_four_pow (j : ℕ) :
    Real.sqrt (((4 : ℕ) ^ j : ℕ) : ℝ) *
        (Real.log (((4 : ℕ) ^ j : ℕ) : ℝ)) ^ 2 =
      (2 : ℝ) ^ j * ((j : ℝ) * Real.log 4) ^ 2 := by
  simp only [Nat.cast_pow, Nat.cast_ofNat, Real.log_pow]
  have hsqrt : Real.sqrt ((4 : ℝ) ^ j) = (2 : ℝ) ^ j := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, pow_right_comm,
      Real.sqrt_sq (by positivity)]
  rw [hsqrt]

/-- The complete upper endpoint cost on every power-of-four band above
`4^7`; the ratio is largest for the first eligible band. -/
theorem scale_ratio (j n : ℕ) (hj : 7 ≤ j)
    (hlo : (4 : ℕ) ^ j ≤ n) (hhi : n ≤ 4 ^ (j + 1)) :
    Real.sqrt n * (Real.log n) ^ 2 ≤ (128 / 49 : ℝ) *
      (Real.sqrt (((4 : ℕ) ^ j : ℕ) : ℝ) *
        (Real.log (((4 : ℕ) ^ j : ℕ) : ℝ)) ^ 2) := by
  have hn : 1 ≤ n := (Nat.one_le_pow j 4 (by decide)).trans hlo
  calc
    _ ≤ Real.sqrt (((4 : ℕ) ^ (j + 1) : ℕ) : ℝ) *
        (Real.log (((4 : ℕ) ^ (j + 1) : ℕ) : ℝ)) ^ 2 := scale_mono hn hhi
    _ ≤ _ := by
      rw [scale_four_pow, scale_four_pow, pow_succ, Nat.cast_add, Nat.cast_one]
      have hjr : (7 : ℝ) ≤ j := by exact_mod_cast hj
      have hlin : (j : ℝ) + 1 ≤ (8 / 7 : ℝ) * j := by linarith
      have hsq := pow_le_pow_left₀ (by positivity : (0 : ℝ) ≤ j + 1) hlin 2
      have hlog : 0 ≤ (Real.log (4 : ℝ)) ^ 2 := sq_nonneg _
      have hprod := mul_le_mul_of_nonneg_right hsq hlog
      have hlast := mul_le_mul_of_nonneg_left hprod
        (by positivity : 0 ≤ 2 * (2 : ℝ) ^ j)
      convert hlast using 1 <;> ring

/-- The full two-endpoint constant fits strictly inside the existing band budget. -/
theorem endpoint_constant_lt : (177 : ℝ) / (392 * Real.pi) < 1 / 6 := by
  have hpi : (3 : ℝ) < Real.pi := Real.pi_gt_three
  apply (div_lt_iff₀ (by positivity : (0 : ℝ) < 392 * Real.pi)).mpr
  linarith

/-- Explicit hypothesis at the required integer range, with no hidden RH premise. -/
def SchoenfeldAboveAnchor : Prop :=
  ∀ n : ℕ, (4 : ℕ) ^ 7 ≤ n →
    |(n : ℝ) - Chebyshev.theta n| ≤
      (Real.sqrt n * (Real.log n) ^ 2) / (8 * Real.pi)

/-- Source-facing conditional adapter: this is exactly the unfolded existing
`ChebyshevBand.BandBound`. It proves the finite constants and coverage only;
the analytic estimate is still a supplied premise. -/
theorem theta_band_bound_of_schoenfeld (h : SchoenfeldAboveAnchor) :
    ∀ j : ℕ, 7 ≤ j → ∀ n : ℕ, (4 : ℕ) ^ j ≤ n → n ≤ 4 ^ (j + 1) →
      ((n : ℝ) - Chebyshev.theta n) -
          ((((4 : ℕ) ^ j : ℕ) : ℝ) - Chebyshev.theta ((4 : ℕ) ^ j : ℕ)) ≤
        (1 / 6 : ℝ) * (Real.sqrt (((4 : ℕ) ^ j : ℕ) : ℝ) *
          (Real.log (((4 : ℕ) ^ j : ℕ) : ℝ)) ^ 2) := by
  intro j hj n hlo hhi
  have ha : (4 : ℕ) ^ 7 ≤ 4 ^ j := Nat.pow_le_pow_right (by decide) hj
  have hna := h n (ha.trans hlo)
  have haa := h (4 ^ j) ha
  have hs := scale_ratio j n hj hlo hhi
  let b : ℝ := Real.sqrt (((4 : ℕ) ^ j : ℕ) : ℝ) *
    (Real.log (((4 : ℕ) ^ j : ℕ) : ℝ)) ^ 2
  have hb : 0 ≤ b := mul_nonneg (Real.sqrt_nonneg _) (sq_nonneg _)
  have hd : (0 : ℝ) < 8 * Real.pi := by positivity
  have hscaled : (Real.sqrt n * (Real.log n) ^ 2) / (8 * Real.pi) ≤
      (128 / 49 : ℝ) * b / (8 * Real.pi) :=
    div_le_div_of_nonneg_right hs hd.le
  have htotal : ((n : ℝ) - Chebyshev.theta n) -
      ((((4 : ℕ) ^ j : ℕ) : ℝ) - Chebyshev.theta ((4 : ℕ) ^ j : ℕ)) ≤
        ((128 / 49 : ℝ) * b + b) / (8 * Real.pi) := by
    have hnUpper := (abs_le.mp hna).2
    have haLower := (abs_le.mp haa).1
    rw [add_div]
    linarith
  calc
    _ ≤ ((128 / 49 : ℝ) * b + b) / (8 * Real.pi) := htotal
    _ = ((177 : ℝ) / (392 * Real.pi)) * b := by ring
    _ ≤ (1 / 6 : ℝ) * b := mul_le_mul_of_nonneg_right endpoint_constant_lt.le hb

end GRWTSK.NumberTheory.ChebyshevBandSchoenfeld
