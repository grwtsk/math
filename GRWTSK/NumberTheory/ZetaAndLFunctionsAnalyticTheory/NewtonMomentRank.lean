/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic

/-!
# Finite real spectra matching prescribed Newton sums

A polynomial in the eigenvalue with zero constant coefficient gives a lower
bound on the size of any real multiset matching the required power sums.
The degree-two witness here applies to the first four xi Newton sums.
The integral enclosure of those four constants is external to this file.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.NewtonMomentRank

/-- The ordinary power sum counts every entry, including repeated values. -/
def powerSum {d : ℕ} (x : Fin d → ℝ) (k : ℕ) : ℝ := ∑ i, x i ^ k

/-- The dimension bounds the sum of the values of 2q-q² at any real spectrum. -/
theorem sum_quadratic_le_card {d : ℕ} (q : Fin d → ℝ) :
    ∑ i, (2 * q i - (q i) ^ 2) ≤ (d : ℝ) := by
  calc
    _ ≤ ∑ _i : Fin d, (1 : ℝ) :=
      Finset.sum_le_sum fun i _ => by nlinarith [sq_nonneg (1 - q i)]
    _ = _ := by simp

/-- A polynomial test gives a bound using only the indicated power sums. -/
theorem polynomial_moment_rank_bound {d m : ℕ} (x : Fin d → ℝ) (a : Fin m → ℝ) :
    (∑ j, 2 * a j * powerSum x (j.val + 1)) -
      (∑ j, ∑ k, a j * a k * powerSum x (j.val + k.val + 2)) ≤ (d : ℝ) := by
  let q (i : Fin d) : ℝ := ∑ j, a j * x i ^ (j.val + 1)
  have lin : ∑ i, 2 * q i = ∑ j, 2 * a j * powerSum x (j.val + 1) := by
    simp only [q, powerSum, Finset.mul_sum]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
  have quad : ∑ i, (q i) ^ 2 =
      ∑ j, ∑ k, a j * a k * powerSum x (j.val + k.val + 2) := by
    simp only [q, powerSum, sq, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro j _
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro k _
    apply Finset.sum_congr rfl
    intro i _
    rw [show j.val + k.val + 2 = (j.val + 1) + (k.val + 1) by omega, pow_add]
    ring
  have bound := sum_quadratic_le_card q
  rwa [Finset.sum_sub_distrib, lin, quad] at bound

/-- A degree-two witness for four power sums, in a division-free form. -/
theorem four_power_sums_rank_bound {d : ℕ} (x : Fin d → ℝ) :
    5000 * powerSum x 1 - 7250000 * powerSum x 2 +
      2500000000 * powerSum x 3 - 250000000000 * powerSum x 4 ≤ (d : ℝ) := by
  have h := polynomial_moment_rank_bound x (![2500, -500000] : Fin 2 → ℝ)
  simp [Fin.sum_univ_two] at h
  linarith

/-- These rational interval endpoints suffice for a real spectrum to have at least 41 entries. -/
theorem card_ge_forty_one_of_moment_bounds {d : ℕ} (x : Fin d → ℝ)
    (h₁ : 23104 / 10^6 ≤ powerSum x 1)
    (h₂ : powerSum x 2 ≤ 37173 / 10^9)
    (h₃ : 14417 / 10^11 ≤ powerSum x 3)
    (h₄ : powerSum x 4 ≤ 66304 / 10^14) : 41 ≤ d := by
  have hd := four_power_sums_rank_bound x
  by_contra! h
  have hc : (d : ℝ) ≤ 40 := by exact_mod_cast (show d ≤ 40 by omega)
  linarith

end GRWTSK.NumberTheory.NewtonMomentRank
