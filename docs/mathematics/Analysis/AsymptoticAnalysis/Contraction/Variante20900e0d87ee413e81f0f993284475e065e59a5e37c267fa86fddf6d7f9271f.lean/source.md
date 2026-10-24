# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Contraction.Variante20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7be802737f6e4db6c93a979bec952a9d1d883d8` · SHA-256 `e20900e0d87ee413e81f0f993284475e065e59a5e37c267fa86fddf6d7f9271f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
