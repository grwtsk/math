/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Tactic

/-! # Higher polarizations and the stabilizer of the differentiated sigma ratio -/

namespace GRWTSK.NumberTheory.AlpogeHigherPolarizationRecovery

variable {A V : Type*} [AddCommGroup A] [CommGroup V]

/-- Iterated multiplicative differences, at a variable base point. -/
def differences : List A → (A → V) → A → V
  | [], f => f
  | h :: l, f => fun x => differences l f (x + h) / differences l f x

/-- Splitting one input gives the next-order cube. -/
theorem split_difference (a b x : A) (l : List A) (f : A → V) :
    differences (a :: b :: l) f x =
      differences ((a + b) :: l) f x / (differences (a :: l) f x * differences (b :: l) f x) := by
  simp [differences, add_assoc, div_eq_mul_inv, mul_assoc, mul_left_comm, mul_comm]

/-- The three punctured two-torsion poles have trivial translation stabilizer. -/
theorem punctured_torsion_stabilizer (n : ℕ) (T P : A) (hP : n • P = 0 ∧ P ≠ 0)
    (h : ∀ x, (n • (x + T) = 0 ∧ x + T ≠ 0) ↔ (n • x = 0 ∧ x ≠ 0)) : T = 0 := by
  have hsum := ((h P).mpr hP).1
  rw [nsmul_add, hP.1, zero_add] at hsum
  by_contra hn
  have hh : n • ((0 : A) + T) = 0 ∧ (0 : A) + T ≠ 0 := by simpa using And.intro hsum hn
  exact ((h 0).mp hh).2 rfl

/-- The characteristic-zero differential pullback order forces unramifiedness. -/
theorem differential_ramification (e : ℕ) (m : ℤ) (he : 0 < e)
    (h : (e : ℤ) * (m + 1) = 1) : e = 1 ∧ m = 0 := by
  have hp : 0 < (e : ℤ) := by exact_mod_cast he
  have hpos : 0 < m + 1 := by
    by_contra! hh
    have := mul_nonpos_of_nonneg_of_nonpos hp.le hh
    omega
  have hbound : (e : ℤ) ≤ (e : ℤ) * (m + 1) := by nlinarith
  have h1 : (e : ℤ) = 1 := by omega
  rw [h1, one_mul] at h
  exact ⟨by exact_mod_cast h1, by omega⟩

end GRWTSK.NumberTheory.AlpogeHigherPolarizationRecovery
