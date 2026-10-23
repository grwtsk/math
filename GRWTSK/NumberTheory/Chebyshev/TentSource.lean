/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Real.TentWeight
import GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact triangularly weighted arithmetic in consecutive-square intervals

This is a new smoothed observable, not a redefinition of squareIncrement.
The normalized tent vanishes at both square endpoints. Its finite Riesz
identity is elementary and does not assume any explicit formula for zeta.
A weighted prime-power sum can imply a prime only after the complete proper-
power budget has been charged. Source draft; NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.TentSource

open scoped BigOperators
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
open GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.ConfigurationCounts

noncomputable section

def squareCenter (n : ℕ) : ℝ :=
  ((n : ℝ) ^ 2 + ((n : ℝ) + 1) ^ 2) / 2

def squareRadius (n : ℕ) : ℝ := (2 * (n : ℝ) + 1) / 2

theorem squareRadius_pos (n : ℕ) : 0 < squareRadius n := by
  have hn := Nat.cast_nonneg (α := ℝ) n
  unfold squareRadius
  linarith

theorem center_sub_radius (n : ℕ) :
    squareCenter n - squareRadius n = ((n ^ 2 : ℕ) : ℝ) := by
  simp only [squareCenter, squareRadius, Nat.cast_pow]
  ring

theorem center_add_radius (n : ℕ) :
    squareCenter n + squareRadius n = (((n + 1) ^ 2 : ℕ) : ℝ) := by
  simp only [squareCenter, squareRadius, Nat.cast_pow, Nat.cast_add, Nat.cast_one]
  ring

/-- The arithmetic index and the real tent coordinates are bound explicitly. -/
def squareWeight (n m : ℕ) : ℝ := tent (squareCenter n) (squareRadius n) (m : ℝ)

theorem squareWeight_nonneg (n m : ℕ) : 0 ≤ squareWeight n m :=
  tent_nonneg _ _ _

theorem squareWeight_le_one (n m : ℕ) : squareWeight n m ≤ 1 :=
  tent_le_one _ _ _ (squareRadius_pos n)

theorem squareWeight_pos_iff (n m : ℕ) :
    0 < squareWeight n m ↔ n ^ 2 < m ∧ m < (n + 1) ^ 2 := by
  rw [squareWeight, tent_pos_iff _ _ _ (squareRadius_pos n),
    center_sub_radius, center_add_radius]
  norm_cast

theorem squareWeight_eq_zero_of_outside (n m : ℕ)
    (hout : ¬ (n ^ 2 < m ∧ m < (n + 1) ^ 2)) : squareWeight n m = 0 := by
  apply le_antisymm _ (squareWeight_nonneg n m)
  apply le_of_not_gt
  exact fun hp => hout ((squareWeight_pos_iff n m).mp hp)

/-- Finite arithmetic source. Proper powers remain present, with their actual weights. -/
def squareTentMangoldt (n : ℕ) : ℝ :=
  ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
    ArithmeticFunction.vonMangoldt m * squareWeight n m

