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
