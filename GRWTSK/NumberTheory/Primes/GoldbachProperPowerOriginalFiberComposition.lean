/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSumTransport
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSum
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket

/-!
# Original dependent proper-power mass to fiber-supported mass

This composes the previously proposed finite sigma normalization,
sigma subtype normalization and sigma-to-fiber sum transport.
All underlying dependencies remain SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED. No prime distribution conclusion is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFiberComposition

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSum
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaNormalization
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaWeight
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerFiberSumTransport

/-- Compose the exact finite original-to-fiber identities, without
introducing a hypothesis equal to the target conclusion. -/
theorem originalPacketMass_eq_fiberSupportedMass (q N : ℕ) :
    originalPacketMass q N = fiberSupportedMass q N := by
  calc
    originalPacketMass q N = dependentFiberPacketMass q N :=
      originalPacketMass_eq_dependentFiberPacketMass q N
    _ = sigmaPacketMass q N :=
      dependentFiberPacketMass_eq_sigmaPacketMass q N
    _ = (∑ t : GRWTSK.NumberTheory.Primes.GoldbachProperPowerSigmaFiberEquiv.SigmaSupportedIndex N,
      sigmaWeight q N t) := by
        simpa [sigmaWeight] using sigmaPacketMass_eq_subtype_sum q N
    _ = fiberSupportedMass q N :=
      sigma_subtype_sum_eq_fiberSupportedMass q N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalFiberComposition
