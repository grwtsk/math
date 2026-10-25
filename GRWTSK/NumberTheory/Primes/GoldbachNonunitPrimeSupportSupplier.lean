/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedLogCorrection
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor

/-!
# Prime-only nonunit support from the ZMod coprimality criterion

This supplies the remaining pointwise prime support assumption in
the combined finite budget. The separate hlog condition is retained.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupportSupplier

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisor
open GRWTSK.NumberTheory.Primes.GoldbachNonunitCombinedBudget
open GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport

/-- A prime is a nonunit modulo q exactly when it divides q. -/
theorem nonunit_prime_iff_dvd (p q : ℕ) (hp : Nat.Prime p) :
    (¬ IsUnit (p : ZMod q)) ↔ p ∣ q := by
  rw [ZMod.isUnit_iff_coprime]
  exact not_coprime_iff_dvd p q hp

/-- Supply the prime-support hypothesis in the finite psi budget. -/
theorem nonunitPsiMass_le_prime_count_add_log2_correction_of_log
    (q N : ℕ) (hq : q ≠ 0)
    (hlog : ∀ p ∈ finitePrimeDivisors q N,
      Real.log (p : ℝ) ≤ Real.log (N : ℝ)) :
    nonunitPsiMass q N ≤
      (finitePrimeDivisorCount q N : ℝ) * Real.log (N : ℝ) +
        (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  exact nonunitPsiMass_le_prime_count_add_log2_correction q N hq
    (fun p hp => nonunit_prime_iff_dvd p q hp) hlog

end GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupportSupplier
