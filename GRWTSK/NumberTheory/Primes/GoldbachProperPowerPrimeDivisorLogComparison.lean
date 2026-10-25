/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound

/-!
# Truncated prime-divisor logarithmic mass bounded by log q

For a nonzero modulus q, finite prime-divisor logarithmic mass
is bounded by log(radical q), hence by log q. No zero-modulus
comparison or asymptotic prime-density claim is made.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeFactorLogBound
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalLog
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRadicalBound

/-- The finite truncated prime-divisor log weight is at most log q. -/
theorem primeDivisorLogMass_le_log (q N : ℕ) (hq : q ≠ 0) :
    primeDivisorLogMass q N ≤ Real.log (q : ℝ) := by
  calc
    primeDivisorLogMass q N ≤
        ∑ p ∈ q.primeFactors, Real.log (p : ℝ) :=
      primeDivisorLogMass_le_primeFactors_sum q N hq
    _ = Real.log (Nat.radical q : ℝ) :=
      primeFactors_log_sum_eq_log_radical q
    _ ≤ Real.log (q : ℝ) := by
      apply Real.log_le_log
      · exact_mod_cast Nat.radical_pos q
      · exact_mod_cast radical_le_of_ne_zero q hq

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison
