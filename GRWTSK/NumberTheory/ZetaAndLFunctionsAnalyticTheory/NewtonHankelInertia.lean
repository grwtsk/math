/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.Analysis.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.Ring
import Mathlib.Tactic.GCongr

/-!
# Localizing negative directions of a Newton Hankel form

A weighted conjugate pair is a difference of two real squares. Polynomial
interpolation fixes values on finitely many nonzero nodes while a monomial
factor suppresses the polynomial on a smaller disk.
-/

namespace GRWTSK.NumberTheory.NewtonHankelInertia

open Polynomial
open scoped BigOperators

/-- The contribution of a conjugate pair has a positive and a negative square. -/
theorem conjugate_pair_squares (c s z : ℂ) (hs : s ^ 2 = 2 * c) :
    2 * (c * z ^ 2).re = (s * z).re ^ 2 - (s * z).im ^ 2 := by
  calc
    2 * (c * z ^ 2).re = ((s * z) ^ 2).re := by
      rw [mul_pow, hs, mul_assoc]
      simp
    _ = _ := by rw [pow_two, Complex.mul_re]; ring

/-- The first shifted three-by-three moment matrix of nodes 1, i, -i with weights
1, m, m. A repeated conjugate pair still gives a negative determinant for m > 0. -/
theorem repeated_pair_det (m : ℝ) :
    Matrix.det (!![1, 1 - 2 * m, 1; 1 - 2 * m, 1, 1 + 2 * m; 1, 1 + 2 * m, 1] :
      Matrix (Fin 3) (Fin 3) ℝ)
      = -16 * m ^ 2 := by
  rw [Matrix.det_fin_three]
  simp
  ring

variable {ι : Type*} [DecidableEq ι]

/-- Scale the interpolated data to compensate exactly for the factor X^m. -/
noncomputable def localized (s : Finset ι) (v f : ι → ℂ) (m : ℕ) : ℂ[X] :=
  X ^ m * Lagrange.interpolate s v (fun i => f i / v i ^ m)

/-- The localization factor leaves the prescribed value at each selected node. -/
theorem eval_localized_node (s : Finset ι) (v f : ι → ℂ) (m : ℕ)
    (hs : Set.InjOn v s) {i : ι} (hi : i ∈ s) (hv : v i ≠ 0) :
    (localized s v f m).eval (v i) = f i := by
  rw [localized, eval_mul, eval_pow, eval_X, Lagrange.eval_interpolate_at_node _ hs hi]
  exact mul_div_cancel₀ (f i) (pow_ne_zero m hv)

/-- A radius ratio is required only at nodes carrying nonzero interpolation data. -/
theorem eval_localized_norm_le (s : Finset ι) (v f : ι → ℂ) (m : ℕ)
    (z : ℂ) (θ : ℝ)
    (hr : ∀ i ∈ s, f i ≠ 0 → ‖z / v i‖ ≤ θ) :
    ‖(localized s v f m).eval z‖ ≤
      θ ^ m * ∑ i ∈ s, ‖f i‖ * ‖(Lagrange.basis s v i).eval z‖ := by
  have he : (localized s v f m).eval z =
      ∑ i ∈ s, (z / v i) ^ m * f i * (Lagrange.basis s v i).eval z := by
    simp only [localized, eval_mul, eval_pow, eval_X, Lagrange.interpolate_apply,
      eval_finsetSum, eval_C, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    rw [div_pow]
    ring
  rw [he, Finset.mul_sum]
  apply (norm_sum_le ..).trans
  apply Finset.sum_le_sum
  intro i hi
  by_cases hf : f i = 0
  · simp [hf]
  · simp only [norm_mul, norm_pow, ← mul_assoc]
    gcongr
    exact hr i hi hf

end GRWTSK.NumberTheory.NewtonHankelInertia
