/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic

/-!+# Distinct-denominator Erdős–Straus representations

Source statement: Thomas Bloom, Erdős Problem #242,
https://www.erdosproblems.com/latex/242 (consulted 2026-10-28).
The catalogue requires `n > 2` and strictly ordered positive denominators.
The conjecture below is a proposition, not an axiom or a proved theorem.
The explicit elementary families are local source proof candidates;
compilation, fresh kernel checking, and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.NumberTheory.DiophantineEquations.ErdosStraus

/-- The exact distinct-denominator representation required by Problem #242. -/
def Representation (n : ℕ) : Prop :=
  ∃ x y z : ℕ, 0 < x ∧ x < y ∧ y < z ∧
    (4 : ℚ) / n = 1 / (x : ℚ) + 1 / (y : ℚ) + 1 / (z : ℚ)

/-- Imported problem statement only; no proof of the full conjecture is asserted. -/
def Conjecture : Prop := ∀ n : ℕ, 2 < n → Representation n

/-- For `n = 2k`, use denominators `k`, `k+1`, `k(k+1)`.
The restriction `2 ≤ k` is essential for strict ordering. -/
theorem representation_two_mul (k : ℕ) (hk : 2 ≤ k) :
    Representation (2 * k) := by
  have hkpos : 0 < k := by omega
  have hkq : (k : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hkpos)
  have hk1q : ((k : ℚ) + 1) ≠ 0 := by positivity
  refine ⟨k, k + 1, k * (k + 1), hkpos, by omega, ?_, ?_⟩
  · nlinarith
  · push_cast
    field_simp [hkq, hk1q]
    <;> ring

/-- For `n = 4k+3`, first subtract `1/(k+1)`, then split the
remaining unit fraction `1/a` into `1/(a+1) + 1/(a(a+1))`. -/
theorem representation_four_mul_add_three (k : ℕ) :
    Representation (4 * k + 3) := by
  let a := (4 * k + 3) * (k + 1)
  have ha : 3 ≤ a := by dsimp [a]; nlinarith
  have hka : k + 1 < a + 1 := by dsimp [a]; nlinarith
  have hk1q : ((k : ℚ) + 1) ≠ 0 := by positivity
  have hnq : (4 * (k : ℚ) + 3) ≠ 0 := by positivity
  have hbig : (4 * (k : ℚ) + 3) * ((k : ℚ) + 1) + 1 ≠ 0 := by positivity
  refine ⟨k + 1, a + 1, a * (a + 1), by omega, hka, ?_, ?_⟩
  · nlinarith
  · dsimp [a]
    push_cast
    field_simp [hk1q, hnq, hbig]
    <;> ring

/-- Even inputs greater than two have distinct-denominator representations. -/
theorem representation_of_even (n : ℕ) (hn : 2 < n) (he : n % 2 = 0) :
    Representation n := by
  have hn' : n = 2 * (n / 2) := by omega
  rw [hn']
  apply representation_two_mul
  omega

/-- Inputs congruent to three modulo four have representations. -/
theorem representation_of_mod_four_eq_three (n : ℕ) (hn : n % 4 = 3) :
    Representation n := by
  have hn' : n = 4 * (n / 4) + 3 := by omega
  rw [hn']
  exact representation_four_mul_add_three (n / 4)

/-- The two explicit families reduce the conjecture to `n ≡ 1 (mod 4)`.
This is a conditional equivalence, not a solution of the remaining class. -/
theorem conjecture_iff_residue_one :
    Conjecture ↔ ∀ n : ℕ, 2 < n → n % 4 = 1 → Representation n := by
  constructor
  · intro h n hn _
    exact h n hn
  · intro h n hn
    by_cases he : n % 2 = 0
    · exact representation_of_even n hn he
    · by_cases h1 : n % 4 = 1
      · exact h n hn h1
      · apply representation_of_mod_four_eq_three
        omega

end GRWTSK.NumberTheory.DiophantineEquations.ErdosStraus
