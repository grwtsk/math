/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachWeighted
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicReflection
import Mathlib.Data.Fin.Rev
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Goldbach mass as an exact signed reflection-sector energy

The source vector is the actual prime-only logarithmic weight on 0,...,N.
The target reflection is p -> N-p, including both endpoints. Its cyclic index
is the affine reflection a=-1 on ZMod (N+1), not a modular replacement of the
additive equation. The literal ordered Goldbach mass equals the reflection
pairing, hence even-sector energy minus odd-sector energy.

The strict sector imbalance remains an arithmetic obligation for every even
target. Self-adjointness, nonnegative source weights and real eigenvalues do
not supply that imbalance.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No universal Goldbach positivity or analytic minor-arc estimate is supplied.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachReflectionSectors

open GoldbachWeighted

def reflection (N : ℕ) (x : Fin (N + 1) → ℝ) : Fin (N + 1) → ℝ :=
  fun i => x i.rev

def pairing (N : ℕ) (x y : Fin (N + 1) → ℝ) : ℝ := ∑ i, x i * y i
def energy (N : ℕ) (x : Fin (N + 1) → ℝ) : ℝ := ∑ i, (x i) ^ 2
def evenPart (N : ℕ) (x : Fin (N + 1) → ℝ) : Fin (N + 1) → ℝ :=
  fun i => (x i + x i.rev) / 2
def oddPart (N : ℕ) (x : Fin (N + 1) → ℝ) : Fin (N + 1) → ℝ :=
  fun i => (x i - x i.rev) / 2
def primeVector (N : ℕ) : Fin (N + 1) → ℝ := fun i => primeLogWeight i.val

/-- The same affine reflection as in the actual cyclic Hamiltonian. -/
theorem cyclic_index_reflection (N : ℕ) (i : Fin (N + 1)) :
    (i.rev.val : ZMod (N + 1)) = -1 - (i.val : ZMod (N + 1)) := by
  have hs := congrArg (fun k : ℕ => (k : ZMod (N + 1))) i.add_rev_cast
  have hz := ZMod.natCast_self (N + 1)
  push_cast at hs hz
  linear_combination hs + hz

theorem reflection_involutive (N : ℕ) (x : Fin (N + 1) → ℝ) :
    reflection N (reflection N x) = x := by
  funext i
  simp only [reflection, Fin.rev_rev]

/-- Self-adjointness in the full finite real pairing, with no selected-coordinate loss. -/
theorem pairing_reflection (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    pairing N (reflection N x) y = pairing N x (reflection N y) := by
  unfold pairing reflection
  exact Fintype.sum_equiv Fin.revPerm _ _ (by intro i; simp)

theorem reflection_evenPart (N : ℕ) (x : Fin (N + 1) → ℝ) :
    reflection N (evenPart N x) = evenPart N x := by
  funext i
  simp only [reflection, evenPart, Fin.rev_rev]
  ring

theorem reflection_oddPart (N : ℕ) (x : Fin (N + 1) → ℝ) :
    reflection N (oddPart N x) = fun i => -oddPart N x i := by
  funext i
  simp only [reflection, oddPart, Fin.rev_rev]
  ring

theorem even_add_odd (N : ℕ) (x : Fin (N + 1) → ℝ) :
    evenPart N x + oddPart N x = x := by
  funext i
  simp only [Pi.add_apply, evenPart, oddPart]
  ring

theorem energy_nonnegative (N : ℕ) (x : Fin (N + 1) → ℝ) : 0 ≤ energy N x :=
  Finset.sum_nonneg fun i _ => sq_nonneg (x i)

theorem pairing_self_reflection_eq_sector_difference
    (N : ℕ) (x : Fin (N + 1) → ℝ) :
    pairing N x (reflection N x) = energy N (evenPart N x) - energy N (oddPart N x) := by
  unfold pairing energy
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [reflection, evenPart, oddPart]
  ring

/-- Collapse the complete ordered pair box using its literal additive equation. -/
theorem goldbachLogMass_eq_reflected_range (N : ℕ) :
    goldbachLogMass N = ∑ k ∈ Finset.range (N + 1),
      primeLogWeight k * primeLogWeight (N - k) := by
  unfold goldbachLogMass goldbachBox
  rw [Finset.sum_product]
  apply Finset.sum_congr rfl
  intro k hk
  have hkN : k ≤ N := Nat.le_of_lt_succ (Finset.mem_range.mp hk)
  calc
    (∑ v ∈ Finset.range (N + 1), goldbachLogTerm N (k, v)) =
        goldbachLogTerm N (k, N - k) := by
      apply Finset.sum_eq_single (N - k)
      · intro b hb hne
        have hsum : k + b ≠ N := by omega
        simp [goldbachLogTerm, hsum]
      · intro hnot
        exact False.elim (hnot (Finset.mem_range.mpr (by omega)))
    _ = _ := by simp [goldbachLogTerm, Nat.add_sub_of_le hkN]

theorem goldbachLogMass_eq_reflection_pairing (N : ℕ) :
    goldbachLogMass N = pairing N (primeVector N) (reflection N (primeVector N)) := by
  rw [goldbachLogMass_eq_reflected_range, Finset.sum_range]
  unfold pairing
  apply Finset.sum_congr rfl
  intro i _
  have hrev : i.rev.val = N - i.val := by
    have h := i.add_rev_cast
    omega
  simp only [primeVector, reflection, hrev]

/-- A source-exact operator criterion; the strict arithmetic inequality remains open. -/
theorem goldbachLogMass_eq_sector_difference (N : ℕ) :
    goldbachLogMass N =
      energy N (evenPart N (primeVector N)) - energy N (oddPart N (primeVector N)) := by
  rw [goldbachLogMass_eq_reflection_pairing, pairing_self_reflection_eq_sector_difference]

theorem goldbach_iff_strict_sector_imbalance (N : ℕ) :
    (∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N) ↔
      energy N (oddPart N (primeVector N)) < energy N (evenPart N (primeVector N)) := by
  rw [← goldbachLogMass_pos_iff, goldbachLogMass_eq_sector_difference]
  constructor <;> intro h <;> linarith

end GRWTSK.NumberTheory.Primes.GoldbachReflectionSectors
