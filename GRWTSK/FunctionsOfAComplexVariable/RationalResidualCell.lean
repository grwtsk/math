/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteReciprocalPolynomial
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# A finite rational scalar-gap check

A center has two rational coordinates; its radius is rational. With dyadic
source error 2^(-k), the scalar strict test is exactly

  D >= 0 and (2^(-k)+D)^2 < Re(c)^2+Im(c)^2.

The Boolean test uses rational arithmetic only. Its soundness theorem converts
the squared inequality to the actual complex-norm gap and then invokes the
complete constant-cell residual. The whole-cell approximation enclosure and
the source truncation estimate are SEPARATE theorem inputs. Passing the Boolean
test alone does not certify any value of zeta or an L-function.

The examples below are exact arithmetic fixtures, not analytic evaluations.
No floating-point interval is silently promoted to an exact real bound. This
is pure mathematical source, not a runner, cache or proof-admission mechanism.
AI-assisted formalization. Compilation, fresh kernel checking, transitive
axiom audit and independent review: NOT_RUN. No novelty claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Division.RationalCell

/-- A finite rational representation, not an arbitrary real oracle. -/
def center (c : ℚ × ℚ) : ℂ := (c.1 : ℂ) + (c.2 : ℂ) * Complex.I

def budget (k : ℕ) (D : ℚ) : ℚ := 1 / (2 : ℚ) ^ k + D

/-- The check is pure finite rational arithmetic. -/
def passes (k : ℕ) (c : ℚ × ℚ) (D : ℚ) : Bool :=
  decide (0 ≤ D ∧ budget k D ^ 2 < c.1 ^ 2 + c.2 ^ 2)

theorem passes_iff (k : ℕ) (c : ℚ × ℚ) (D : ℚ) :
    passes k c D = true ↔ 0 ≤ D ∧ budget k D ^ 2 < c.1 ^ 2 + c.2 ^ 2 := by
  simp only [passes, decide_eq_true_eq]

theorem center_norm_sq (c : ℚ × ℚ) :
    ‖center c‖ ^ 2 = (c.1 : ℝ) ^ 2 + (c.2 : ℝ) ^ 2 := by
  rw [pow_two, Complex.norm_mul_self_eq_normSq]
  simp [center, Complex.normSq_apply, pow_two]

/-- Source-bound use requires this actual real inequality, not just a Boolean tag. -/
theorem passes_sound {k : ℕ} {c : ℚ × ℚ} {D : ℚ}
    (checked : passes k c D = true) :
    1 / (2 : ℝ) ^ k + (D : ℝ) < ‖center c‖ := by
  obtain ⟨hD, hsq⟩ := (passes_iff k c D).mp checked
  have hDreal : (0 : ℝ) ≤ D := by exact_mod_cast hD
  have hnonneg : 0 ≤ 1 / (2 : ℝ) ^ k + (D : ℝ) := by positivity
  dsimp only [budget] at hsq
  have hsqreal : (1 / (2 : ℝ) ^ k + (D : ℝ)) ^ 2 <
      (c.1 : ℝ) ^ 2 + (c.2 : ℝ) ^ 2 := by
    exact_mod_cast hsq
  rw [← center_norm_sq c] at hsqreal
  apply lt_of_not_ge
  intro h
  have hp := mul_nonneg (sub_nonneg.mpr h)
    (add_nonneg hnonneg (norm_nonneg (center c)))
  nlinarith

/-- Soundness includes both omitted obligations, not merely the finite arithmetic. -/
theorem source_nonzero {F P : ℂ} {k : ℕ} {c : ℚ × ℚ} {D : ℚ}
    (source : ‖F - P‖ ≤ 1 / (2 : ℝ) ^ k)
    (enclosure : ‖P - center c‖ ≤ (D : ℝ))
    (checked : passes k c D = true) : F ≠ 0 :=
  FiniteInverse.constant_cell_nonzero source enclosure (passes_sound checked)

/-- A finite rational fixture only; it makes no analytic source claim. -/
theorem rational_gap_fixture : passes 2 (-3, 0) (5 / 4) = true := by decide

/-- No zero center can pass even an arbitrarily small positive error budget. -/
theorem zero_center_fails (k : ℕ) {D : ℚ} (hD : 0 ≤ D) :
    passes k (0, 0) D = false := by
  cases hp : passes k (0, 0) D with
  | false => rfl
  | true =>
    have hgap := passes_sound hp
    have hDreal : (0 : ℝ) ≤ D := by exact_mod_cast hD
    have hpositive : 0 < 1 / (2 : ℝ) ^ k + (D : ℝ) := by positivity
    simp only [center, Rat.cast_zero, zero_mul, add_zero, norm_zero] at hgap
    linarith

end GRWTSK.Analysis.Division.RationalCell
