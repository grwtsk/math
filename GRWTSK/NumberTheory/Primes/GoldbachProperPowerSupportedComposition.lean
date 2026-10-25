/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxNormalization

/-!
# Supported triple packet to original supported mass

Composition of two finite subtype-sum identities. The original
dependent nested-sum normalization and rectangular packet
normalization remain unresolved.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerSupportedComposition

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerTriplePacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxNormalization
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerBoxSumTransport
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

/-- Exact composition from the filtered triple packet to OriginalIndex mass. -/
theorem supportedTriplePacketMass_eq_originalSupportedMass (q N : ℕ) :
    supportedTriplePacketMass q N = originalSupportedMass q N := by
  calc
    supportedTriplePacketMass q N =
        ∑ t : GRWTSK.NumberTheory.Primes.GoldbachProperPowerTripleEquiv.BoxIndex N,
          boxWeight q N t :=
      supportedTriplePacketMass_eq_box_sum q N
    _ = originalSupportedMass q N :=
      box_sum_eq_originalSupportedMass q N

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerSupportedComposition
