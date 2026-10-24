# Complete source: GRWTSK.Algebra.FiniteCut.Variant3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4790f6c332886508dbbab9bcd4f445906cac0a2` · SHA-256 `3d6546569859df748aa963b0078ba458c5691ebe08cd3eaa65f1fadc4cbca9b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Closure
import Mathematics.StratifiedBoundary.OrdinalTally.Stratum

/-!
# Finite reflective spectral-closure cut

Each stratum is an already certified finite Connes--bitfield closure package.
The ordinal code indexes that package; it does not manufacture any of its
proofs.
-/

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure FiniteReflectiveCut
    (limits : LimitSemantics)
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  stratum : OrdinalStratum limits
  limitRegistry :
    CountableLimitRegistry
  stratumRegistered :
    stratum.RegisteredIn limitRegistry
  closure :
    BoundaryLawSquareRootPackage
      Scale TestFunction Schedule
  tallyPositionOrderRef : String
  tallyPositionOrderImmutable : Prop
  tallyPositionOrderProof :
    tallyPositionOrderImmutable
  stratumAssignmentCertificateId : String
  ordinalIndexAuthoritative : Bool := false
  ordinalIndexNonauthoritative :
    ordinalIndexAuthoritative = false := by
      rfl

namespace FiniteReflectiveCut

abbrev State
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  Bitfield cut.closure.system.bits

abbrev Law
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  cut.closure.lawCarrier.Law

abbrev Automorphism
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  cut.closure.crossedProduct.Automorphism

abbrev Algebra
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) :=
  MatrixFiberCrossedProductElement
    cut.closure.system
    cut.closure.crossedProduct.Automorphism
    cut.closure.spectral.dim

noncomputable def stableTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) : ℂ :=
  canonicalMatrixFiberCrossedProductTrace
    observable

theorem stableTrace_eq_canonical
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (cut :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule)
    (observable : cut.Algebra) :
    cut.stableTrace observable =
      canonicalMatrixFiberCrossedProductTrace
        observable :=
  rfl

end FiniteReflectiveCut

end Mathematics.StratifiedBoundary.Boundary
```
