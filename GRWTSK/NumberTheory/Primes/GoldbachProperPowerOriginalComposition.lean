/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFiberComposition
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport

/-!
# Original proper-power packet to supported original mass

Composition of the dependent-fiber, fiber-to-box, and box-to-original
finite sum transports. This is a source proof candidate only; no
compiler or kernel acceptance is claimed.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalComposition

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFiberComposition
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

/-- Exact original packet normalization with no extra hypothesis. -/
theorem originalPacketMass_eq_originalSupportedMass (q N : ℕ) :
    originalPacketMass q N = originalSupportedMass q N := by
  calc
    originalPacketMass q N = fiberSupportedMass q N :=
      originalPacketMass_eq_fiberSupportedMass q N
    _ = (∑ t : BoxIndex N, boxWeight q N t) :=
      fiberSupportedMass_eq_box_sum q N
    _ = originalSupportedMass q N :=
      box_sum_eq_originalSupportedMass q N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalComposition
