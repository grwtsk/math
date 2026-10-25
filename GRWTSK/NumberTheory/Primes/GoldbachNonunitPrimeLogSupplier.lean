/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupportSupplier
import Mathlib.Tactic

/-!
# Finite prime-divisor logarithm bound from support membership

Membership in finitePrimeDivisors q N entails p≤N and primality.
Thus log p≤log N, including empty supports at N=0 or N=1.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeLogSupplier

open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupportSupplier

/-- Prime-divisor membership supplies the logarithmic bound. -/
theorem primeDivisor_log_le_log_cutoff (q N p : ℕ)
    (hp : p ∈ finitePrimeDivisors q N) :
    Real.log (p : ℝ) ≤ Real.log (N : ℝ) := by
  unfold finitePrimeDivisors at hp
  have hmem := Finset.mem_filter.mp hp
  have hp_le : p ≤ N := by
    have hr : p < N + 1 := Finset.mem_range.mp hmem.1
    omega
  have hp_prime : Nat.Prime p := hmem.2.1
  apply Real.log_le_log
  · exact_mod_cast hp_prime.pos
  · exact_mod_cast hp_le

/-- The positive-modulus finite nonunit psi estimate needs no
additional prime-support or prime-logarithm hypotheses. -/
theorem nonunitPsiMass_le_prime_count_add_log2_correction
    (q N : ℕ) (hq : q ≠ 0) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  exact nonunitPsiMass_le_prime_count_add_log2_correction_of_log q N hq
    (fun p hp => primeDivisor_log_le_log_cutoff q N p hp)

end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeLogSupplier
