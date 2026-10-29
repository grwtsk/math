import Mathematics.StratifiedBoundary.Trace.FiniteCrossedProduct

/-!
# Stable finite invariant trace

Positivity, traciality, normalization, and automorphism invariance are
independent proof fields.
-/

namespace Mathematics.StratifiedBoundary

structure StableFiniteInvariantTrace
    (Observable GroupElement : Type u) where
  trace : Observable → Int
  positiveCone : Observable → Prop
  multiply : Observable → Observable → Observable
  unit : Observable
  act : GroupElement → Observable → Observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ trace observable
  tracial :
    ∀ left right,
      trace (multiply left right) =
        trace (multiply right left)
  normalized :
    trace unit = 1
  automorphismInvariant :
    ∀ groupElement observable,
      trace (act groupElement observable) =
        trace observable
  sampledRealizationIndependent : Bool := true
  sampledRealizationIndependent_exact :
    sampledRealizationIndependent = true

end Mathematics.StratifiedBoundary
