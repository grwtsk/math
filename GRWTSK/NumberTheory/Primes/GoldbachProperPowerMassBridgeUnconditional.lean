/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridgeOfSupport
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerNonunitSupport

/-!
# Unconditional finite proper-power divisor packet identity

The exact finite reindexing supplier and prime-power unit support
criterion discharge both premises of the original conditional mass
bridge. This is a source proof candidate only; compilation, fresh
kernel checking and transitive axiom audit remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge

open GRWTSK.NumberTheory.Primes.GoldbachNonunitSplit
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerPrimeSupport

/-- Exact finite divisor packet representation, with no extra hypotheses. -/
theorem nonunitProperPowerMass_eq_divisor_packet_unconditional
    (q N : ℕ) :
    nonunitProperPowerMass q N = divisorProperPowerMass q N := by
  apply nonunitProperPowerMass_eq_divisor_packet_of_support q N
  intro p k hp hk
  exact GRWTSK.NumberTheory.Primes.GoldbachProperPowerNonunitSupport.nonunit_prime_power_iff_dvd p q k hp hk

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerMassBridge
