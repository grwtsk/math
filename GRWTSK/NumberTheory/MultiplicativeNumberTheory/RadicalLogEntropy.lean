/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib radical results retain Bhavik Mehta, Arend Mellendijk and Jeremy Tan's
upstream authorship and Apache-2.0 license. Other imports retain their upstream licenses. -/
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-!
# Radical logarithms and the finite uniform residue entropy

This is the explicit finite Shannon sum for a uniform distribution, in nats.
No entropy-decrement argument, CRT independence theorem, or arithmetic
independence of Mobius values is asserted. `radical 0 = 1` follows the
upstream totalized convention; the residue entropy is applied only to a
positive modulus. SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Primes.RadicalLogEntropy

open UniqueFactorizationMonoid
open scoped BigOperators

/-- The exact finite sum defining entropy of the uniform law on n labels. -/
def uniformResidueEntropy (n : ℕ) : ℝ :=
  -∑ _i : Fin n, (n : ℝ)⁻¹ * Real.log ((n : ℝ)⁻¹)

theorem uniformResidueEntropy_eq_log {n : ℕ} (hn : 0 < n) :
    uniformResidueEntropy n = Real.log (n : ℝ) := by
  have hnR : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  simp only [uniformResidueEntropy, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul, Real.log_inv]
  field_simp [hnR]
  <;> ring

/-- Distinct prime factors only; no unproved cast or logarithmic-product interface. -/
theorem sum_log_primeFactors (q : ℕ) :
    (∑ p ∈ q.primeFactors, Real.log (p : ℝ)) =
      Real.log ((radical q : ℕ) : ℝ) := by
  rw [Nat.radical_eq_prod_primeFactors, Nat.cast_prod]
  exact (Real.log_prod (fun p hp =>
    Nat.cast_ne_zero.mpr (Nat.mem_primeFactors.mp hp).1.ne_zero)).symm

/-- An exact finite entropy budget, not a statement about arithmetic randomness. -/
theorem uniform_radical_entropy (q : ℕ) :
    uniformResidueEntropy (radical q) = ∑ p ∈ q.primeFactors, Real.log (p : ℝ) := by
  rw [uniformResidueEntropy_eq_log (Nat.radical_pos q), sum_log_primeFactors]

/-- The totalized zero-size sum is not a probability law. -/
theorem uniformResidueEntropy_zero : uniformResidueEntropy 0 = 0 := by
  simp [uniformResidueEntropy]

end GRWTSK.NumberTheory.Primes.RadicalLogEntropy
