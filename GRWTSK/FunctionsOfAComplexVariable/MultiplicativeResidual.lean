/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.ReciprocalStability

/-!
# Multiplicative residuals certify invertibility before division

For an actual scalar a and an independently supplied approximation u, a bound
|a*u-1| <= q < 1 proves a != 0. Unlike inverse-error estimates that already
assume a positive denominator margin, this implication obtains invertibility
from the complete residual. If |u| <= M and M > 0 it also derives the explicit
margin (1-q)/M. Existing ReciprocalStability then supplies source-return errors.

The perturbation identity retains both evaluation errors and their mixed term.
Newton's polynomial update u*(2-a*u) squares the residual norm exactly, but never
changes a. At a zero the residual norm remains exactly one at every iteration;
iteration is not a way to manufacture the initial strict gap.

Primary arguments: reverse triangle inequality, exact ring identities, and
induction. These are standard algebraic facts, not novelty claims. Consumers:
boundary certificates for zeta and Dirichlet L-functions. No analytic estimates
or numerical enclosures are supplied merely by naming these hypotheses.
Reuse: ReciprocalStability at 78d3de57395378dfc4164a75af7a844ea2806efc.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN. Dependency pins unchanged.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Division

/-- A strict residual certificate supplies nonvanishing, rather than assuming it. -/
theorem nonzero_of_unit_residual {a u : ℂ} {q : ℝ}
    (bound : ‖residual a u 1‖ ≤ q) (gap : q < 1) : a ≠ 0 := by
  have product_ne : a * u ≠ 0 :=
    perturbed_nonzero (a := 1) (b := a * u) (δ := 1) (η := q)
      (by simp) bound gap
  intro zero
  apply product_ne
  simp [zero]

/-- The same certificate also rules out a zero approximate inverse. -/
theorem approximation_nonzero_of_unit_residual {a u : ℂ} {q : ℝ}
    (bound : ‖residual a u 1‖ ≤ q) (gap : q < 1) : u ≠ 0 := by
  apply nonzero_of_unit_residual (a := u) (u := a) (q := q)
  · simpa only [residual, mul_comm] using bound
  · exact gap

/-- Reverse triangle inequality gives the actual multiplicative lower bound. -/
theorem unit_residual_product_margin {a u : ℂ} {q : ℝ}
    (bound : ‖residual a u 1‖ ≤ q) : 1 - q ≤ ‖a‖ * ‖u‖ := by
  simpa only [norm_mul] using
    (perturbed_margin (a := 1) (b := a * u) (δ := 1) (η := q)
      (by simp) bound)

/-- An upper bound on the supplied approximation becomes a denominator margin. -/
theorem unit_residual_margin {a u : ℂ} {q M : ℝ}
    (positive : 0 < M) (size : ‖u‖ ≤ M)
    (bound : ‖residual a u 1‖ ≤ q) : (1 - q) / M ≤ ‖a‖ := by
  apply (div_le_iff₀ positive).mpr
  exact (unit_residual_product_margin bound).trans
    (mul_le_mul_of_nonneg_left size (norm_nonneg a))

/-- The established division theorem consumes the newly derived margin. -/
theorem inverse_error_from_unit_residual {a u : ℂ} {q M : ℝ}
    (positive : 0 < M) (size : ‖u‖ ≤ M)
    (bound : ‖residual a u 1‖ ≤ q) (gap : q < 1) :
    ‖u - a⁻¹‖ ≤ q / ((1 - q) / M) :=
  inverse_error_le (div_pos (sub_pos.mpr gap) positive)
    (unit_residual_margin positive size bound) bound

/-- Correcting by the actual product gives the exact inverse on the certified domain. -/
theorem normalized_approximation {a u : ℂ} {q : ℝ}
    (bound : ‖residual a u 1‖ ≤ q) (gap : q < 1) : u / (a * u) = a⁻¹ := by
  have ha := nonzero_of_unit_residual bound gap
  have hu := approximation_nonzero_of_unit_residual bound gap
  field_simp [ha, hu] <;> ring

/-- Independent approximations agree after justified normalization, not before it. -/
theorem normalized_overlap {a u v : ℂ} {q r : ℝ}
    (first : ‖residual a u 1‖ ≤ q) (firstGap : q < 1)
    (second : ‖residual a v 1‖ ≤ r) (secondGap : r < 1) :
    u / (a * u) = v / (a * v) :=
  (normalized_approximation first firstGap).trans
    (normalized_approximation second secondGap).symm

/-- Both evaluation errors and their cross term belong to the true residual. -/
theorem residual_perturbation_identity (a u a₀ u₀ : ℂ) :
    residual a u 1 = residual a₀ u₀ 1 + (a - a₀) * u₀ +
      a₀ * (u - u₀) + (a - a₀) * (u - u₀) := by
  dsimp [residual]
  ring

