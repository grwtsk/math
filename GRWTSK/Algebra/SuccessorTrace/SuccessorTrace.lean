import Mathematics.StratifiedBoundary.Trace.CrossedProductConnector

/-!
# Covariant trace transport across cuts

The full crossed-product map is supplied by a covariant connector.  A
coefficient pullback without its group lift and fiber embedding is not enough
to inhabit these structures.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure SuccessorTraceConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    (boundary :
      SuccessorCutConnector low high) where
  crossedProduct :
    CrossedProductConnector low high
  stateProjectionCovariant : Prop
  stateProjectionCovarianceProof :
    stateProjectionCovariant
  invariantProjectionCompatible : Prop
  invariantProjectionCompatibilityProof :
    invariantProjectionCompatible
  reducedTracePersistentSectorCompatible : Prop
  reducedTracePersistentSectorCompatibilityProof :
    reducedTracePersistentSectorCompatible

namespace SuccessorTraceConnector

def pullback
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {boundary :
      SuccessorCutConnector low high}
    (connector :
      SuccessorTraceConnector boundary) :
    low.Algebra → high.Algebra :=
  connector.crossedProduct.crossedProductMap

end SuccessorTraceConnector

theorem successor_trace_compatible
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {boundary :
      SuccessorCutConnector low high}
    (connector :
      SuccessorTraceConnector boundary)
    (observable : low.Algebra) :
    (finiteCrossedProductStableTrace high).trace
        (connector.pullback observable) =
      (finiteCrossedProductStableTrace low).trace
        observable :=
  connector.crossedProduct.stableTracePreserving
    observable

structure ProjectiveTraceSystem
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  connector :
    ∀ {high low},
      low ≤ high →
      CrossedProductConnector
        (boundary.cut low)
        (boundary.cut high)
  pullback_refl :
    ∀ stage observable,
      (connector (le_refl stage)).crossedProductMap
          observable =
        observable
  pullback_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      observable,
      (connector middle_le).crossedProductMap
          ((connector low_le).crossedProductMap
            observable) =
        (connector
          (low_le.trans middle_le)).crossedProductMap
            observable
  groupLift_refl :
    ∀ stage automorphism,
      (connector (le_refl stage)).groupLift
          automorphism =
        automorphism
  groupLift_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      automorphism,
      (connector middle_le).groupLift
          ((connector low_le).groupLift
            automorphism) =
        (connector
          (low_le.trans middle_le)).groupLift
            automorphism
  coefficientPullback_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      observable,
      (connector middle_le).coefficientPullback
          ((connector low_le).coefficientPullback
            observable) =
        (connector
          (low_le.trans middle_le)).coefficientPullback
            observable
  fiberEmbedding_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      operator,
      (connector middle_le).fiberEmbedding
          ((connector low_le).fiberEmbedding
            operator) =
        (connector
          (low_le.trans middle_le)).fiberEmbedding
            operator
  invariantProjectionCompatible :
    ∀ {high low}
      (low_le : low ≤ high),
      Prop
  invariantProjectionCompatibilityProof :
    ∀ {high low}
      (low_le : low ≤ high),
      invariantProjectionCompatible low_le

namespace ProjectiveTraceSystem

def pullback
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (system : ProjectiveTraceSystem boundary)
    {high low}
    (low_le : low ≤ high) :
    (boundary.cut low).Algebra →
      (boundary.cut high).Algebra :=
  (system.connector low_le).crossedProductMap

theorem pullback_injective
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (system : ProjectiveTraceSystem boundary)
    {high low}
    (low_le : low ≤ high) :
    Function.Injective (system.pullback low_le) :=
  (system.connector low_le).mapInjective

theorem traceCompatible
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (system : ProjectiveTraceSystem boundary)
    {high low}
    (low_le : low ≤ high)
    (observable : (boundary.cut low).Algebra) :
    (finiteCrossedProductStableTrace
      (boundary.cut high)).trace
        (system.pullback low_le observable) =
      (finiteCrossedProductStableTrace
        (boundary.cut low)).trace observable :=
  (system.connector low_le).stableTracePreserving
    observable

end ProjectiveTraceSystem

end Mathematics.StratifiedBoundary.Trace
