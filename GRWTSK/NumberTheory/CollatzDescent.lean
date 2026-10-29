/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Lean.Elab.Tactic.Omega

/-!
# Collatz descent and a convergent infinite family

The unaccelerated map agrees on positive integers with the definition in
Terence Tao, *Almost all orbits of the Collatz map attain almost bounded values*,
arXiv:1909.03562v7 (2026), abstract. No density theorem from that paper is used.
The map is extended to zero only to make iteration a total natural-number function.

This elementary source argument gives a convergence-preserving doubling step,
powers of two, and equivalence with strict positive descent for every input > 1.
The universal descent premise is deliberately left unresolved. These are source
proof candidates until source-bound checking, not a solution of the conjecture.
-/

namespace GRWTSK.NumberTheory.ArithmeticDynamics.CollatzDescent

/-- Unaccelerated Collatz step on naturals, with the harmless extension `step 0 = 0`. -/
def step (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

/-- Iterate the map; recursion is on the number of steps, not the orbit value. -/
def orbit : Nat → Nat → Nat
  | 0, n => n
  | k + 1, n => orbit k (step n)

/-- Exact finite reachability, with no prescribed bound on the witness. -/
def ReachesOne (n : Nat) : Prop := ∃ k, orbit k n = 1

/-- All positive starting values reach one. This is a statement, not an axiom. -/
def Conjecture : Prop := ∀ n, 0 < n → ReachesOne n

/-- Every input above one eventually reaches a smaller positive value. -/
def PositiveDescent : Prop :=
  ∀ n, 1 < n → ∃ k, 0 < orbit k n ∧ orbit k n < n

/-- Concatenating two finite orbit segments preserves the starting value. -/
theorem orbit_add (a b n : Nat) : orbit (a + b) n = orbit b (orbit a n) := by
  induction a generalizing n with
  | zero => simp only [Nat.zero_add, orbit]
  | succ a ih =>
    simp only [Nat.succ_add, orbit]
    exact ih (step n)

/-- A known convergent orbit can be prefixed by any finite orbit segment. -/
theorem reachesOne_of_orbit (k n : Nat) (h : ReachesOne (orbit k n)) :
    ReachesOne n := by
  obtain ⟨j, hj⟩ := h
  exact ⟨k + j, (orbit_add k j n).trans hj⟩

/-- One is reached with zero steps. -/
theorem reachesOne_one : ReachesOne 1 := ⟨0, rfl⟩

/-- Doubling adds exactly one halving step, including at zero. -/
theorem step_double (n : Nat) : step (2 * n) = n := by
  have he : (2 * n) % 2 = 0 := by omega
  unfold step
  rw [ite_eq_left he]
  omega

/-- Convergence of an input implies convergence of its double. -/
theorem reachesOne_double (n : Nat) (h : ReachesOne n) : ReachesOne (2 * n) := by
  obtain ⟨k, hk⟩ := h
  refine ⟨k + 1, ?_⟩
  change orbit k (step (2 * n)) = 1
  rw [step_double]
  exact hk

/-- Every power of two reaches one; this is an infinite restricted family. -/
theorem reachesOne_pow_two (k : Nat) : ReachesOne (2 ^ k) := by
  induction k with
  | zero => exact reachesOne_one
  | succ k ih =>
    simpa only [Nat.pow_succ, Nat.mul_comm] using reachesOne_double (2 ^ k) ih

/-- Finite repeated doubling preserves convergence of any already convergent input. -/
theorem reachesOne_pow_two_mul (k n : Nat) (h : ReachesOne n) :
    ReachesOne (2 ^ k * n) := by
  induction k with
  | zero => simpa only [Nat.pow_zero, Nat.one_mul] using h
  | succ k ih =>
    have he : 2 ^ (k + 1) * n = 2 * (2 ^ k * n) := by
      simp only [Nat.pow_succ, Nat.mul_comm, Nat.mul_left_comm]
    rw [he]
    exact reachesOne_double (2 ^ k * n) ih

/-- Strong induction makes the missing uniform descent obligation exact.
A density-one or bounded search result cannot discharge the universal premise. -/
theorem conjecture_iff_positiveDescent : Conjecture ↔ PositiveDescent := by
  constructor
  · intro h n hn
    obtain ⟨k, hk⟩ := h n (by omega)
    exact ⟨k, by rw [hk]; omega, by rw [hk]; exact hn⟩
  · intro h n
    induction n using Nat.strongRecOn with
    | ind n ih =>
      intro hn
      by_cases he : n = 1
      · subst n
        exact reachesOne_one
      · have hn' : 1 < n := by omega
        obtain ⟨k, hkpos, hkn⟩ := h n hn'
        exact reachesOne_of_orbit k n (ih (orbit k n) hkn hkpos)

end GRWTSK.NumberTheory.ArithmeticDynamics.CollatzDescent
