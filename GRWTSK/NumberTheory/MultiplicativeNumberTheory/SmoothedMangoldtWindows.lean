/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.SmoothedMangoldt

/-!
# Wider-window recovery of von Mangoldt partial sums

Local attribution: grwtsk contributors.

Nonnegative coefficients make the reciprocal prefix monotone. The resulting
secant bounds recover the original coefficient prefix from two smoothed values
at any chosen positive separation. All endpoint errors and denominators are
retained; no centered analytic estimate is supplied by these finite theorems.
-/

open Finset

namespace GRWTSK.NumberTheory.SmoothedMangoldt

theorem reciprocalSum_monotone (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n) :
    Monotone (reciprocalSum a) := by
  intro m n hmn
  unfold reciprocalSum
  exact sum_le_sum_of_subset_of_nonneg (range_mono hmn)
    (by intro i hi hnot; exact div_nonneg (ha _) (by positivity))

/-- Monotone reciprocal prefixes bound every finite difference of the smoothed
sum between the two endpoint slopes. -/
theorem weightedSum_difference_bounds (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    {m n : ℕ} (hmn : m ≤ n) :
    ((n : ℝ) - m) * reciprocalSum a m ≤ weightedSum a n - weightedSum a m ∧
    weightedSum a n - weightedSum a m ≤ ((n : ℝ) - m) * reciprocalSum a n := by
  induction n, hmn using Nat.le_induction with
  | base => simp
  | succ n hmn ih =>
    have hstep := weightedSum_step a n
    have hleft := reciprocalSum_monotone a ha hmn
    have hright := reciprocalSum_monotone a ha (Nat.le_succ n)
    have hc : 0 ≤ (n : ℝ) + 1 - m := by
      have hmnr : (m : ℝ) ≤ n := by exact_mod_cast hmn
      linarith
    have hmul := mul_le_mul_of_nonneg_left hright hc
    simp only [Nat.cast_add, Nat.cast_one] at hstep ⊢
    constructor <;> nlinarith [ih.1, ih.2]

/-- Lower recovery bound with the denominator cleared. -/
theorem weightedSum_secant_lower_scaled (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    {m n : ℕ} (hmn : m ≤ n) :
    (m : ℝ) * weightedSum a n - (n : ℝ) * weightedSum a m ≤
      ((n : ℝ) - m) * partialSum a n := by
  have h := (weightedSum_difference_bounds a ha hmn).2
  calc
    _ = (n : ℝ) * (weightedSum a n - weightedSum a m) -
      ((n : ℝ) - m) * weightedSum a n := by ring
    _ ≤ (n : ℝ) * (((n : ℝ) - m) * reciprocalSum a n) -
      ((n : ℝ) - m) * weightedSum a n :=
      sub_le_sub_right (mul_le_mul_of_nonneg_left h (Nat.cast_nonneg n)) _
    _ = _ := by rw [weightedSum_eq_scaled_reciprocal_sub_partial]; ring

/-- Upper recovery bound with the denominator cleared. -/
theorem weightedSum_secant_upper_scaled (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    {n r : ℕ} (hnr : n ≤ r) :
    ((r : ℝ) - n) * partialSum a n ≤
      (n : ℝ) * weightedSum a r - (r : ℝ) * weightedSum a n := by
  have h := (weightedSum_difference_bounds a ha hnr).1
  calc
    _ = (n : ℝ) * (((r : ℝ) - n) * reciprocalSum a n) -
      ((r : ℝ) - n) * weightedSum a n := by
        rw [weightedSum_eq_scaled_reciprocal_sub_partial]; ring
    _ ≤ (n : ℝ) * (weightedSum a r - weightedSum a n) -
      ((r : ℝ) - n) * weightedSum a n :=
      sub_le_sub_right (mul_le_mul_of_nonneg_left h (Nat.cast_nonneg n)) _
    _ = _ := by ring

/-- Exact wider-window recovery; unlike adjacent differences, its error
amplification is divided by the chosen window width. -/
theorem partialSum_secant_bounds (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    {m n r : ℕ} (hmn : m < n) (hnr : n < r) :
    ((m : ℝ) * weightedSum a n - (n : ℝ) * weightedSum a m) / ((n : ℝ) - m) ≤
      partialSum a n ∧
    partialSum a n ≤
      ((n : ℝ) * weightedSum a r - (r : ℝ) * weightedSum a n) / ((r : ℝ) - n) := by
  have hmnR : (m : ℝ) < n := by exact_mod_cast hmn
  have hnrR : (n : ℝ) < r := by exact_mod_cast hnr
  constructor
  · apply (div_le_iff₀ (sub_pos.mpr hmnR)).mpr
    simpa only [mul_comm] using weightedSum_secant_lower_scaled a ha hmn.le
  · apply (le_div_iff₀ (sub_pos.mpr hnrR)).mpr
    simpa only [mul_comm] using weightedSum_secant_upper_scaled a ha hnr.le

theorem psi_secant_bounds {m n r : ℕ} (hmn : m < n) (hnr : n < r) :
    ((m : ℝ) * mangoldtWeightedSum n - (n : ℝ) * mangoldtWeightedSum m) /
      ((n : ℝ) - m) ≤ Chebyshev.psi n ∧
    Chebyshev.psi n ≤
      ((n : ℝ) * mangoldtWeightedSum r - (r : ℝ) * mangoldtWeightedSum n) /
      ((r : ℝ) - n) := by
  simpa only [mangoldtWeightedSum, mangoldt_partialSum_eq_psi] using
    partialSum_secant_bounds ArithmeticFunction.vonMangoldt
      (fun _ => ArithmeticFunction.vonMangoldt_nonneg) hmn hnr

/-- Centering leaves the logarithmic secant and the exact signed error. -/
theorem centered_secant_identity (c : ℝ) (m n : ℕ) :
    (m : ℝ) * mangoldtWeightedSum n - (n : ℝ) * mangoldtWeightedSum m =
      (m : ℝ) * n * (Real.log n - Real.log m) +
      ((m : ℝ) * centeredMangoldtSum c n - (n : ℝ) * centeredMangoldtSum c m) := by
  unfold centeredMangoldtSum
  ring

theorem centered_secant_error_le (c : ℝ) (ε : ℕ → ℝ) (m n : ℕ)
    (hm : |centeredMangoldtSum c m| ≤ ε m)
    (hn : |centeredMangoldtSum c n| ≤ ε n) :
    |(m : ℝ) * centeredMangoldtSum c n - (n : ℝ) * centeredMangoldtSum c m| ≤
      (m : ℝ) * ε n + (n : ℝ) * ε m := by
  calc
    _ ≤ |(m : ℝ) * centeredMangoldtSum c n| +
        |(n : ℝ) * centeredMangoldtSum c m| := abs_sub _ _
    _ = (m : ℝ) * |centeredMangoldtSum c n| +
        (n : ℝ) * |centeredMangoldtSum c m| := by
      simp only [abs_mul, Nat.abs_cast]
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left hn (Nat.cast_nonneg m))
      (mul_le_mul_of_nonneg_left hm (Nat.cast_nonneg n))

/-- Precise one-sided supplier: the center needs a lower observation and
the two outer endpoints need upper observations. No lower endpoint bounds or
upper center bound are used. -/
theorem psi_centered_one_sided_secant_bounds (c L Uleft Uright : ℝ) {m n r : ℕ}
    (hmn : m < n) (hnr : n < r)
    (hm : centeredMangoldtSum c m ≤ Uleft)
    (hn : L ≤ centeredMangoldtSum c n)
    (hr : centeredMangoldtSum c r ≤ Uright) :
    ((m : ℝ) * n * (Real.log n - Real.log m) + (m : ℝ) * L - (n : ℝ) * Uleft) /
      ((n : ℝ) - m) ≤ Chebyshev.psi n ∧
    Chebyshev.psi n ≤
      ((n : ℝ) * r * (Real.log r - Real.log n) + (n : ℝ) * Uright - (r : ℝ) * L) /
      ((r : ℝ) - n) := by
  have hs := psi_secant_bounds hmn hnr
  rw [centered_secant_identity c m n, centered_secant_identity c n r] at hs
  have hmnR : (m : ℝ) < n := by exact_mod_cast hmn
  have hnrR : (n : ℝ) < r := by exact_mod_cast hnr
  constructor
  · refine le_trans ?_ hs.1
    apply div_le_div_of_nonneg_right _ (sub_nonneg.mpr hmnR.le)
    have hl := mul_le_mul_of_nonneg_left hn (Nat.cast_nonneg m)
    have hu := mul_le_mul_of_nonneg_left hm (Nat.cast_nonneg n)
    linarith
  · refine le_trans hs.2 ?_
    apply div_le_div_of_nonneg_right _ (sub_nonneg.mpr hnrR.le)
    have hu := mul_le_mul_of_nonneg_left hr (Nat.cast_nonneg n)
    have hl := mul_le_mul_of_nonneg_left hn (Nat.cast_nonneg r)
    linarith

/-- A canonical ψ enclosure from three centered finite observations. -/
theorem psi_centered_secant_bounds (c : ℝ) (ε : ℕ → ℝ) {m n r : ℕ}
    (hmn : m < n) (hnr : n < r)
    (hm : |centeredMangoldtSum c m| ≤ ε m)
    (hn : |centeredMangoldtSum c n| ≤ ε n)
    (hr : |centeredMangoldtSum c r| ≤ ε r) :
    ((m : ℝ) * n * (Real.log n - Real.log m) -
      ((m : ℝ) * ε n + (n : ℝ) * ε m)) / ((n : ℝ) - m) ≤ Chebyshev.psi n ∧
    Chebyshev.psi n ≤
      ((n : ℝ) * r * (Real.log r - Real.log n) +
        ((n : ℝ) * ε r + (r : ℝ) * ε n)) / ((r : ℝ) - n) := by
  have hsec := psi_secant_bounds hmn hnr
  have hl := abs_le.mp (centered_secant_error_le c ε m n hm hn)
  have hu := abs_le.mp (centered_secant_error_le c ε n r hn hr)
  have hmnR : (m : ℝ) < n := by exact_mod_cast hmn
  have hnrR : (n : ℝ) < r := by exact_mod_cast hnr
  rw [centered_secant_identity c m n, centered_secant_identity c n r] at hsec
  constructor
  · refine le_trans ?_ hsec.1
    apply div_le_div_of_nonneg_right _ (sub_nonneg.mpr hmnR.le)
    linarith [hl.1]
  · refine le_trans hsec.2 ?_
    apply div_le_div_of_nonneg_right _ (sub_nonneg.mpr hnrR.le)
    linarith [hu.2]

/-- Every positive logarithmic secant lies between its two endpoints. -/
theorem logarithmic_secant_bounds {x y : ℝ} (hx : 0 < x) (hxy : x < y) :
    x ≤ x * y * (Real.log y - Real.log x) / (y - x) ∧
    x * y * (Real.log y - Real.log x) / (y - x) ≤ y := by
  have hy : 0 < y := hx.trans hxy
  have hu := Real.log_le_sub_one_of_pos (div_pos hy hx)
  rw [Real.log_div (ne_of_gt hy) (ne_of_gt hx)] at hu
  have hl := Real.log_le_sub_one_of_pos (div_pos hx hy)
  rw [Real.log_div (ne_of_gt hx) (ne_of_gt hy)] at hl
  have hupper : x * y * (Real.log y - Real.log x) ≤ y * (y - x) := by
    calc
      _ ≤ x * y * (y / x - 1) := mul_le_mul_of_nonneg_left hu (by positivity)
      _ = _ := by field_simp
  have hlower : x * y * (Real.log x - Real.log y) ≤ -x * (y - x) := by
    calc
      _ ≤ x * y * (x / y - 1) := mul_le_mul_of_nonneg_left hl (by positivity)
      _ = _ := by field_simp; ring
  constructor
  · apply (le_div_iff₀ (sub_pos.mpr hxy)).mpr
    nlinarith
  · exact (div_le_iff₀ (sub_pos.mpr hxy)).mpr hupper

/-- Endpoint-only form of the ψ enclosure; the logarithmic baselines stay
within the observation window. -/
theorem psi_window_bounds (c : ℝ) (ε : ℕ → ℝ) {m n r : ℕ}
    (hm0 : 0 < m) (hmn : m < n) (hnr : n < r)
    (hm : |centeredMangoldtSum c m| ≤ ε m)
    (hn : |centeredMangoldtSum c n| ≤ ε n)
    (hr : |centeredMangoldtSum c r| ≤ ε r) :
    (m : ℝ) - ((m : ℝ) * ε n + (n : ℝ) * ε m) / ((n : ℝ) - m) ≤
      Chebyshev.psi n ∧
    Chebyshev.psi n ≤
      (r : ℝ) + ((n : ℝ) * ε r + (r : ℝ) * ε n) / ((r : ℝ) - n) := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm0
  have hmnR : (m : ℝ) < n := by exact_mod_cast hmn
  have hnrR : (n : ℝ) < r := by exact_mod_cast hnr
  have hs := psi_centered_secant_bounds c ε hmn hnr hm hn hr
  have hl := (logarithmic_secant_bounds hmR hmnR).1
  have hu := (logarithmic_secant_bounds (hmR.trans hmnR) hnrR).2
  constructor
  · refine le_trans (sub_le_sub_right hl _) ?_
    simpa only [sub_div] using hs.1
  · refine le_trans ?_ (add_le_add hu (le_refl _))
    simpa only [add_div] using hs.2

/-- A uniform one-sided radius supplies the two endpoint-only bounds. -/
theorem psi_one_sided_window_bounds (c E : ℝ) {m n r : ℕ}
    (hm0 : 0 < m) (hmn : m < n) (hnr : n < r)
    (hm : centeredMangoldtSum c m ≤ E)
    (hn : -E ≤ centeredMangoldtSum c n)
    (hr : centeredMangoldtSum c r ≤ E) :
    (m : ℝ) - (((m : ℝ) + n) * E) / ((n : ℝ) - m) ≤ Chebyshev.psi n ∧
    Chebyshev.psi n ≤ (r : ℝ) + (((n : ℝ) + r) * E) / ((r : ℝ) - n) := by
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm0
  have hmnR : (m : ℝ) < n := by exact_mod_cast hmn
  have hnrR : (n : ℝ) < r := by exact_mod_cast hnr
  have hs := psi_centered_one_sided_secant_bounds c (-E) E E hmn hnr hm hn hr
  have hl := (logarithmic_secant_bounds hmR hmnR).1
  have hu := (logarithmic_secant_bounds (hmR.trans hmnR) hnrR).2
  constructor
  · calc
      _ ≤ (m : ℝ) * n * (Real.log n - Real.log m) / ((n : ℝ) - m) -
          (((m : ℝ) + n) * E) / ((n : ℝ) - m) := sub_le_sub_right hl _
      _ = ((m : ℝ) * n * (Real.log n - Real.log m) + (m : ℝ) * (-E) -
          (n : ℝ) * E) / ((n : ℝ) - m) := by ring
      _ ≤ _ := hs.1
  · calc
      _ ≤ ((n : ℝ) * r * (Real.log r - Real.log n) + (n : ℝ) * E -
          (r : ℝ) * (-E)) / ((r : ℝ) - n) := hs.2
      _ = (n : ℝ) * r * (Real.log r - Real.log n) / ((r : ℝ) - n) +
          (((n : ℝ) + r) * E) / ((r : ℝ) - n) := by ring
      _ ≤ _ := add_le_add hu le_rfl

/-- A lower observation at the center and upper observations at the outer
endpoints suffice. The error radius is nonnegative and the window is interior. -/
theorem psi_symmetric_window_of_one_sided_bounds (c E : ℝ) {N h : ℕ}
    (hE : 0 ≤ E) (hh : 0 < h) (hhN : h < N)
    (hleft : centeredMangoldtSum c (N - h) ≤ E)
    (hcenter : -E ≤ centeredMangoldtSum c N)
    (hright : centeredMangoldtSum c (N + h) ≤ E) :
    |Chebyshev.psi N - N| ≤ (h : ℝ) + ((2 * (N : ℝ) + h) * E) / h := by
  have hhR : (0 : ℝ) < h := by exact_mod_cast hh
  have hm0 : 0 < N - h := Nat.sub_pos_of_lt hhN
  have hmN : N - h < N := Nat.sub_lt (hh.trans hhN) hh
  have hNr : N < N + h := Nat.lt_add_of_pos_right hh
  have hs := psi_one_sided_window_bounds c E hm0 hmN hNr hleft hcenter hright
  simp only [Nat.cast_sub hhN.le, Nat.cast_add] at hs
  have hgapL : (N : ℝ) - (N - h) = h := by ring
  have hgapR : (N : ℝ) + h - N = h := by ring
  rw [hgapL, hgapR] at hs
  have hcost : ((((N : ℝ) - h) + N) * E) / h ≤
      ((2 * (N : ℝ) + h) * E) / h := by
    apply div_le_div_of_nonneg_right _ hhR.le
    nlinarith [mul_nonneg hhR.le hE]
  have hupper_cost : (((N : ℝ) + ((N : ℝ) + h)) * E) / h =
      ((2 * (N : ℝ) + h) * E) / h := by congr 1; ring
  rw [hupper_cost] at hs
  apply abs_le.mpr
  constructor <;> linarith [hs.1, hs.2]

/-- A symmetric window replaces adjacent-difference amplification by the
explicit ratio of the center to the chosen width. Only three centered bounds
are needed, and the width bias is retained. -/
theorem psi_symmetric_window_abs_le (c E : ℝ) {N h : ℕ}
    (hh : 0 < h) (hhN : h < N)
    (hleft : |centeredMangoldtSum c (N - h)| ≤ E)
    (hcenter : |centeredMangoldtSum c N| ≤ E)
    (hright : |centeredMangoldtSum c (N + h)| ≤ E) :
    |Chebyshev.psi N - N| ≤ (h : ℝ) + ((2 * (N : ℝ) + h) * E) / h := by
  exact psi_symmetric_window_of_one_sided_bounds c E
    ((abs_nonneg _).trans hcenter) hh hhN
    (abs_le.mp hleft).2 (abs_le.mp hcenter).1 (abs_le.mp hright).2

end GRWTSK.NumberTheory.SmoothedMangoldt
