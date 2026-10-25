import Mathematics.StratifiedBoundary.Trace.ReducedTrace

/-!
# Successor trace pullback

Invariant-law projectivity alone is insufficient; this object also carries
the compatible observable-sector evidence.
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorTraceCompatibility
    (PredecessorObservable SuccessorObservable Value : Type u) where
  pullback : PredecessorObservable → SuccessorObservable
  predecessorTrace : PredecessorObservable → Value
  successorTrace : SuccessorObservable → Value
  matrixCompatibilityRef : String
  groupCompatibilityRef : String
  identityCoefficientCompatibilityRef : String
  normalizationCompatibilityRef : String
  compatible :
    ∀ observable,
      successorTrace (pullback observable) =
        predecessorTrace observable

theorem successor_trace_compatible
    {PredecessorObservable SuccessorObservable Value : Type u}
    (certificate :
      SuccessorTraceCompatibility
        PredecessorObservable SuccessorObservable Value)
    (observable : PredecessorObservable) :
    certificate.successorTrace
        (certificate.pullback observable) =
      certificate.predecessorTrace observable :=
  certificate.compatible observable

end Mathematics.StratifiedBoundary
