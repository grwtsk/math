# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LimitCorrespondence.Variant4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e60afe451d21be65f93817507a1baaf2fc3f96c` · SHA-256 `4085502022cb14d91902d33b19495d4bf69819ef0565b4accb53b3d34d50922d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Arithmetic.SuccessorCorrespondence

/-!
# Limit arithmetic correspondence

Cylinder-trace stability alone does not inhabit this structure.
-/

namespace Mathematics.StratifiedBoundary

structure LimitArithmeticCorrespondence
    (CylinderTraceValue ArithmeticValue : Type u) where
  cylinderTraceValue : CylinderTraceValue
  arithmeticValue : ArithmeticValue
  exactRealization :
    CylinderTraceValue → ArithmeticValue
  exact :
    exactRealization cylinderTraceValue = arithmeticValue
  projectiveArithmeticSourceRef : String
  exactLimitTraceFormulaRef : String

end Mathematics.StratifiedBoundary
```
