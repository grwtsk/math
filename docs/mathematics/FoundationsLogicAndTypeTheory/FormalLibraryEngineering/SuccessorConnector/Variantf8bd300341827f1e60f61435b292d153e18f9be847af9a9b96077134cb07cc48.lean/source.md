# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorConnector.Variantf8bd300341827f1e60f61435b292d153e18f9be847af9a9b96077134cb07cc48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f78f25e6b0c6d90e8889ad2a0d315ae27d54634` · SHA-256 `f8bd300341827f1e60f61435b292d153e18f9be847af9a9b96077134cb07cc48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.FiniteCut

/-!
# Successor-stratum connector

State and law projection, schedule restriction, and kernel compatibility are
separate fields.  A schedule lift is required to derive projection of the
unique invariant law; mere restriction is not enough.
-/

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure SuccessorCutConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  successorStratum :
    high.stratum.value =
      low.stratum.value + 1
  embedState :
    low.State → high.State
  projectState :
    high.State → low.State
  project_embed :
    Function.LeftInverse projectState embedState
  projectStateNonexpansive :
    ∀ left right,
      low.closure.system.metric.distance
          (projectState left)
          (projectState right) ≤
        high.closure.system.metric.distance
          left right
  embedLaw :
    low.Law → high.Law
  projectLaw :
    high.Law → low.Law
  projectLaw_embedLaw :
    Function.LeftInverse projectLaw embedLaw
  projectLawNonexpansive :
    ∀ left right,
      low.closure.lawCarrier.wasserstein
          (projectLaw left)
          (projectLaw right) ≤
        high.closure.lawCarrier.wasserstein
          left right
  restrictSchedule :
    Schedule → Schedule
  liftSchedule :
    Schedule → Schedule
  restrict_lift :
    Function.LeftInverse
      restrictSchedule liftSchedule
  kernelCompatible :
    ∀ highSchedule law,
      projectLaw
          (high.closure.lawCarrier.push
            (high.closure.dynamics.kernel
              highSchedule)
            law) =
        low.closure.lawCarrier.push
          (low.closure.dynamics.kernel
            (restrictSchedule highSchedule))
          (projectLaw law)
  stateLawProjectionCompatible : Prop
  stateLawProjectionCompatibleProof :
    stateLawProjectionCompatible
  persistentLineagePreserved : Prop
  persistentLineagePreservedProof :
    persistentLineagePreserved

theorem successor_invariant_law_projects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    (connector :
      SuccessorCutConnector low high) :
    connector.projectLaw
        high.closure.dynamics.invariantLaw =
      low.closure.dynamics.invariantLaw := by
  apply low.closure.dynamics.invariantLaw_unique
  intro schedule
  calc
    low.closure.lawCarrier.push
        (low.closure.dynamics.kernel schedule)
        (connector.projectLaw
          high.closure.dynamics.invariantLaw) =
      low.closure.lawCarrier.push
        (low.closure.dynamics.kernel
          (connector.restrictSchedule
            (connector.liftSchedule schedule)))
        (connector.projectLaw
          high.closure.dynamics.invariantLaw) := by
            rw [connector.restrict_lift schedule]
    _ =
      connector.projectLaw
        (high.closure.lawCarrier.push
          (high.closure.dynamics.kernel
            (connector.liftSchedule schedule))
          high.closure.dynamics.invariantLaw) :=
        (connector.kernelCompatible
          (connector.liftSchedule schedule)
          high.closure.dynamics.invariantLaw).symm
    _ =
      connector.projectLaw
        high.closure.dynamics.invariantLaw := by
          rw [high.closure.dynamics.commonInvariant]

end Mathematics.StratifiedBoundary.Boundary
```
