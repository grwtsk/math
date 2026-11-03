/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachFullVectorError

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Explicit even comparison vectors and complete signed margins

Construct y = lambda * evenPart(x) from the full source vector. Its mass and
both complete error energies are evaluated exactly. Scaling the even model
does not supply the missing arithmetic sector imbalance: the margin formula
still depends on A-B, where A and B are actual source sector energies.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No universal strict margin or prime-sector ratio bound is supplied.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachScaledEvenModel
open GoldbachReflectionSectors GoldbachSignedSectorTransfer GoldbachFullVectorError

def evenModel (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ) : Fin (N + 1) → ℝ :=
  fun i => λ * evenPart N x i

theorem even_odd_pairing_zero (N : ℕ) (x : Fin (N + 1) → ℝ) :
    pairing N (evenPart N x) (oddPart N x) = 0 := by
  have h := pairing_reflection N (evenPart N x) (oddPart N x)
  rw [reflection_evenPart, reflection_oddPart] at h
  simp only [pairing, mul_neg, Finset.sum_neg_distrib] at h
  linarith

theorem energy_sector_combination (N : ℕ) (x : Fin (N + 1) → ℝ) (a b : ℝ) :
    energy N (fun i => a * evenPart N x i + b * oddPart N x i) =
      a ^ 2 * energy N (evenPart N x) + b ^ 2 * energy N (oddPart N x) := by
  have h : energy N (fun i => a * evenPart N x i + b * oddPart N x i) =
      a ^ 2 * energy N (evenPart N x) + b ^ 2 * energy N (oddPart N x) +
        (2 * a * b) * pairing N (evenPart N x) (oddPart N x) := by
    unfold energy pairing
    simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [even_odd_pairing_zero] at h
  simpa using h

theorem evenModel_mass (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ) :
    signedMass N (evenModel N x λ) = λ ^ 2 * energy N (evenPart N x) := by
  unfold signedMass pairing energy
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [reflection, evenModel, evenPart, Fin.rev_rev]
  ring

theorem evenModel_difference_energy (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ) :
    energy N (x - evenModel N x λ) =
      (1 - λ) ^ 2 * energy N (evenPart N x) + energy N (oddPart N x) := by
  have heq : x - evenModel N x λ =
      fun i => (1 - λ) * evenPart N x i + 1 * oddPart N x i := by
    funext i
    simp only [Pi.sub_apply, evenModel, evenPart, oddPart]
    ring
  rw [heq, energy_sector_combination]
  ring

theorem evenModel_sum_energy (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ) :
    energy N (x + evenModel N x λ) =
      (1 + λ) ^ 2 * energy N (evenPart N x) + energy N (oddPart N x) := by
  have heq : x + evenModel N x λ =
      fun i => (1 + λ) * evenPart N x i + 1 * oddPart N x i := by
    funext i
    simp only [Pi.add_apply, evenModel, evenPart, oddPart]
    ring
  rw [heq, energy_sector_combination]
  ring

/-- The exact margin exposes the original signed imbalance instead of hiding it. -/
theorem evenModel_margin (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ) :
    (signedMass N (evenModel N x λ)) ^ 2 -
        energy N (x - evenModel N x λ) * energy N (x + evenModel N x λ) =
      2 * λ ^ 2 * energy N (evenPart N x) *
        (energy N (evenPart N x) - energy N (oddPart N x)) -
        (energy N (evenPart N x) + energy N (oddPart N x)) ^ 2 := by
  rw [evenModel_mass, evenModel_difference_energy, evenModel_sum_energy]
  ring

theorem goldbach_of_scaled_even_margin (N : ℕ) (λ : ℝ)
    (hmodel : 0 < λ ^ 2 * energy N (evenPart N (primeVector N)))
    (hmargin : (energy N (evenPart N (primeVector N)) +
        energy N (oddPart N (primeVector N))) ^ 2 <
      2 * λ ^ 2 * energy N (evenPart N (primeVector N)) *
        (energy N (evenPart N (primeVector N)) - energy N (oddPart N (primeVector N)))) :
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  apply goldbach_of_full_vector_margin N (evenModel N (primeVector N) λ)
  · rwa [evenModel_mass]
  · have h := evenModel_margin N (primeVector N) λ
    linarith

/-- If the actual source has no strict imbalance, no scaling of this model helps. -/
theorem no_positive_evenModel_margin_of_no_source_imbalance
    (N : ℕ) (x : Fin (N + 1) → ℝ) (λ : ℝ)
    (hsector : energy N (evenPart N x) ≤ energy N (oddPart N x)) :
    (signedMass N (evenModel N x λ)) ^ 2 ≤
      energy N (x - evenModel N x λ) * energy N (x + evenModel N x λ) := by
  have h := evenModel_margin N x λ
  have hcoef : 0 ≤ 2 * λ ^ 2 * energy N (evenPart N x) :=
    mul_nonneg (mul_nonneg (by norm_num) (sq_nonneg λ)) (energy_nonnegative N _)
  have hprod := mul_nonpos_of_nonneg_of_nonpos hcoef (sub_nonpos.mpr hsector)
  nlinarith [sq_nonneg (energy N (evenPart N x) + energy N (oddPart N x))]

end GRWTSK.NumberTheory.Primes.GoldbachScaledEvenModel
