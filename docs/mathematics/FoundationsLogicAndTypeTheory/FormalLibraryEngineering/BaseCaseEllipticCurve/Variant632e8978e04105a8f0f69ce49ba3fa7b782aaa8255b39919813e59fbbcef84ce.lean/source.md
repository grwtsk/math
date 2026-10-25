# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseEllipticCurve.Variant632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e868770ec61c089331e983dfb13504edc6ee10df` · SHA-256 `632e8978e04105a8f0f69ce49ba3fa7b782aaa8255b39919813e59fbbcef84ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.EllipticCurve
import Folder.Research.ArithmeticBoundary
import Folder.DerivedSheaf.CriticalCenterNormalization

/-!
# Folder.DerivedSheaf.BaseCaseEllipticCurve

Radiation role: research-boundary
BinaryMatrix spine: This module records base-case arithmetic witness data, not BinaryMatrix data.
Ontology: base.certified_elliptic_curve
Pivot role: spectral
Zero typology: l-function
Contract boundary: external-witness
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
An abstract certified elliptic curve base case.

The curve and L-function data may be external witnesses. This structure does
not prove modularity, BSD, or L-value nonvanishing.
-/
structure CertifiedBaseCaseEllipticCurve where
  FieldData : Type _
  CurveData : Type _
  curveLabel : String
  hasseWeil? : Option Research.ArithmeticBoundary.HasseWeilContract
  modularity? : Option Research.ArithmeticBoundary.ModularityContract
  bsd? : Option Research.ArithmeticBoundary.BSDContract
  lfunction : BaseCaseLFunctionData
  normalization : CriticalCenterNormalization lfunction
  certifiedNonvanishing :
    lfunction.centralValueNonzero
  sourceLabel : String

theorem certified_base_curve_lvalue_nonzero
    (E : CertifiedBaseCaseEllipticCurve) :
    E.lfunction.centralValueNonzero :=
  E.certifiedNonvanishing

theorem certified_base_curve_center_normalized
    (E : CertifiedBaseCaseEllipticCurve) :
    E.normalization.normalize E.lfunction.rawCriticalCenter =
      Core.spectralPivot :=
  E.normalization.sends_raw_to_spectral

end DerivedSheaf
end Folder
```
