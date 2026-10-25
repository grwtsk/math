/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentAggregation
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridgeUnconditional

/-!
# Nonunit proper-power mass as a finite prime-base exponent-count sum

This composes the source-level unconditional divisor packet identity
with the exact exponent-count aggregation. It is finite and does not
assert any prime-density estimate or asymptotic error term.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentCount
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentAggregation
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge

/-- Exact finite prime-base representation of nonunit proper-power mass. -/
theorem nonunitProperPowerMass_eq_exponentLogMass_sum (q N : ℕ) :
    nonunitProperPowerMass q N =
      ∑ p ∈ Finset.range (N + 1),
        if Nat.Prime p ∧ p ∣ q then
          properExponentLogMass p N
        else 0 := by
  calc
    nonunitProperPowerMass q N = divisorProperPowerMass q N :=
      nonunitProperPowerMass_eq_divisor_packet_unconditional q N
    _ = _ := divisorProperPowerMass_eq_exponentLogMass_sum q N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerExponentMassComposition
