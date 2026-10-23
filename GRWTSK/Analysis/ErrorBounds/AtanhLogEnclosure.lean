/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

set_option autoImplicit false

/-!
# A one-sided finite atanh logarithm remainder

Reuse Mathlib's exact derivative of the logarithm-minus-polynomial residual.
Comparison with an integrated monomial retains the factor 1/(2*n+1) absent
from the upstream coarse mean-value estimate. No power-series oracle or
assumed numerical logarithm enclosure is used. All declarations are source
candidates: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.AtanhLogEnclosure

open Finset Set

noncomputable def partialSum (y : ℝ) (n : ℕ) : ℝ :=
  2 * ∑ i ∈ range n, y ^ (2 * i + 1) / (2 * i + 1)

noncomputable def tail (y : ℝ) (n : ℕ) : ℝ :=
  2 * y ^ (2 * n + 1) / ((2 * n + 1) * (1 - y ^ 2))

/-- The lower endpoint is nonnegative for the admitted real parameter. -/
theorem partial_nonneg {y : ℝ} (hy : 0 ≤ y) (n : ℕ) : 0 ≤ partialSum y n := by
  unfold partialSum
  positivity

/-- The sharp monomial comparison, including n=0 and y=0. -/
theorem half_residual_bounds {y : ℝ} (hy : 0 ≤ y) (hy1 : y < 1) (n : ℕ) :
    0 ≤ 1 / 2 * Real.log ((1 + y) / (1 - y)) -
        ∑ i ∈ range n, y ^ (2 * i + 1) / (2 * i + 1) ∧
    1 / 2 * Real.log ((1 + y) / (1 - y)) -
        ∑ i ∈ range n, y ^ (2 * i + 1) / (2 * i + 1) ≤
      y ^ (2 * n + 1) / (2 * n + 1) / (1 - y ^ 2) := by
  let F (x : ℝ) := 1 / 2 * Real.log ((1 + x) / (1 - x)) -
    ∑ i ∈ range n, x ^ (2 * i + 1) / (2 * i + 1)
  let P (x : ℝ) := x ^ (2 * n + 1) / (2 * n + 1) / (1 - y ^ 2)
  let G (x : ℝ) := P x - F x
  have hden : 0 < 1 - y ^ 2 := by nlinarith
  have hn : (2 * (n : ℝ) + 1) ≠ 0 := by positivity
  have hderiv : ∀ x ∈ Icc 0 y,
      HasDerivAt G (x ^ (2 * n) / (1 - y ^ 2) -
        (x ^ 2) ^ n / (1 - x ^ 2)) x := by
    intro x hx
    have hx1 : x < 1 := hx.2.trans_lt hy1
    have hxneg : -1 < x := by linarith [hx.1]
    have hp : HasDerivAt P (x ^ (2 * n) / (1 - y ^ 2)) x := by
      have hh := ((hasDerivAt_pow (2 * n + 1) x).div_const
        (2 * (n : ℝ) + 1)).div_const (1 - y ^ 2)
      simpa only [P, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat,
        Nat.cast_one, mul_div_cancel_left₀ _ hn] using hh
    exact hp.sub (Real.hasDerivAt_half_log_one_add_div_one_sub_sub_sum_range n hxneg hx1)
  have hmono : MonotoneOn G (Icc 0 y) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Icc 0 y)
      (fun x hx => (hderiv x hx).continuousAt.continuousWithinAt)
      (fun x hx => (hderiv x (interior_subset hx)).hasDerivWithinAt)
    intro x hx
    have hx' : x ∈ Icc 0 y := interior_subset hx
    have hxden : 0 < 1 - x ^ 2 := by nlinarith [hx'.1, hx'.2]
    have hd : 1 - y ^ 2 ≤ 1 - x ^ 2 := by nlinarith [hx'.1, hx'.2]
    rw [← pow_mul]
    apply sub_nonneg.mpr
    apply (div_le_div_iff₀ hxden hden).mpr
    exact mul_le_mul_of_nonneg_left hd (pow_nonneg hx'.1 _)
  have hcomp := hmono (show (0 : ℝ) ∈ Icc 0 y from ⟨le_rfl, hy⟩)
    (show y ∈ Icc 0 y from ⟨hy, le_rfl⟩) hy
  have hzero : G 0 = 0 := by simp [G, P, F]
  rw [hzero] at hcomp
  exact ⟨sub_nonneg.mpr (Real.sum_range_le_log_div hy hy1 n), by
    dsimp [G, P, F] at hcomp
    linarith⟩

/-- A one-sided error bound; the polynomial is a lower endpoint, not a midpoint. -/
theorem log_ratio_bounds {y : ℝ} (hy : 0 ≤ y) (hy1 : y < 1) (n : ℕ) :
    0 ≤ Real.log ((1 + y) / (1 - y)) - partialSum y n ∧
      Real.log ((1 + y) / (1 - y)) - partialSum y n ≤ tail y n := by
  obtain ⟨hl, hu⟩ := half_residual_bounds hy hy1 n
  have ht : tail y n = 2 * (y ^ (2 * n + 1) / (2 * n + 1) / (1 - y ^ 2)) := by
    unfold tail
    ring
  rw [ht]
  unfold partialSum
  constructor <;> linarith

/-- The original logarithm argument is recovered exactly from its atanh coordinate. -/
theorem reduced_bounds {r : ℝ} (hr : 1 ≤ r) (n : ℕ) :
    0 ≤ Real.log r - partialSum ((r - 1) / (r + 1)) n ∧
      Real.log r - partialSum ((r - 1) / (r + 1)) n ≤
        tail ((r - 1) / (r + 1)) n := by
  have hden : 0 < r + 1 := by linarith
  have hy : 0 ≤ (r - 1) / (r + 1) := div_nonneg (by linarith) hden.le
  have hy1 : (r - 1) / (r + 1) < 1 := (div_lt_one hden).mpr (by linarith)
  have hi : (1 + (r - 1) / (r + 1)) / (1 - (r - 1) / (r + 1)) = r := by
    have hsub : 1 - (r - 1) / (r + 1) ≠ 0 := by linarith
    field_simp [hden.ne', hsub]
    ring
  simpa only [hi] using log_ratio_bounds hy hy1 n

/-- The range-reduced parameter is at most one third, uniformly on [1,2]. -/
theorem reduced_coordinate_le_third {r : ℝ} (hr : 1 ≤ r) (hr2 : r ≤ 2) :
    0 ≤ (r - 1) / (r + 1) ∧ (r - 1) / (r + 1) ≤ 1 / 3 := by
  have hd : 0 < r + 1 := by linarith
  exact ⟨div_nonneg (by linarith) hd.le, (div_le_iff₀ hd).mpr (by linarith)⟩

end GRWTSK.Analysis.ErrorBounds.AtanhLogEnclosure
