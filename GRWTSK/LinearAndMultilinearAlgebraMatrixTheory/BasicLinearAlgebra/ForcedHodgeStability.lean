/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.HodgeHeatResidualBounds
import Mathlib.Tactic

/-!
# Forced finite Hodge stability with every local defect retained

Compare two ACTUAL coordinate sequences x and y. The defect is their difference
of failures to follow the same exact heat step. The next error equals heat of
the previous error plus this defect. No recurrence premise, informal numerical
accuracy label or omitted forcing term is used to manufacture that identity.

For arbitrary time the recursive error budget retains the exact multiplier
exp(-t*a_i^2). For nonnegative time only, contraction gives the simpler bound
 initial error + sum of ALL local defects.
Weighted synthesis supplies the explicit price of evaluating coefficients as
an analytic observation; the independent source tail is then added. A final
small local defect is insufficient, and reverse-time gains are not contracted.

This finite perturbative bookkeeping is the stability mechanism used here in
comparison with Tao's approximate-solution arguments. It is not a formalization
of Rodgers--Tao or Polymath zero dynamics: their continuous entire-function
source, sign of time, collision and infinite-dimensional estimates are separate.
The existing finite two-term Hodge model, not a geometric Hodge conjecture,
is the actual mathematical object. Harmonic errors are retained.

Primary proof: exact defect identity and induction, then finite synthesis and
full signed source return. Hostile examples retain a constant harmonic error
and accumulated forcing despite zero subsequent defects.
AI-assisted source; compilation, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Hodge.ForcedStability

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
open GRWTSK.Analysis.Hodge.HeatApproximation
open GRWTSK.Analysis.Division

universe u v
variable {ι : Type u} {Z : Type v}

/-- Difference of the actual local recurrence defects, with both forcings retained. -/
def defect (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) : ℝ :=
  (x (n + 1) i - heat a t (x n) i) - (y (n + 1) i - heat a t (y n) i)

