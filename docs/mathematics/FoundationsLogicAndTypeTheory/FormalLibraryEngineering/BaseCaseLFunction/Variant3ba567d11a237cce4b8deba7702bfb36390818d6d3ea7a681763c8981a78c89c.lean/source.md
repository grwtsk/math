# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseLFunction.Variant3ba567d11a237cce4b8deba7702bfb36390818d6d3ea7a681763c8981a78c89c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7fc87023f64a52c734f4d4fa4c4033e6840ddf` · SHA-256 `3ba567d11a237cce4b8deba7702bfb36390818d6d3ea7a681763c8981a78c89c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Core.DualPivot
import Folder.Research.ArithmeticBoundary

/-!
# Folder.DerivedSheaf.BaseCaseLFunction

Radiation role: research-boundary
BinaryMatrix spine: This module records base-case L-function witness data, not BinaryMatrix data.
Ontology: base.lfunction_data
Pivot role: spectral
Zero typology: l-function
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
External or contract-level data for a base-case L-function.

For an elliptic curve over Q, the traditional central point may be `s = 1`.
The project uses the normalized spectral pivot `1/2`, so any translation to
the unitary normalization must be explicit.
-/
structure BaseCaseLFunctionData where
  CurveData : Type _
  LFunctionData : Type _
  arithmeticSourceLabel : String
  rawCriticalCenter : ℝ
  normalizedCriticalCenter : ℝ
  center_eq_spectralPivot :
    normalizedCriticalCenter = Core.spectralPivot
  centralValueNonzero : Prop
  centralValueNonzero_certified : centralValueNonzero
  analyticContinuation? : Prop
  functionalEquation? : Prop
  externalWitness : Bool

theorem base_lfunction_center_is_spectral_pivot
    (L : BaseCaseLFunctionData) :
    L.normalizedCriticalCenter = Core.spectralPivot :=
  L.center_eq_spectralPivot

theorem base_lfunction_central_value_nonzero
    (L : BaseCaseLFunctionData) :
    L.centralValueNonzero :=
  L.centralValueNonzero_certified

end DerivedSheaf
end Folder
```
