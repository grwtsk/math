/- Copyright (c) 2026 grwtsk contributors. MIT.
Finite count-balancing source draft assistance: OpenAI. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite integer pattern-count balancing

A bounded arithmetic-free supplier for the sharp finite-sample
Walsh energy obstruction. This file proves a lower bound for
arbitrary nonnegative integer counts indexed by any finite type.
The final quotient/remainder energy transport is a separate
obligation. SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- A product of two consecutive integers is nonnegative.
The integrality of n is indispensable. -/
theorem consecutive_integer_product_nonneg (n : ℤ) :
    0 ≤ n * (n - 1) := by
  by_cases hn : 0 ≤ n
  · by_cases hz : n = 0
    · simp [hz]
    · have hp : 1 ≤ n := by omega
      exact mul_nonneg hn (by omega)
  · have hneg : n ≤ -1 := by omega
    exact mul_nonneg_of_nonpos_of_nonpos (by omega) (by omega)

/-- Every integer count lies outside the open interval between two
consecutive integers a and a+1. -/
theorem count_relative_consecutive_nonneg (n a : ℕ) :
    0 ≤ ((n : ℤ) - a) * ((n : ℤ) - a - 1) :=
  consecutive_integer_product_nonneg ((n : ℤ) - a)

/-- The quadratic integer balancing inequality, valid for ANY
finite list of natural-number pattern counts and ANY base a.
It becomes sharp when all counts are a or a+1. -/
theorem finite_count_square_balancing
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (a : ℕ) :
    (2 * (a : ℤ) + 1) * (∑ i ∈ s, (counts i : ℤ)) -
        (s.card : ℤ) * ((a : ℤ) * (a + 1)) ≤
      ∑ i ∈ s, ((counts i : ℤ) ^ 2) := by
  have hsum :
      0 ≤ ∑ i ∈ s,
        (((counts i : ℤ) - a) *
          ((counts i : ℤ) - a - 1)) := by
    apply Finset.sum_nonneg
    intro i _
    exact count_relative_consecutive_nonneg (counts i) a
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib] at *
  have hexpand :
      (∑ i ∈ s,
        (((counts i : ℤ) - a) *
          ((counts i : ℤ) - a - 1))) =
        (∑ i ∈ s, ((counts i : ℤ) ^ 2)) -
          (2 * (a : ℤ) + 1) * (∑ i ∈ s, (counts i : ℤ)) +
            (s.card : ℤ) * ((a : ℤ) * (a + 1)) := by
    simp_rw [mul_sub, sub_mul]
    simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib,
      Finset.sum_const_zero, Finset.sum_const, nsmul_eq_mul]
    ring
  rw [hexpand] at hsum
  linarith


/-- Quotient/remainder specialization of the integer balancing
inequality: if q counts and their total is N, their square sum
is at least (q-r)*a²+r*(a+1)², where N=a*q+r. -/
theorem finite_count_square_div_mod_floor
    {α : Type*} [DecidableEq α]
    (s : Finset α) (counts : α → ℕ) (N : ℕ)
    (hq : 0 < s.card)
    (htotal : (∑ i ∈ s, counts i) = N) :
    ((s.card - N % s.card : ℕ) : ℤ) *
        ((N / s.card : ℤ) ^ 2) +
      (N % s.card : ℤ) *
        (((N / s.card : ℕ) : ℤ) + 1) ^ 2 ≤
      ∑ i ∈ s, ((counts i : ℤ) ^ 2) := by
  have hbase := finite_count_square_balancing s counts (N / s.card)
  have hdiv : N % s.card + s.card * (N / s.card) = N := by
    simpa [Nat.mul_comm] using Nat.mod_add_div N s.card
  have hrem : N % s.card ≤ s.card := Nat.le_of_lt (Nat.mod_lt N hq)
  have htotalZ :
      (∑ i ∈ s, (counts i : ℤ)) = (N : ℤ) := by
    exact_mod_cast htotal
  rw [htotalZ] at hbase
  have hdivZ :
      ((N % s.card : ℕ) : ℤ) +
        (s.card : ℤ) * ((N / s.card : ℕ) : ℤ) = (N : ℤ) := by
    exact_mod_cast hdiv
  have hsubZ :
      (((s.card - N % s.card : ℕ) : ℤ)) =
        (s.card : ℤ) - (N % s.card : ℤ) := by
    exact_mod_cast (Nat.cast_sub hrem : ((s.card - N % s.card : ℕ) : ℤ) =
      (s.card : ℤ) - (N % s.card : ℤ))
  nlinarith [hbase, hdivZ, hsubZ]


end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