/-- A common finite prefix is used at all three arguments. It is not an improper integral. -/
def firstRieszPrefix (N : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 2 N, ArithmeticFunction.vonMangoldt m * max (u - (m : ℝ)) 0

theorem firstRieszPrefix_second_difference (N : ℕ) (x h : ℝ) (hh : 0 < h) :
    firstRieszPrefix N (x + h) - 2 * firstRieszPrefix N x +
      firstRieszPrefix N (x - h) =
        h * ∑ m ∈ Finset.Icc 2 N,
          ArithmeticFunction.vonMangoldt m * tent x h (m : ℝ) := by
  unfold firstRieszPrefix
  simp only [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  calc
    _ = ArithmeticFunction.vonMangoldt m *
        (max (x + h - (m : ℝ)) 0 - 2 * max (x - (m : ℝ)) 0 +
          max (x - h - (m : ℝ)) 0) := by ring
    _ = _ := by rw [hinge_second_difference x h (m : ℝ) hh]; ring

/-- Extending the inventory below the left square only adds zero tent weights. -/
theorem squareTentMangoldt_eq_prefix (n : ℕ) (hn : 1 ≤ n) :
    squareTentMangoldt n =
      ∑ m ∈ Finset.Icc 2 ((n + 1) ^ 2),
        ArithmeticFunction.vonMangoldt m * squareWeight n m := by
  unfold squareTentMangoldt
  apply Finset.sum_subset
  · intro m hm
    have hm' := Finset.mem_Ioc.mp hm
    exact Finset.mem_Icc.mpr ⟨by nlinarith, hm'.2⟩
  · intro m hm hnot
    have hm' := Finset.mem_Icc.mp hm
    have hlow : m ≤ n ^ 2 := by
      by_contra h
      exact hnot (Finset.mem_Ioc.mpr ⟨by omega, hm'.2⟩)
    rw [squareWeight_eq_zero_of_outside n m (by intro h; omega), mul_zero]

/-- The exact source is the normalized second difference of its first Riesz prefix. -/
theorem squareTentMangoldt_eq_riesz_difference (n : ℕ) (hn : 1 ≤ n) :
    squareTentMangoldt n =
      (firstRieszPrefix ((n + 1) ^ 2) (((n + 1) ^ 2 : ℕ) : ℝ) -
        2 * firstRieszPrefix ((n + 1) ^ 2) (squareCenter n) +
        firstRieszPrefix ((n + 1) ^ 2) ((n ^ 2 : ℕ) : ℝ)) / squareRadius n := by
  have h := firstRieszPrefix_second_difference
    ((n + 1) ^ 2) (squareCenter n) (squareRadius n) (squareRadius_pos n)
  rw [center_add_radius, center_sub_radius] at h
  change _ = squareRadius n *
    (∑ m ∈ Finset.Icc 2 ((n + 1) ^ 2),
      ArithmeticFunction.vonMangoldt m * squareWeight n m) at h
  rw [← squareTentMangoldt_eq_prefix n hn] at h
  apply (eq_div_iff (ne_of_gt (squareRadius_pos n))).2
  simpa only [mul_comm] using h.symm

theorem squareTentMangoldt_nonneg (n : ℕ) : 0 ≤ squareTentMangoldt n := by
  exact Finset.sum_nonneg (fun m _ =>
    mul_nonneg ArithmeticFunction.vonMangoldt_nonneg (squareWeight_nonneg n m))

/-- In a prime-free interval all surviving weighted mass is bounded by the
actual, complete proper-prime-power mass. A sieve candidate set is not used. -/
theorem prime_free_tent_le_properMass (n : ℕ) (hzero : squareCount n = 0) :
    squareTentMangoldt n ≤ properPrimePowerMass (n ^ 2) ((n + 1) ^ 2) := by
  classical
  unfold squareTentMangoldt properPrimePowerMass
  rw [Finset.sum_filter]
  apply Finset.sum_le_sum
  intro m hm
  by_cases hp : Nat.Prime m
  · have hwzero : squareWeight n m = 0 := by
      apply le_antisymm _ (squareWeight_nonneg n m)
      apply le_of_not_gt
      intro hpos
      have hbounds := (squareWeight_pos_iff n m).mp hpos
      have hcount := (squareCount_pos_iff n).mpr ⟨m, hp, hbounds.1, hbounds.2⟩
      rw [hzero] at hcount
      exact (lt_irrefl 0) hcount
    simp [hp, hwzero]
  · simpa only [hp, not_false_eq_true, if_true, mul_one] using
      mul_le_mul_of_nonneg_left (squareWeight_le_one n m)
        (ArithmeticFunction.vonMangoldt_nonneg (n := m))

/-- A tent sum above the inherited complete correction bound supplies a prime
without unsmoothing. This does not supply a lower bound for the tent sum. -/
theorem prime_in_square_of_tent_mass (n : ℕ) (hn : 1 ≤ n)
    (hmass : squareCorrectionBudget n < squareTentMangoldt n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  apply (squareCount_pos_iff n).mp
  apply Nat.pos_of_ne_zero
  intro hzero
  have hbound := (prime_free_tent_le_properMass n hzero).trans
    (properMass_le_log_budget n hn)
  exact (not_le_of_gt hmass) hbound

/-- Both square endpoints have zero weight, including a prime-square endpoint. -/
theorem squareWeight_endpoints (n : ℕ) :
    squareWeight n (n ^ 2) = 0 ∧ squareWeight n ((n + 1) ^ 2) = 0 := by
  constructor
  · exact squareWeight_eq_zero_of_outside n _ (by intro h; omega)
  · exact squareWeight_eq_zero_of_outside n _ (by intro h; omega)

end
end GRWTSK.NumberTheory.Chebyshev.TentSource
