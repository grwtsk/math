# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Separation.Variant66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaa368443c607398c6a5d8fc0c8d0700cee1854f` · SHA-256 `66bc3a1cbbb783711410c5e339f6c0cdf88be36c3ec785ea90b4898a40cb04c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.LimitState
import Mathematics.StratifiedBoundary.Trace.LimitObservable

/-!
# Four-coordinate limit architecture

This bundle is intentionally not a quotient.  The ordinal stratum, persistent
boundary-record identity and address, projective boundary state, and limit
spectral observable remain independently typed coordinates.
-/

namespace Mathematics.StratifiedBoundary

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.Frontier
open Mathematics.StratifiedBoundary.OrdinalTally
open Mathematics.StratifiedBoundary.Trace

universe uScale uTest uSchedule uPersistent

structure StratifiedLimitObjects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    (PersistentId : Type uPersistent) where
  ordinalStratum :
    StratumBoundaryIndex limits
  boundaryAddress :
    BoundaryAddress
  persistentIdentity :
    PersistentId
  projectiveBoundaryState :
    LimitBoundaryState system
  addressMatchesProjectiveState : Prop
  addressCompatibilityProof :
    addressMatchesProjectiveState
  limitSpectralObservable :
    TraceObservableLimitCertificate system
  spectralObservableDerivedFromFiniteTraces : Prop
  spectralOriginProof :
    spectralObservableDerivedFromFiniteTraces

namespace StratifiedLimitObjects

def boundaryCode
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (objects :
      StratifiedLimitObjects system PersistentId) :
    LimitBoundaryCode PersistentId where
  stratumBoundary :=
    objects.ordinalStratum.value
  address := objects.boundaryAddress
  persistentId := objects.persistentIdentity

def authoritativeEffect
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (_objects :
      StratifiedLimitObjects system PersistentId) :
    Bool :=
  false

@[simp] theorem nonauthoritative
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {PersistentId : Type uPersistent}
    (objects :
      StratifiedLimitObjects system PersistentId) :
    objects.authoritativeEffect = false :=
  rfl

end StratifiedLimitObjects

end Mathematics.StratifiedBoundary
```
