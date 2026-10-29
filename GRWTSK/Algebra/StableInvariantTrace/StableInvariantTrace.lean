/-!
# Abstract stable invariant trace laws

The carrier operations are explicit fields so a cylinder trace can expose
exactly which algebraic structure has descended from its finite cuts.
-/

namespace Mathematics.StratifiedBoundary.Trace

universe uAlgebra

structure StableInvariantTrace
    (Algebra : Type uAlgebra) where
  unit : Algebra
  multiply : Algebra → Algebra → Algebra
  star : Algebra → Algebra
  trace : Algebra → ℂ
  normalized :
    trace unit = 1
  cyclic :
    ∀ left right,
      trace (multiply left right) =
        trace (multiply right left)
  starPreserving :
    ∀ observable,
      trace (star observable) =
        star (trace observable)
  positiveReal :
    ∀ observable,
      0 ≤
        (trace
          (multiply
            (star observable)
            observable)).re
  positiveImaginaryZero :
    ∀ observable,
      (trace
        (multiply
          (star observable)
          observable)).im = 0

theorem StableInvariantTrace.trace_tracial
    {Algebra : Type uAlgebra}
    (stable : StableInvariantTrace Algebra)
    (left right : Algebra) :
    stable.trace
        (stable.multiply left right) =
      stable.trace
        (stable.multiply right left) :=
  stable.cyclic left right

theorem StableInvariantTrace.trace_positive
    {Algebra : Type uAlgebra}
    (stable : StableInvariantTrace Algebra)
    (observable : Algebra) :
    0 ≤
      (stable.trace
        (stable.multiply
          (stable.star observable)
          observable)).re :=
  stable.positiveReal observable

end Mathematics.StratifiedBoundary.Trace
