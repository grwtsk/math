/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.MultiplicativeResidual
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity

/-!
# Finite reciprocal polynomials with a complete source-error budget

Let P approximate the actual value F and let v be an independent scalar seed.
The finite polynomial U_m = v * sum_{j<m} (1-P*v)^j uses neither F^{-1} nor
P^{-1}. Its exact residual is

  F*U_m - 1 = -(1-P*v)^m + (F-P)*U_m.

If |1-P*v| <= r and |F-P| <= E, the complete bound is
r^m + E*|v|*sum_{j<m} r^j. The second term must not disappear when m increases.
For 0 <= r < 1 its majorant is r^m + E*|v|/(1-r).

A constant-cell specialization obtains an actual strict certificate from an
approximate center c, a whole-cell variation D, a source truncation error E,
and E+D < |c|. No prior target nonvanishing or target reciprocal is assumed.
A zero target gives residual exactly one for every degree, and an explicit
model shows that even an EXACT reciprocal of P can fail for F.

Primary argument: finite geometric telescoping, an exact signed error identity,
and the triangle inequality. Consumer: finite Euler approximation cells.
These are classical error-budget facts, not a new RH/GRH proof or novelty claim.
Reuse: MultiplicativeResidual at 7bc6fe38019589284aa5b2d12833c7cae4cecfa4.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Division.FiniteInverse

/-- A finite expression, with no division by the function being certified. -/
def polynomial (P v : ℂ) (m : ℕ) : ℂ :=
  v * ∑ j ∈ Finset.range m, (1 - P * v) ^ j

def mass (r : ℝ) (m : ℕ) : ℝ := ∑ j ∈ Finset.range m, r ^ j

theorem polynomial_succ (P v : ℂ) (m : ℕ) :
    polynomial P v (m + 1) = polynomial P v m + v * (1 - P * v) ^ m := by
  simp only [polynomial, Finset.sum_range_succ, mul_add]

theorem model_residual (P v : ℂ) (m : ℕ) :
    P * polynomial P v m - 1 = -(1 - P * v) ^ m := by
  induction m with
  | zero => simp [polynomial]
  | succ m ih =>
    rw [polynomial_succ, pow_succ]
    calc
      P * (polynomial P v m + v * (1 - P * v) ^ m) - 1 =
          (P * polynomial P v m - 1) + P * v * (1 - P * v) ^ m := by ring
      _ = -(1 - P * v) ^ m + P * v * (1 - P * v) ^ m := by rw [ih]
      _ = -((1 - P * v) ^ m * (1 - P * v)) := by ring

/-- The error in the source itself survives every finite inversion step. -/
theorem complete_residual (F P v : ℂ) (m : ℕ) :
    F * polynomial P v m - 1 =
      -(1 - P * v) ^ m + (F - P) * polynomial P v m := by
  rw [← model_residual P v m]
  ring

theorem mass_nonneg {r : ℝ} (hr : 0 ≤ r) (m : ℕ) : 0 ≤ mass r m :=
  Finset.sum_nonneg fun _ _ => pow_nonneg hr _

theorem mass_identity (r : ℝ) (m : ℕ) :
    (1 - r) * mass r m = 1 - r ^ m := by
  induction m with
  | zero => simp [mass]
  | succ m ih =>
    rw [mass, Finset.sum_range_succ]
    change (1 - r) * (mass r m + r ^ m) = 1 - r ^ (m + 1)
    rw [mul_add, ih, pow_succ]
    ring

theorem mass_le {r : ℝ} (hr : 0 ≤ r) (hlt : r < 1) (m : ℕ) :
    mass r m ≤ 1 / (1 - r) := by
  apply (le_div_iff₀ (sub_pos.mpr hlt)).mpr
  rw [mul_comm, mass_identity]
  exact sub_le_self _ (pow_nonneg hr _)

theorem polynomial_norm_le {P v : ℂ} {r : ℝ}
    (seed : ‖1 - P * v‖ ≤ r) (m : ℕ) :
    ‖polynomial P v m‖ ≤ ‖v‖ * mass r m := by
  rw [polynomial, norm_mul]
  apply mul_le_mul_of_nonneg_left _ (norm_nonneg v)
  calc
    ‖∑ j ∈ Finset.range m, (1 - P * v) ^ j‖ ≤
        ∑ j ∈ Finset.range m, ‖(1 - P * v) ^ j‖ := norm_sum_le _ _
    _ ≤ mass r m := by
      apply Finset.sum_le_sum
      intro j hj
      rw [norm_pow]
      gcongr

