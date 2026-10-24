# Complete source: GRWTSK.Algebra.StableInvariantTrace.Variantec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d71526b47246105486bdb458ca684113a4c1a487` · SHA-256 `ec6d53f1eef022067c31d3cf7b418d83e3bfe9eb2e95b4fb8a42c4ff66de9ae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
