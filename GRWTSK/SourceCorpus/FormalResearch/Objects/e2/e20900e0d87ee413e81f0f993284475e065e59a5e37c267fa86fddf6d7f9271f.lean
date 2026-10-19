/-!
# Common contractive boundary law

One invariant law and one uniform factor cover the registered schedules.  The
certificate states asymptotic convergence in law, not finite path equality.
-/

namespace Mathematics.StratifiedBoundary

structure CommonContractiveBoundaryLaw
    (Schedule Measure Law : Type u) where
  invariantLaw : Law
  applyKernel : Schedule → Measure → Measure
  distance : Measure → Measure → Nat
  lawAsMeasure : Law → Measure
  contractionNumerator : Nat
  contractionDenominator : Nat
  contractionStrict :
    contractionNumerator < contractionDenominator
  invariant :
    ∀ schedule,
      applyKernel schedule (lawAsMeasure invariantLaw) =
        lawAsMeasure invariantLaw
  uniformlyContractive :
    ∀ schedule left right,
      contractionDenominator *
          distance
            (applyKernel schedule left)
            (applyKernel schedule right) ≤
        contractionNumerator * distance left right

end Mathematics.StratifiedBoundary
