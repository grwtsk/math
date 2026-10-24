/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison

/-!
# Positive-modulus finite nonunit proper-power mass bound

The exact finite exponent-count chain gives mass ≤ log2(N) * D(q,N).
For nonzero q, the radical comparison supplies D(q,N) ≤ log q.
No prime-density or prime-counting error estimate is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorMassBound
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLogComparison
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeDivisorLog

/-- Finite proper-power nonunit mass is at most log2(N) * log(q)
for nonzero natural moduli q. -/
theorem nonunitProperPowerMass_le_log2_mul_log (q N : ℕ)
    (hq : q ≠ 0) :
    nonunitProperPowerMass q N ≤
      (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
  calc
    nonunitProperPowerMass q N ≤
        (Nat.log2 N : ℝ) * primeDivisorLogMass q N :=
      nonunitProperPowerMass_le_log2_mul_primeDivisorLogMass q N
    _ ≤ (Nat.log2 N : ℝ) * Real.log (q : ℝ) := by
      exact mul_le_mul_of_nonneg_left
        (primeDivisorLogMass_le_log q N hq)
        (Nat.cast_nonneg _)

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerPositiveModulusBound
