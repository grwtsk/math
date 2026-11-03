/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachSignedSectorTransfer
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Analysis.Real.Sqrt

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Complete source-vector control for signed Goldbach reflection mass

All coordinates 0,...,N are retained, with the literal reflection p -> N-p.
The perturbation is the actual prime-log vector minus the comparison vector.
The comparison mass is signed; a positive norm or unsigned energy is insufficient.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
No comparison-vector construction or uniform strict error margin is supplied.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachFullVectorError
open GoldbachReflectionSectors GoldbachSignedSectorTransfer GoldbachWeighted

def signedMass (N : ℕ) (x : Fin (N + 1) → ℝ) : ℝ :=
  pairing N x (reflection N x)

theorem pairing_comm (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    pairing N x y = pairing N y x := by
  unfold pairing
  apply Finset.sum_congr rfl
  intro i _
  ring

/-- Self-adjoint reflection cancels the two ordered mixed terms exactly. -/
theorem signed_polarization (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    signedMass N x - signedMass N y =
      pairing N (x - y) (reflection N (x + y)) := by
  have hc : pairing N x (reflection N y) = pairing N y (reflection N x) := by
    rw [← pairing_reflection, pairing_comm]
  simp only [pairing, reflection] at hc
  simp only [signedMass, pairing, reflection, Pi.sub_apply, Pi.add_apply,
    sub_mul, mul_add, Finset.sum_sub_distrib, Finset.sum_add_distrib]
  linarith

theorem pairing_sq_le_energies (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    (pairing N x y) ^ 2 ≤ energy N x * energy N y := by
  exact Finset.sum_mul_sq_le_sq_mul_sq Finset.univ x y

/-- This is a full L2 error estimate, with no coordinate discarded. -/
theorem signed_mass_error_sq (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    (signedMass N x - signedMass N y) ^ 2 ≤
      energy N (x - y) * energy N (x + y) := by
  rw [signed_polarization]
  have h := pairing_sq_le_energies N (x - y) (reflection N (x + y))
  rwa [energy_reflection] at h

theorem signed_mass_error_abs (N : ℕ) (x y : Fin (N + 1) → ℝ) :
    |signedMass N x - signedMass N y| ≤
      Real.sqrt (energy N (x - y) * energy N (x + y)) := by
  calc
    _ = Real.sqrt ((signedMass N x - signedMass N y) ^ 2) :=
      (Real.sqrt_sq_eq_abs _).symm
    _ ≤ _ := Real.sqrt_le_sqrt (signed_mass_error_sq N x y)

theorem goldbach_source_error_sq (N : ℕ) (y : Fin (N + 1) → ℝ) :
    (goldbachLogMass N - signedMass N y) ^ 2 ≤
      energy N (primeVector N - y) * energy N (primeVector N + y) := by
  simpa only [signedMass, goldbachLogMass_eq_reflection_pairing] using
    signed_mass_error_sq N (primeVector N) y

/-- A strict signed model margin must exceed the complete source error. -/
theorem goldbach_of_full_vector_margin (N : ℕ) (y : Fin (N + 1) → ℝ)
    (hm : 0 < signedMass N y)
    (herr : energy N (primeVector N - y) * energy N (primeVector N + y) <
      (signedMass N y) ^ 2) :
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p + q = N := by
  apply (goldbachLogMass_pos_iff N).mp
  have h := goldbach_source_error_sq N y
  by_contra hn
  have hn' : goldbachLogMass N ≤ 0 := le_of_not_gt hn
  nlinarith [sq_nonneg (goldbachLogMass N),
    mul_nonpos_of_nonpos_of_nonneg hn' hm.le]

end GRWTSK.NumberTheory.Primes.GoldbachFullVectorError
