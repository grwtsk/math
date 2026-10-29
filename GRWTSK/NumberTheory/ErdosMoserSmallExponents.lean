/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Lean.Elab.Tactic.Omega

/-!
# The first two exponents of the Erdős–Moser equation

Source statement: Bernd C. Kellner, *On stronger conjectures that imply the
Erdös-Moser conjecture*, arXiv:1003.1646v2 (2012), abstract.
Our `n` counts summands, so the paper's `m` is `n+1`. No stronger conjecture
or result from that paper is assumed. These elementary restricted cases do
not settle the universal exclusion for exponents at least two.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.ErdosMoserSmallExponents

/-- Sum of positive powers from one through `n`, including neither zero nor `n+1`. -/
def sumPowers (k : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => sumPowers k n + (n + 1) ^ k

/-- The exact equation with `n` positive summands. -/
def Solution (k n : Nat) : Prop := sumPowers k n = (n + 1) ^ k

/-- The open Erdős–Moser exclusion, stated without introducing an axiom. -/
def Conjecture : Prop := ∀ k n, 2 ≤ k → 0 < n → ¬ Solution k n

/-- From three summands onward, the linear sum is strictly above the right side. -/
theorem linear_sum_gt (j : Nat) : 3 + j + 1 < sumPowers 1 (3 + j) := by
  induction j with
  | zero => decide
  | succ j ih =>
    have he : 3 + (j + 1) = (3 + j) + 1 := by omega
    rw [he, sumPowers]
    simp only [Nat.pow_one]
    omega

/-- The familiar `1+2=3` is the only solution with exponent one. -/
theorem solution_one_iff (n : Nat) : Solution 1 n ↔ n = 2 := by
  constructor
  · intro h
    by_cases hn : n < 3
    · have hs : n = 0 ∨ n = 1 ∨ n = 2 := by omega
      rcases hs with rfl | rfl | rfl
      · have : ¬ Solution 1 0 := by unfold Solution; decide
        exact False.elim (this h)
      · have : ¬ Solution 1 1 := by unfold Solution; decide
        exact False.elim (this h)
      · rfl
    · have he : n = 3 + (n - 3) := by omega
      have hg := linear_sum_gt (n - 3)
      rw [← he] at hg
      unfold Solution at h
      simp only [Nat.pow_one] at h
      omega
  · intro h
    subst n
    unfold Solution
    decide

/-- The elementary quadratic inequality driving the square-sum induction. -/
theorem next_square_le_twice_square (t : Nat) (ht : 3 ≤ t) :
    (t + 1) ^ 2 ≤ 2 * t ^ 2 := by
  have hmul : 3 * t ≤ t * t := Nat.mul_le_mul_right t ht
  simp only [Nat.pow_two, Nat.add_mul, Nat.mul_add, Nat.one_mul, Nat.mul_one]
  omega

/-- From four summands onward the square sum exceeds the next square. -/
theorem square_sum_gt (j : Nat) : (4 + j + 1) ^ 2 < sumPowers 2 (4 + j) := by
  induction j with
  | zero => decide
  | succ j ih =>
    have he : 4 + (j + 1) = (4 + j) + 1 := by omega
    have hb := next_square_le_twice_square (4 + j + 1) (by omega)
    rw [he, sumPowers]
    omega

/-- No positive-square power sum equals the next square, for any number of terms. -/
theorem not_solution_two (n : Nat) : ¬ Solution 2 n := by
  intro h
  by_cases hn : n < 4
  · have hs : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 := by omega
    rcases hs with rfl | rfl | rfl | rfl
    · exact (by unfold Solution; decide : ¬ Solution 2 0) h
    · exact (by unfold Solution; decide : ¬ Solution 2 1) h
    · exact (by unfold Solution; decide : ¬ Solution 2 2) h
    · exact (by unfold Solution; decide : ¬ Solution 2 3) h
  · have he : n = 4 + (n - 4) := by omega
    have hg := square_sum_gt (n - 4)
    rw [← he] at hg
    exact (Nat.ne_of_lt hg) h.symm

end GRWTSK.NumberTheory.DiophantineEquations.ErdosMoserSmallExponents
