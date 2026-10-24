# Complete source: GRWTSK.Algebra.CylinderTrace.Varianta89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3efe01952b9add7896ea09cf0aa9890019b72e40` · SHA-256 `a89ef90277b6ac2cf962802279a63ad1777a2e2ee6daff9e5479b735cd2e182f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Trace.SuccessorTrace

/-!
# Cylinder observables and limit trace

The quotient relation is certificate-bearing.  Its witness must come from
equality after pullback to a common finite stage, and trace compatibility
makes the lifted trace well-defined.
-/

namespace Mathematics.StratifiedBoundary.Trace

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure CylinderPresentation
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (traceSystem :
      ProjectiveTraceSystem boundary) where
  stage : Nat
  observable :
    (boundary.cut stage).Algebra

structure CylinderEquivalenceCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (traceSystem :
      ProjectiveTraceSystem boundary) where
  equivalent :
    CylinderPresentation traceSystem →
      CylinderPresentation traceSystem → Prop
  reflexive :
    Reflexive equivalent
  symmetric :
    Symmetric equivalent
  transitive :
    Transitive equivalent
  commonPullbackImpliesEquivalent :
    ∀ {left right}
      (stage : Nat)
      (left_le : left.stage ≤ stage)
      (right_le : right.stage ≤ stage),
      traceSystem.pullback
          left_le left.observable =
        traceSystem.pullback
          right_le right.observable →
      equivalent left right
  equivalentHasCommonPullback :
    ∀ {left right},
      equivalent left right →
      ∃ stage
        (left_le : left.stage ≤ stage)
        (right_le : right.stage ≤ stage),
        traceSystem.pullback
            left_le left.observable =
          traceSystem.pullback
            right_le right.observable
  traceRespects :
    ∀ {left right},
      equivalent left right →
      (finiteCrossedProductStableTrace
        (boundary.cut left.stage)).trace
          left.observable =
        (finiteCrossedProductStableTrace
          (boundary.cut right.stage)).trace
            right.observable

def CylinderEquivalenceCertificate.setoid
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem) :
    Setoid (CylinderPresentation traceSystem) where
  r := certificate.equivalent
  iseqv :=
    ⟨certificate.reflexive,
      certificate.symmetric,
      certificate.transitive⟩

abbrev CylinderObservable
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem) :=
  Quotient certificate.setoid

noncomputable def limitTrace
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem) :
    CylinderObservable certificate → ℂ :=
  Quotient.lift
    (fun presentation =>
      (finiteCrossedProductStableTrace
        (boundary.cut presentation.stage)).trace
          presentation.observable)
    (by
      intro left right related
      exact certificate.traceRespects related)

@[simp] theorem limitTrace_mk
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem)
    (presentation :
      CylinderPresentation traceSystem) :
    limitTrace certificate
        (Quotient.mk certificate.setoid
          presentation) =
      (finiteCrossedProductStableTrace
        (boundary.cut presentation.stage)).trace
          presentation.observable :=
  rfl

structure CylinderTraceLawCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (equivalence :
      CylinderEquivalenceCertificate traceSystem) where
  unit :
    CylinderObservable equivalence
  multiply :
    CylinderObservable equivalence →
      CylinderObservable equivalence →
      CylinderObservable equivalence
  star :
    CylinderObservable equivalence →
      CylinderObservable equivalence
  operationsDescendFromFiniteCuts : Prop
  operationsDescendProof :
    operationsDescendFromFiniteCuts
  normalized :
    limitTrace equivalence unit = 1
  tracial :
    ∀ left right,
      limitTrace equivalence
          (multiply left right) =
        limitTrace equivalence
          (multiply right left)
  starPreserving :
    ∀ observable,
      limitTrace equivalence
          (star observable) =
        star (limitTrace equivalence observable)
  positive :
    ∀ observable,
      0 ≤
        (limitTrace equivalence
          (multiply
            (star observable)
            observable)).re

theorem cylinder_trace_well_defined
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    (certificate :
      CylinderEquivalenceCertificate traceSystem)
    {left right :
      CylinderPresentation traceSystem}
    (related :
      certificate.equivalent left right) :
    (finiteCrossedProductStableTrace
      (boundary.cut left.stage)).trace
        left.observable =
      (finiteCrossedProductStableTrace
        (boundary.cut right.stage)).trace
          right.observable :=
  certificate.traceRespects related

theorem limit_trace_tracial
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    {equivalence :
      CylinderEquivalenceCertificate traceSystem}
    (laws :
      CylinderTraceLawCertificate equivalence)
    (left right :
      CylinderObservable equivalence) :
    limitTrace equivalence
        (laws.multiply left right) =
      limitTrace equivalence
        (laws.multiply right left) :=
  laws.tracial left right

theorem limit_trace_positive
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {traceSystem :
      ProjectiveTraceSystem boundary}
    {equivalence :
      CylinderEquivalenceCertificate traceSystem}
    (laws :
      CylinderTraceLawCertificate equivalence)
    (observable :
      CylinderObservable equivalence) :
    0 ≤
      (limitTrace equivalence
        (laws.multiply
          (laws.star observable)
          observable)).re :=
  laws.positive observable

end Mathematics.StratifiedBoundary.Trace
```
