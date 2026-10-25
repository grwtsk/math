/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound

/-!
# Finite nonunit psi mass with an explicit positive-modulus correction

The proper-power budget C in the existing combined theorem is
supplied by the finite log2(N)*log(q) bound. Prime support and
prime-logarithm hypotheses remain unchanged. This is not an
asymptotic prime-distribution result.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound

/-- Supply the finite proper-power correction without assuming hproper. -/
theorem nonunitPsiMass_le_prime_count_add_log2_correction
    (q N : ℕ) (hq : q ≠ 0)
    (hsupport : ∀ p : ℕ, Nat.Prime p →
      (¬ IsUnit (p : ZMod q) ↔ p ∣ q))
    (hlog : ∀ p ∈ finitePrimeDivisors q N,
      Real.log (p : ℝ) ≤ Real.log (N : ℝ)) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  exact nonunitPsiMass_le_prime_count_add_proper q N
    ((Nat.log2 N : ℝ) * Real.log (q : ℝ))
    hsupport hlog
    (nonunitProperPowerMass_le_log2_mul_log q N hq)

end GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget
