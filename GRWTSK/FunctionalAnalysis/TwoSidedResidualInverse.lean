/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Tactic.NoncommRing

/-!
# Two-sided residual certificates in a complete normed ring

MSC2020: 46H05, 47A10, 65J10. Consumer: RP-OC-04, math issue #1800.
The two residuals are essential: in infinite dimension a one-sided inverse
need not be two-sided. No commutativity, normality or finite dimension is used.
The norm bounds additionally specify `NormOneClass`; a matrix entry norm must
not be silently substituted for a submultiplicative operator norm.

Standard Neumann-series consequences, not new arithmetic results. Upstream:
Mathlib.Analysis.SpecificLimits.Normed at
 d13f23b723b8a846827a245b89c10fc7d3f11612.
Source candidates: elaboration, kernel replay, axiom audit, review NOT_RUN.
Per-declaration provenance is in the adjacent .provenance directory.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.FunctionalAnalysis.TwoSidedResidual

variable {A : Type*} [NormedRing A] [CompleteSpace A]

/-- Correct an approximate left inverse by its convergent residual series. -/
def leftNeumann (a r : A) : A := (∑' n : ℕ, (1 - r * a) ^ n) * r

/-- Correct an approximate right inverse by its convergent residual series. -/
def rightNeumann (a r : A) : A := r * (∑' n : ℕ, (1 - a * r) ^ n)

theorem leftNeumann_mul {a r : A} (h : ‖1 - r * a‖ < 1) :
    leftNeumann a r * a = 1 := by
  unfold leftNeumann
  rw [mul_assoc]
  simpa only [sub_sub_cancel] using geom_series_mul_neg (1 - r * a) h

theorem mul_rightNeumann {a r : A} (h : ‖1 - a * r‖ < 1) :
    a * rightNeumann a r = 1 := by
  unfold rightNeumann
  rw [← mul_assoc]
  simpa only [sub_sub_cancel] using mul_neg_geom_series (1 - a * r) h

/-- A left inverse and a right inverse of the same element coincide. -/
theorem leftNeumann_eq_rightNeumann {a r : A}
    (hl : ‖1 - r * a‖ < 1) (hr : ‖1 - a * r‖ < 1) :
    leftNeumann a r = rightNeumann a r := by
  calc
    leftNeumann a r = leftNeumann a r * (a * rightNeumann a r) := by
      rw [mul_rightNeumann hr, mul_one]
    _ = (leftNeumann a r * a) * rightNeumann a r := (mul_assoc _ _ _).symm
    _ = rightNeumann a r := by rw [leftNeumann_mul hl, one_mul]

theorem mul_leftNeumann {a r : A}
    (hl : ‖1 - r * a‖ < 1) (hr : ‖1 - a * r‖ < 1) :
    a * leftNeumann a r = 1 := by
  rw [leftNeumann_eq_rightNeumann hl hr]
  exact mul_rightNeumann hr

/-- Actual algebraic invertibility, not an abstract field called invertible. -/
theorem isUnit_of_twoSidedResidual {a r : A}
    (hl : ‖1 - r * a‖ < 1) (hr : ‖1 - a * r‖ < 1) : IsUnit a := by
  exact ⟨⟨a, leftNeumann a r, mul_leftNeumann hl hr, leftNeumann_mul hl⟩, rfl⟩

/-- A quantitative inverse estimate with the chosen ring norm made explicit. -/
theorem norm_leftNeumann_le [NormOneClass A] {a r : A}
    (hl : ‖1 - r * a‖ < 1) :
    ‖leftNeumann a r‖ ≤ ‖r‖ / (1 - ‖1 - r * a‖) := by
  have hg : ‖∑' n : ℕ, (1 - r * a) ^ n‖ ≤ (1 - ‖1 - r * a‖)⁻¹ := by
    simpa using tsum_geometric_le_of_norm_lt_one (1 - r * a) hl
  calc
    ‖leftNeumann a r‖ ≤ ‖∑' n : ℕ, (1 - r * a) ^ n‖ * ‖r‖ := norm_mul_le _ _
    _ ≤ (1 - ‖1 - r * a‖)⁻¹ * ‖r‖ :=
      mul_le_mul_of_nonneg_right hg (norm_nonneg r)
    _ = ‖r‖ / (1 - ‖1 - r * a‖) := by rw [div_eq_mul_inv, mul_comm]

/-- A posteriori error between the corrected inverse and the proposed inverse. -/
theorem norm_leftNeumann_sub_le {a r : A}
    (hl : ‖1 - r * a‖ < 1) (hr : ‖1 - a * r‖ < 1) :
    ‖leftNeumann a r - r‖ ≤ ‖1 - r * a‖ * ‖leftNeumann a r‖ := by
  have hid : (1 - r * a) * leftNeumann a r = leftNeumann a r - r := by
    rw [sub_mul, one_mul, mul_assoc, mul_leftNeumann hl hr, mul_one]
  rw [← hid]
  exact norm_mul_le _ _

/-- Full left-residual budget, including the operator truncation error. -/
theorem leftResidual_le (a a₀ r : A) :
    ‖1 - r * a‖ ≤ ‖1 - r * a₀‖ + ‖r‖ * ‖a - a₀‖ := by
  have hid : 1 - r * a = (1 - r * a₀) - r * (a - a₀) := by noncomm_ring
  rw [hid]
  exact (norm_sub_le _ _).trans
    (add_le_add_left (norm_mul_le r (a - a₀)) _)

/-- Full right-residual budget. The multiplication order is not exchanged. -/
theorem rightResidual_le (a a₀ r : A) :
    ‖1 - a * r‖ ≤ ‖1 - a₀ * r‖ + ‖a - a₀‖ * ‖r‖ := by
  have hid : 1 - a * r = (1 - a₀ * r) - (a - a₀) * r := by noncomm_ring
  rw [hid]
  exact (norm_sub_le _ _).trans
    (add_le_add_left (norm_mul_le (a - a₀) r) _)

/-- An approximation becomes a certificate only after both total errors are < 1. -/
theorem isUnit_of_approximation {a a₀ r : A} {ε : ℝ}
    (herr : ‖a - a₀‖ ≤ ε)
    (hl : ‖1 - r * a₀‖ + ‖r‖ * ε < 1)
    (hr : ‖1 - a₀ * r‖ + ε * ‖r‖ < 1) : IsUnit a := by
  apply isUnit_of_twoSidedResidual (r := r)
  · exact lt_of_le_of_lt ((leftResidual_le a a₀ r).trans
      (add_le_add_left (mul_le_mul_of_nonneg_left herr (norm_nonneg r)) _)) hl
  · exact lt_of_le_of_lt ((rightResidual_le a a₀ r).trans
      (add_le_add_left (mul_le_mul_of_nonneg_right herr (norm_nonneg r)) _)) hr

/-- Produce the inverse and its bound from the computable head-plus-tail budgets.
The hypotheses must hold for the exact operator, not just sampled entries. -/
theorem exists_inverse_bound_of_approximation [NormOneClass A]
    {a a₀ r : A} {ε : ℝ} (herr : ‖a - a₀‖ ≤ ε)
    (hl : ‖1 - r * a₀‖ + ‖r‖ * ε < 1)
    (hr : ‖1 - a₀ * r‖ + ε * ‖r‖ < 1) :
    ∃ b : A, a * b = 1 ∧ b * a = 1 ∧
      ‖b‖ ≤ ‖r‖ / (1 - (‖1 - r * a₀‖ + ‖r‖ * ε)) := by
  have hle := (leftResidual_le a a₀ r).trans
    (add_le_add_left (mul_le_mul_of_nonneg_left herr (norm_nonneg r)) _)
  have hre := (rightResidual_le a a₀ r).trans
    (add_le_add_left (mul_le_mul_of_nonneg_right herr (norm_nonneg r)) _)
  have hl' := lt_of_le_of_lt hle hl
  have hr' := lt_of_le_of_lt hre hr
  refine ⟨leftNeumann a r, mul_leftNeumann hl' hr', leftNeumann_mul hl', ?_⟩
  exact (norm_leftNeumann_le hl').trans
    (div_le_div_of_nonneg_left (norm_nonneg r) (sub_pos.mpr hl)
      (sub_le_sub_left hle 1))

end GRWTSK.FunctionalAnalysis.TwoSidedResidual
