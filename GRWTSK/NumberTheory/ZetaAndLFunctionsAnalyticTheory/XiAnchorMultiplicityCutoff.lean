/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Finite multiplicity deficit at the completed zeta anchor

This is the finite counting step of the analytic test in
`SpectralProductDivisorReturn.lean` at `6117e2b56790` (math#1805).
Use the complete closed head with both height signs. Assign each distinct
point its actual analytic order and extend the inventory order by zero at
unrecorded points. The upper bound on the weighted deficit is an input.
For the ξ application it comes from the separate strict tail `|Im ρ| > T`
and the anchor and inventory enclosures. The infinite-tail estimate and
the certification of the inventory are separate analytic obligations.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

/-- The contribution per unit of analytic order to the logarithmic derivative
at the arithmetic anchor two. -/
def xiAnchorWeight (ρ : ℂ) : ℝ :=
  (2 - ρ.re) / ((2 - ρ.re) ^ 2 + ρ.im ^ 2)

private theorem one_le_scaled_xiAnchorWeight {T : ℝ} (hT : Real.exp 1 ≤ T)
    {ρ : ℂ} (hleft : 0 < ρ.re) (hright : ρ.re < 1) (hheight : |ρ.im| ≤ T) :
    1 ≤ (1 + T ^ 2) * xiAnchorWeight ρ := by
  let x : ℝ := 2 - ρ.re
  have hx1 : 1 ≤ x := by dsimp [x]; linarith
  have hx2 : x ≤ 2 := by dsimp [x]; linarith
  have hT2 := Real.exp_one_gt_two.le.trans hT
  have hT0 : 0 ≤ T := by linarith
  have hγ : ρ.im ^ 2 ≤ T ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg ρ.im) hT0).mpr hheight
  have hTx : x ≤ T ^ 2 := by nlinarith [sq_nonneg (T - 2)]
  have hx : 0 < x := zero_lt_one.trans_le hx1
  have hden : 0 < x ^ 2 + ρ.im ^ 2 := by positivity
  change 1 ≤ (1 + T ^ 2) * (x / (x ^ 2 + ρ.im ^ 2))
  rw [← mul_div_assoc, le_div_iff₀ hden, one_mul]
  calc
    x ^ 2 + ρ.im ^ 2 ≤ x ^ 2 + T ^ 2 := by linarith
    _ = (1 + T ^ 2) * x - (x - 1) * (T ^ 2 - x) := by ring
    _ ≤ (1 + T ^ 2) * x :=
      sub_le_self _ (mul_nonneg (sub_nonneg.mpr hx1) (sub_nonneg.mpr hTx))

/-- One unit of missing order costs at least `1 / (1 + T^2)`, including at
either endpoint of the closed height window. Summing retains every unit. -/
theorem missingOrder_le_of_anchorDeficit_le (head : Finset ℂ)
    (order recorded : ℂ → ℕ) {T upper : ℝ} (hT : Real.exp 1 ≤ T)
    (hhead : ∀ ρ ∈ head, 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| ≤ T)
    (hbound : (∑ ρ ∈ head, ((order ρ - recorded ρ : ℕ) : ℝ) * xiAnchorWeight ρ) ≤ upper) :
    ((∑ ρ ∈ head, (order ρ - recorded ρ) : ℕ) : ℝ) ≤ (1 + T ^ 2) * upper := by
  rw [Nat.cast_sum]
  calc
    _ ≤ ∑ ρ ∈ head, (1 + T ^ 2) * (((order ρ - recorded ρ : ℕ) : ℝ) * xiAnchorWeight ρ) := by
      apply Finset.sum_le_sum
      intro ρ hρ
      obtain ⟨hleft, hright, hheight⟩ := hhead ρ hρ
      have hterm := mul_le_mul_of_nonneg_left
        (one_le_scaled_xiAnchorWeight hT hleft hright hheight)
        (Nat.cast_nonneg (α := ℝ) (order ρ - recorded ρ))
      simpa only [mul_one, mul_left_comm] using hterm
    _ = (1 + T ^ 2) * (∑ ρ ∈ head, ((order ρ - recorded ρ : ℕ) : ℝ) * xiAnchorWeight ρ) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ _ := mul_le_mul_of_nonneg_left hbound (by positivity)

/-- A verified lower-order inventory is complete on the supplied head when
its weighted deficit is below the cost of a single unit of order. -/
theorem recordedOrder_eq_of_anchorDeficit_lt (head : Finset ℂ)
    (order recorded : ℂ → ℕ) {T upper : ℝ} (hT : Real.exp 1 ≤ T)
    (hhead : ∀ ρ ∈ head, 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| ≤ T)
    (hinventory : ∀ ρ ∈ head, recorded ρ ≤ order ρ)
    (hbound : (∑ ρ ∈ head, ((order ρ - recorded ρ : ℕ) : ℝ) * xiAnchorWeight ρ) ≤ upper)
    (hsmall : upper < 1 / (1 + T ^ 2)) :
    ∀ ρ ∈ head, recorded ρ = order ρ := by
  have htotal := missingOrder_le_of_anchorDeficit_le head order recorded hT hhead hbound
  have hscaled : (1 + T ^ 2) * upper < 1 := by
    simpa only [mul_comm] using (lt_div_iff₀ (by positivity : 0 < 1 + T ^ 2)).mp hsmall
  have hnat : (∑ ρ ∈ head, (order ρ - recorded ρ) : ℕ) < 1 := by
    exact_mod_cast htotal.trans_lt hscaled
  intro ρ hρ
  have hunit : order ρ - recorded ρ ≤ ∑ z ∈ head, (order z - recorded z) :=
    Finset.single_le_sum (fun z _ => Nat.zero_le (order z - recorded z)) hρ
  have hzero : order ρ - recorded ρ = 0 := by omega
  exact le_antisymm (hinventory ρ hρ) (Nat.sub_eq_zero_iff_le.mp hzero)

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
