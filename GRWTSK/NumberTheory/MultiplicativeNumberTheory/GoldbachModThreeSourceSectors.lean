/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeighted
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Genuine prime residue sectors with the prime-three exception retained.
No equidistribution, singular-series asymptotic or moment upper bound
is inferred. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachModThreeSourceSectors
open GoldbachWeighted

theorem prime_mod_three_zero (p : ℕ) (hp : Nat.Prime p) (hmod : p % 3 = 0) : p = 3 := by
  have hd : 3 ∣ p := Nat.dvd_of_mod_eq_zero hmod
  rcases (Nat.dvd_prime hp).mp hd with h | h <;> omega

theorem nonexceptional_prime_mod_three (p : ℕ) (hp : Nat.Prime p) (hne : p ≠ 3) :
    p % 3 = 1 ∨ p % 3 = 2 := by
  have hz : p % 3 ≠ 0 := by
    intro h
    exact hne (prime_mod_three_zero p hp h)
  omega

theorem nonexceptional_pair_sectors (N p q : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hp3 : p ≠ 3) (hq3 : q ≠ 3) (hs : p + q = N) :
    (N % 3 = 0 ∧ ((p % 3 = 1 ∧ q % 3 = 2) ∨ (p % 3 = 2 ∧ q % 3 = 1))) ∨
    (N % 3 = 1 ∧ p % 3 = 2 ∧ q % 3 = 2) ∨
    (N % 3 = 2 ∧ p % 3 = 1 ∧ q % 3 = 1) := by
  have ha := nonexceptional_prime_mod_three p hp hp3
  have hb := nonexceptional_prime_mod_three q hq hq3
  omega

theorem no_three_for_large_multiple_target (N p q : ℕ)
    (hp : Nat.Prime p) (hq : Nat.Prime q) (hs : p + q = N)
    (hN : 6 < N) (hmod : N % 3 = 0) : p ≠ 3 ∧ q ≠ 3 := by
  constructor
  · intro h
    have hm : q % 3 = 0 := by omega
    have hq3 := prime_mod_three_zero q hq hm
    omega
  · intro h
    have hm : p % 3 = 0 := by omega
    have hp3 := prime_mod_three_zero p hp hm
    omega

def crossSectors (uv : ℕ × ℕ) : Prop :=
  (uv.1 % 3 = 1 ∧ uv.2 % 3 = 2) ∨ (uv.1 % 3 = 2 ∧ uv.2 % 3 = 1)

theorem full_source_large_multiple_cross_sectors (N : ℕ) (hN : 6 < N) (hmod : N % 3 = 0) :
    goldbachLogMass N = ∑ uv ∈ goldbachBox N,
      if crossSectors uv then goldbachLogTerm N uv else 0 := by
  classical
  unfold goldbachLogMass
  apply Finset.sum_congr rfl
  intro uv _
  by_cases hc : crossSectors uv
  · rw [if_pos hc]
  · rw [if_neg hc]
    have hnot : ¬ 0 < goldbachLogTerm N uv := by
      intro ht
      obtain ⟨hp, hq, hs⟩ := (goldbachLogTerm_pos_iff N uv.1 uv.2).mp ht
      have hne := no_three_for_large_multiple_target N uv.1 uv.2 hp hq hs hN hmod
      have hsec := nonexceptional_pair_sectors N uv.1 uv.2 hp hq hne.1 hne.2 hs
      apply hc
      unfold crossSectors
      omega
    exact le_antisymm (not_lt.mp hnot) (goldbachLogTerm_nonneg N uv)

end GRWTSK.NumberTheory.Primes.GoldbachModThreeSourceSectors
