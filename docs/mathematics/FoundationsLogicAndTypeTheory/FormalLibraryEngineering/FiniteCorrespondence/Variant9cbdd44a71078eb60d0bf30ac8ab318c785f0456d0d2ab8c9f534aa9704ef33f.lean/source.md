# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteCorrespondence.Variant9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6973aecb5dbb6ca5da51e041ff685d297979bb0e` · SHA-256 `9cbdd44a71078eb60d0bf30ac8ab318c785f0456d0d2ab8c9f534aa9704ef33f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Exact finite arithmetic correspondence

A stable trace acquires arithmetic meaning only through this separate
certificate.
-/

namespace Mathematics.StratifiedBoundary

structure FiniteArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  traceValue : TraceValue
  arithmeticValue : ArithmeticValue
  realize : TraceValue → ArithmeticValue
  exact :
    realize traceValue = arithmeticValue
  sourceChangeIsomorphismInvariantRef : String
  exactTraceFormulaRef : String

end Mathematics.StratifiedBoundary
```
