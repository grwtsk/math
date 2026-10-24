/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalComposition
import GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularComposition

/-!
# Exact proper-prime-power finite reindexing

The original dependent packet and rectangular packet have the same
finite mass, by the supported-index equivalence. This is a source
proof candidate: all transitive dependencies still require
elaboration, fresh kernel checking, and axiom audit.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachProperPowerFinalReindex

open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalPacket
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerOriginalComposition
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerRectangularComposition
open GRWTSK.NumberTheory.Primes.GoldbachProperPowerSumTransport

/-- Unconditional finite reindexing of the nonunit proper-prime-power mass,
with no additional reindexing hypothesis. -/
theorem nonunitProperPowerMass_eq_rectangularProperPowerMass (q N : ℕ) :
    nonunitProperPowerMass q N = rectangularProperPowerMass q N := by
  calc
    nonunitProperPowerMass q N = originalPacketMass q N :=
      nonunitProperPowerMass_eq_originalPacketMass q N
    _ = originalSupportedMass q N :=
      originalPacketMass_eq_originalSupportedMass q N
    _ = rectangularSupportedMass q N :=
      originalSupportedMass_eq_rectangularSupportedMass q N
    _ = rectangularProperPowerMass q N :=
      (rectangularProperPowerMass_eq_rectangularSupportedMass q N).symm

end GRWTSK.NumberTheory.Primes.GoldbachProperPowerFinalReindex