theorem exact_step (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    x (n + 1) i - y (n + 1) i =
      (heat a t (x n) i - heat a t (y n) i) + defect a t x y n i := by
  unfold defect
  ring

theorem step_bound (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    |x (n + 1) i - y (n + 1) i| ≤
      gain a t i * |x n i - y n i| + |defect a t x y n i| := by
  rw [exact_step]
  exact (abs_add_le _ _).trans_eq (by rw [coordinate_error])

/-- This budget remains valid even at negative time; amplification is explicit. -/
def recursiveBudget (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) : ℕ → ι → ℝ
  | 0, i => |x 0 i - y 0 i|
  | n + 1, i => gain a t i * recursiveBudget a t x y n i + |defect a t x y n i|

theorem error_le_recursive (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    |x n i - y n i| ≤ recursiveBudget a t x y n i := by
  induction n with
  | zero => exact le_rfl
  | succ n ih =>
    exact (step_bound a t x y n i).trans
      (add_le_add_right (mul_le_mul_of_nonneg_left ih (gain_positive a t i).le) _)

/-- Every historical defect is charged, not only the last one. -/
def accumulatedBudget (a : ι → ℝ) (t : ℝ) (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) : ℝ :=
  |x 0 i - y 0 i| + ∑ k ∈ Finset.range n, |defect a t x y k i|

theorem error_le_accumulated (a : ι → ℝ) {t : ℝ} (time : 0 ≤ t)
    (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι) :
    |x n i - y n i| ≤ accumulatedBudget a t x y n i := by
  induction n with
  | zero => simp [accumulatedBudget]
  | succ n ih =>
    have hg := mul_le_mul_of_nonneg_right (gain_le_one a time i) (abs_nonneg (x n i - y n i))
    calc
      _ ≤ gain a t i * |x n i - y n i| + |defect a t x y n i| := step_bound a t x y n i
      _ ≤ |x n i - y n i| + |defect a t x y n i| := by simpa using add_le_add_right hg _
      _ ≤ accumulatedBudget a t x y n i + |defect a t x y n i| := add_le_add_right ih _
      _ = accumulatedBudget a t x y (n + 1) i := by
        simp only [accumulatedBudget, Finset.sum_range_succ]
        ring

/-- A zero-defect comparison preserves the initial error; it does not force it to zero. -/
theorem zero_defects (a : ι → ℝ) {t : ℝ} (time : 0 ≤ t)
    (x y : ℕ → ι → ℝ) (n : ℕ) (i : ι)
    (vanishing : ∀ k < n, defect a t x y k i = 0) :
    |x n i - y n i| ≤ |x 0 i - y 0 i| := by
  have h := error_le_accumulated a time x y n i
  have hz : (∑ k ∈ Finset.range n, |defect a t x y k i|) = 0 := by
    apply Finset.sum_eq_zero
    intro k hk
    rw [vanishing k (Finset.mem_range.mp hk), abs_zero]
  simpa only [accumulatedBudget, hz, add_zero] using h

def evaluationBudget [Fintype ι] (basis : ι → Z → ℂ) (a : ι → ℝ) (t : ℝ)
    (x y : ℕ → ι → ℝ) (n : ℕ) (z : Z) : ℝ :=
  ∑ i, accumulatedBudget a t x y n i * ‖basis i z‖

theorem synthesis_stability [Fintype ι] (basis : ι → Z → ℂ)
    (a : ι → ℝ) {t : ℝ} (time : 0 ≤ t) (x y : ℕ → ι → ℝ) (n : ℕ) (z : Z) :
    ‖synthesis basis (x n) z - synthesis basis (y n) z‖ ≤
      evaluationBudget basis a t x y n z := by
  refine (synthesis_error basis (x n) (y n) z).trans ?_
  exact Finset.sum_le_sum (fun i _ => mul_le_mul_of_nonneg_right
    (error_le_accumulated a time x y n i) (norm_nonneg _))

/-- Return to the exact mathematical source after the complete comparison chain. -/
theorem source_return [Fintype ι] (source : Z → ℂ) (basis : ι → Z → ℂ)
    (a : ι → ℝ) {t tail : ℝ} (time : 0 ≤ t)
    (x y : ℕ → ι → ℝ) (n : ℕ) (z : Z)
    (tailBound : ‖source z - synthesis basis (y n) z‖ ≤ tail) :
    ‖source z - synthesis basis (x n) z‖ ≤ tail + evaluationBudget basis a t x y n z := by
  have comparison := synthesis_stability basis a time x y n z
  have reverse : ‖synthesis basis (y n) z - synthesis basis (x n) z‖ ≤
      evaluationBudget basis a t x y n z := by simpa only [norm_sub_rev] using comparison
  exact (norm_sub_le_norm_sub_add_norm_sub _ (synthesis basis (y n) z) _).trans
    (add_le_add tailBound reverse)

/-- Strict zero-exclusion is available only after all propagated defects and the
independent source tail have been charged through the same scalar evaluation. -/
theorem residual_return [Fintype ι] (source : Z → ℂ) (basis : ι → Z → ℂ)
    (a : ι → ℝ) {t tail ε U : ℝ} (time : 0 ≤ t)
    (x y : ℕ → ι → ℝ) (n : ℕ) (z : Z) (inverse : ℂ)
    (tailBound : ‖source z - synthesis basis (y n) z‖ ≤ tail)
    (modelResidual : ‖residual (synthesis basis (x n) z) inverse 1‖ ≤ ε)
    (inverseBound : ‖inverse‖ ≤ U) :
    ‖residual (source z) inverse 1‖ ≤
      ε + (tail + evaluationBudget basis a t x y n z) * U :=
  Approximation.residual_source_bound modelResidual
    (source_return source basis a time x y n z tailBound) inverseBound

/-- A unit harmonic discrepancy survives with identically zero local defects. -/
theorem harmonic_error_fixture (t : ℝ) :
    (∀ n : ℕ, defect (fun _ : Unit => 0) t
      (fun _ _ => 1) (fun _ _ => 0) n () = 0) ∧
    ∀ n : ℕ, |(1 : ℝ) - 0| = 1 := by
  constructor
  · intro n
    simp [defect, heat, functionalCalculus, diagonal]
  · intro n
    norm_num

end GRWTSK.Analysis.Hodge.ForcedStability