/-- Every term belongs to the actual residual, including the evaluation error. -/
theorem residual_bound {F P v : ℂ} {E r : ℝ}
    (source : ‖F - P‖ ≤ E) (seed : ‖1 - P * v‖ ≤ r) (m : ℕ) :
    ‖F * polynomial P v m - 1‖ ≤ r ^ m + E * ‖v‖ * mass r m := by
  have hE : 0 ≤ E := (norm_nonneg _).trans source
  have hr : 0 ≤ r := (norm_nonneg _).trans seed
  rw [complete_residual]
  calc
    ‖-(1 - P * v) ^ m + (F - P) * polynomial P v m‖ ≤
        ‖-(1 - P * v) ^ m‖ + ‖(F - P) * polynomial P v m‖ := norm_add_le _ _
    _ = ‖1 - P * v‖ ^ m + ‖F - P‖ * ‖polynomial P v m‖ := by
      rw [norm_neg, norm_pow, norm_mul]
    _ ≤ r ^ m + E * (‖v‖ * mass r m) := by
      apply add_le_add
      · gcongr
      · exact mul_le_mul source (polynomial_norm_le seed m) (norm_nonneg _) hE
    _ = r ^ m + E * ‖v‖ * mass r m := by ring

theorem residual_bound_closed {F P v : ℂ} {E r : ℝ}
    (source : ‖F - P‖ ≤ E) (seed : ‖1 - P * v‖ ≤ r)
    (hlt : r < 1) (m : ℕ) :
    ‖F * polynomial P v m - 1‖ ≤ r ^ m + E * ‖v‖ / (1 - r) := by
  have hE : 0 ≤ E := (norm_nonneg _).trans source
  have hr : 0 ≤ r := (norm_nonneg _).trans seed
  apply (residual_bound source seed m).trans
  calc
    r ^ m + E * ‖v‖ * mass r m ≤
        r ^ m + E * ‖v‖ * (1 / (1 - r)) :=
      add_le_add_left (mul_le_mul_of_nonneg_left (mass_le hr hlt m)
        (mul_nonneg hE (norm_nonneg _))) _
    _ = r ^ m + E * ‖v‖ / (1 - r) := by ring

theorem nonzero_of_budget {F P v : ℂ} {E r : ℝ}
    (source : ‖F - P‖ ≤ E) (seed : ‖1 - P * v‖ ≤ r) (m : ℕ)
    (strict : r ^ m + E * ‖v‖ * mass r m < 1) : F ≠ 0 :=
  nonzero_of_unit_residual (residual_bound source seed m) strict

/-- A finite center value, a whole-cell enclosure, and the source tail are sufficient. -/
theorem constant_cell_residual {F P c : ℂ} {E D : ℝ}
    (source : ‖F - P‖ ≤ E) (cell : ‖P - c‖ ≤ D) (hc : c ≠ 0) :
    ‖F * c⁻¹ - 1‖ ≤ (E + D) / ‖c‖ := by
  have hFc : ‖F - c‖ ≤ E + D := by
    calc
      ‖F - c‖ = ‖(F - P) + (P - c)‖ := by congr 1; ring
      _ ≤ ‖F - P‖ + ‖P - c‖ := norm_add_le _ _
      _ ≤ E + D := add_le_add source cell
  have identity : F * c⁻¹ - 1 = (F - c) / c := by
    field_simp [hc] <;> ring
  rw [identity, norm_div]
  exact div_le_div_of_nonneg_right hFc (norm_nonneg c)

theorem constant_cell_nonzero {F P c : ℂ} {E D : ℝ}
    (source : ‖F - P‖ ≤ E) (cell : ‖P - c‖ ≤ D)
    (strict : E + D < ‖c‖) : F ≠ 0 := by
  have hED : 0 ≤ E + D := add_nonneg ((norm_nonneg _).trans source)
    ((norm_nonneg _).trans cell)
  have hc : c ≠ 0 := norm_pos_iff.mp (hED.trans_lt strict)
  apply nonzero_of_unit_residual (constant_cell_residual source cell hc)
  exact (div_lt_one (norm_pos_iff.mpr hc)).mpr strict

/-- Inversion degree never turns a genuine zero into a passing strict certificate. -/
theorem zero_barrier (P v : ℂ) (m : ℕ) :
    ‖(0 : ℂ) * polynomial P v m - 1‖ = 1 := by simp

/-- Perfect inversion of the approximant alone says nothing about the source gap. -/
theorem model_inverse_is_not_source_certificate :
    (1 : ℂ) * (1 : ℂ) = 1 ∧ ‖(0 : ℂ) * (1 : ℂ) - 1‖ = 1 := by
  simp

end GRWTSK.Analysis.Division.FiniteInverse