/-- A complete enclosure, including simultaneous denominator/approximation error. -/
theorem residual_evaluation_bound {a u a₀ u₀ : ℂ} {ε η θ : ℝ}
    (center : ‖residual a₀ u₀ 1‖ ≤ ε)
    (denominator : ‖a - a₀‖ ≤ η) (approximation : ‖u - u₀‖ ≤ θ) :
    ‖residual a u 1‖ ≤ ε + η * ‖u₀‖ + ‖a₀‖ * θ + η * θ := by
  have hη : 0 ≤ η := (norm_nonneg _).trans denominator
  calc
    ‖residual a u 1‖ =
        ‖residual a₀ u₀ 1 + (a - a₀) * u₀ +
          a₀ * (u - u₀) + (a - a₀) * (u - u₀)‖ := by
      rw [residual_perturbation_identity a u a₀ u₀]
    _ ≤ ‖residual a₀ u₀ 1 + (a - a₀) * u₀ + a₀ * (u - u₀)‖ +
        ‖(a - a₀) * (u - u₀)‖ := norm_add_le _ _
    _ ≤ (‖residual a₀ u₀ 1 + (a - a₀) * u₀‖ + ‖a₀ * (u - u₀)‖) +
        ‖(a - a₀) * (u - u₀)‖ := add_le_add_right (norm_add_le _ _) _
    _ ≤ ((‖residual a₀ u₀ 1‖ + ‖(a - a₀) * u₀‖) + ‖a₀ * (u - u₀)‖) +
        ‖(a - a₀) * (u - u₀)‖ :=
      add_le_add_right (add_le_add_right (norm_add_le _ _) _) _
    _ = ‖residual a₀ u₀ 1‖ + ‖a - a₀‖ * ‖u₀‖ +
        ‖a₀‖ * ‖u - u₀‖ + ‖a - a₀‖ * ‖u - u₀‖ := by
      simp only [norm_mul]
    _ ≤ ε + η * ‖u₀‖ + ‖a₀‖ * θ + η * θ :=
      add_le_add
        (add_le_add (add_le_add center
          (mul_le_mul_of_nonneg_right denominator (norm_nonneg u₀)))
          (mul_le_mul_of_nonneg_left approximation (norm_nonneg a₀)))
        (mul_le_mul denominator approximation (norm_nonneg _) hη)

/-- Certified numeric errors can establish nonvanishing without a prior lower bound. -/
theorem nonzero_of_evaluation_enclosure {a u a₀ u₀ : ℂ} {ε η θ : ℝ}
    (center : ‖residual a₀ u₀ 1‖ ≤ ε)
    (denominator : ‖a - a₀‖ ≤ η) (approximation : ‖u - u₀‖ ≤ θ)
    (gap : ε + η * ‖u₀‖ + ‖a₀‖ * θ + η * θ < 1) : a ≠ 0 :=
  nonzero_of_unit_residual (residual_evaluation_bound center denominator approximation) gap

/-- Newton's inverse update is polynomial and does not divide by the target. -/
def newtonStep (a u : ℂ) : ℂ := u * (2 - a * u)

def newtonIter (a u : ℂ) : ℕ → ℂ
  | 0 => u
  | n + 1 => newtonStep a (newtonIter a u n)

/-- The signed residual changes sign when it squares. -/
theorem newton_residual (a u : ℂ) :
    residual a (newtonStep a u) 1 = -(residual a u 1) ^ 2 := by
  dsimp [residual, newtonStep]
  ring

theorem newton_residual_norm (a u : ℂ) :
    ‖residual a (newtonStep a u) 1‖ = ‖residual a u 1‖ ^ 2 := by
  rw [newton_residual, norm_neg, norm_pow]

/-- Exact doubly exponential residual exponent; no initial smallness is assumed. -/
theorem newtonIter_residual_norm (a u : ℂ) (n : ℕ) :
    ‖residual a (newtonIter a u n) 1‖ = ‖residual a u 1‖ ^ (2 ^ n) := by
  induction n with
  | zero => simp [newtonIter]
  | succ n ih =>
    calc
      ‖residual a (newtonIter a u (n + 1)) 1‖ =
          ‖residual a (newtonIter a u n) 1‖ ^ 2 := newton_residual_norm _ _
      _ = (‖residual a u 1‖ ^ (2 ^ n)) ^ 2 := by rw [ih]
      _ = ‖residual a u 1‖ ^ (2 ^ (n + 1)) := by
        rw [pow_succ (2 : ℕ) n, pow_mul]

/-- A previously established strict gap is preserved by the update. -/
theorem newton_preserves_strict_gap (a u : ℂ)
    (gap : ‖residual a u 1‖ < 1) : ‖residual a (newtonStep a u) 1‖ < 1 := by
  rw [newton_residual_norm, pow_two]
  calc
    ‖residual a u 1‖ * ‖residual a u 1‖ ≤ ‖residual a u 1‖ * 1 :=
      mul_le_mul_of_nonneg_left gap.le (norm_nonneg _)
    _ = ‖residual a u 1‖ := mul_one _
    _ < 1 := gap

/-- Return each iterate to the actual inverse using the original certified margin. -/
theorem newtonIter_inverse_error {a u : ℂ} {δ : ℝ}
    (positive : 0 < δ) (margin : δ ≤ ‖a‖) (n : ℕ) :
    ‖newtonIter a u n - a⁻¹‖ ≤ ‖residual a u 1‖ ^ (2 ^ n) / δ :=
  inverse_error_le positive margin (le_of_eq (newtonIter_residual_norm a u n))

/-- At a true zero no approximation, including a Newton iterate, crosses the threshold. -/
theorem zero_residual_barrier (u : ℂ) (n : ℕ) :
    ‖residual 0 (newtonIter 0 u n) 1‖ = 1 := by
  simp [residual]

/-- The strict threshold cannot be replaced by a non-strict one. -/
theorem residual_threshold_is_sharp :
    ‖residual 0 (1 : ℂ) 1‖ ≤ 1 ∧ ¬ (0 : ℂ) ≠ 0 := by
  simp [residual]

end GRWTSK.Analysis.Division
