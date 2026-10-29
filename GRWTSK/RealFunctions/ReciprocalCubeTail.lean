/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Positivity

/-!
# A finite reciprocal-cube tail with its exact lower cutoff

The proof is a finite telescope; no convergence hypothesis or infinite-sum
interchange is used. The lower endpoint is strictly greater than the positive
integer cutoff D. This supplies the absolute budget only for a separately
identified proper tail, leaving its consumer's signed head unchanged.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Series.ReciprocalCubeTail

/-- The elementary telescoping majorant for one reciprocal cube. -/
theorem reciprocal_cube_le_square_difference {x : ℝ} (hx : 0 < x) :
    1 / (x + 1) ^ 3 ≤ 1 / (2 * x ^ 2) - 1 / (2 * (x + 1) ^ 2) := by
  have hx1 : 0 < x + 1 := by linarith
  have hid : (2 * x + 1) / (2 * x ^ 2 * (x + 1) ^ 2) =
      1 / (2 * x ^ 2) - 1 / (2 * (x + 1) ^ 2) := by
    field_simp [hx.ne', hx1.ne'] <;> ring
  rw [← hid]
  apply (div_le_div_iff₀ (by positivity : 0 < (x + 1) ^ 3)
    (by positivity : 0 < 2 * x ^ 2 * (x + 1) ^ 2)).mpr
  have hp : 0 ≤ (3 * x + 1) * (x + 1) ^ 2 := by positivity
  nlinarith

/-- The terminal square is retained before the final nonnegative term is
discarded. In particular, the k=0 interval is empty. -/
theorem sum_shifted_reciprocal_cube_le (D k : ℕ) (hD : 1 ≤ D) :
    (∑ d ∈ Finset.Icc (D + 1) (D + k), 1 / (d : ℝ) ^ 3) ≤
      1 / (2 * (D : ℝ) ^ 2) - 1 / (2 * ((D + k : ℕ) : ℝ) ^ 2) := by
  induction k with
  | zero => simp
  | succ k ih =>
      rw [show D + (k + 1) = (D + k) + 1 by omega,
        Finset.sum_Icc_succ_top (by omega : D + 1 ≤ (D + k) + 1)]
      have hxN : 0 < D + k := by omega
      have hx : (0 : ℝ) < (D + k : ℕ) := by exact_mod_cast hxN
      have hs := reciprocal_cube_le_square_difference hx
      have hs' : 1 / (((D + k) + 1 : ℕ) : ℝ) ^ 3 ≤
          1 / (2 * ((D + k : ℕ) : ℝ) ^ 2) -
            1 / (2 * (((D + k) + 1 : ℕ) : ℝ) ^ 2) := by
        simpa only [Nat.cast_add, Nat.cast_one] using hs
      linarith

/-- Uniform finite reciprocal-cube tail. Both an empty interval and an upper
endpoint smaller than D are allowed; D itself must be positive. -/
theorem sum_Icc_reciprocal_cube_le {D N : ℕ} (hD : 1 ≤ D) :
    (∑ d ∈ Finset.Icc (D + 1) N, 1 / (d : ℝ) ^ 3) ≤
      1 / (2 * (D : ℝ) ^ 2) := by
  by_cases hDN : D ≤ N
  · have h := sum_shifted_reciprocal_cube_le D (N - D) hD
    rw [show D + (N - D) = N by omega] at h
    exact h.trans (sub_le_self _ (by positivity))
  · have he : Finset.Icc (D + 1) N = ∅ :=
      Finset.Icc_eq_empty_of_lt (by omega)
    rw [he, Finset.sum_empty]
    positivity

end GRWTSK.Analysis.Series.ReciprocalCubeTail
