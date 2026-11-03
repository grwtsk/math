/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachReflectionSectors

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Signed transfer to the literal prime-weight source vector.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No comparison vector or universal error bound is supplied. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachSignedSectorTransfer
open GoldbachReflectionSectors GoldbachWeighted

def evenError (N : ℕ) (x y : Fin (N + 1) → ℝ) : ℝ :=
  energy N (evenPart N x) - energy N (evenPart N y)
def oddError (N : ℕ) (x y : Fin (N + 1) → ℝ) : ℝ :=
  energy N (oddPart N x) - energy N (oddPart N y)

theorem energy_reflection (N : ℕ) (x : Fin (N + 1) → ℝ) :
    energy N (reflection N x) = energy N x := by
  unfold energy reflection
  exact Fintype.sum_equiv Fin.revPerm _ _ (by intro i; simp)

theorem total_sector_energy (N : ℕ) (x : Fin (N + 1) → ℝ) :
    energy N (evenPart N x) + energy N (oddPart N x) = energy N x := by
  have h : energy N (evenPart N x) + energy N (oddPart N x) =
      (energy N x + energy N (reflection N x)) / 2 := by
    unfold energy
    rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro i _
    simp only [evenPart, oddPart, reflection]
    ring
  rw [energy_reflection] at h
  linarith

theorem source_mass_signed_transfer (N : ℕ) (y : Fin (N + 1) → ℝ) :
    goldbachLogMass N =
      energy N (evenPart N y) - energy N (oddPart N y) +
        evenError N (primeVector N) y - oddError N (primeVector N) y := by
  rw [goldbachLogMass_eq_sector_difference]
  unfold evenError oddError
  ring

/-- A common signed error cancels exactly; only its difference matters. -/
theorem source_mass_eq_model_gap_of_equal_errors
    (N : ℕ) (y : Fin (N + 1) → ℝ)
    (h : evenError N (primeVector N) y = oddError N (primeVector N) y) :
    goldbachLogMass N = energy N (evenPart N y) - energy N (oddPart N y) := by
  rw [source_mass_signed_transfer N y, h]
  ring

/-- One-sided losses suffice, but they must concern the actual prime vector. -/
theorem goldbach_of_signed_margin (N : ℕ) (y : Fin (N + 1) → ℝ)
    (evenLoss oddGain : ℝ)
    (he : -evenLoss ≤ evenError N (primeVector N) y)
    (ho : oddError N (primeVector N) y ≤ oddGain)
    (hm : evenLoss + oddGain <
      energy N (evenPart N y) - energy N (oddPart N y)) :
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  apply (goldbachLogMass_pos_iff N).mp
  have h := source_mass_signed_transfer N y
  linarith

end GRWTSK.NumberTheory.Primes.GoldbachSignedSectorTransfer
