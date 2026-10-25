# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorCorrespondence.Variant0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `082a47aa6eebf31a81bb7f9e345e12e5ef2113bd` · SHA-256 `0d2f817f90e37ea21ae3a7b22ad5796ef0aa5de4b74b297c6498169755cb53f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.FiniteCorrespondence

/-!
# Successor arithmetic correspondence
-/

namespace Mathematics.StratifiedBoundary

structure SuccessorArithmeticCorrespondence
    (TraceValue ArithmeticValue : Type u) where
  predecessor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  successor :
    FiniteArithmeticCorrespondence TraceValue ArithmeticValue
  traceConnectorRef : String
  arithmeticConnectorRef : String
  compatible : Prop
  compatibilityProof : compatible

end Mathematics.StratifiedBoundary
```
