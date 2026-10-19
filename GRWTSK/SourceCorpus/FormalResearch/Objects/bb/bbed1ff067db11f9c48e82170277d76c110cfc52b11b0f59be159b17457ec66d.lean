import Folder.CanonicalPath.FamiliesIndexClass

/-!
# Folder.CanonicalPath.GlobalIndexNonzeroBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module marks pointwise global index nonzero as a boundary target.
Ontology: canonical.pointwise_global_index_nonzero
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Pointwise global K-index nonvanishing is recorded as a strong theorem target.

The field `knownAsTheorem` defaults to false to keep the boundary honest.
-/
structure PointwiseGlobalIndexNonzeroTarget
    (M : DerivedSheaf.MellKTheory)
    (F : ArithmeticFamily) where
  indexFamily : FamiliesIndexClass M F
  pointwiseNonzero : Prop
  knownAsTheorem : Bool := false
  warning :
    String :=
      "Pointwise global nonvanishing is a theorem target, not a current theorem."

theorem pointwise_global_index_nonzero_if_supplied
    {M : DerivedSheaf.MellKTheory}
    {F : ArithmeticFamily}
    (T : PointwiseGlobalIndexNonzeroTarget M F)
    (h : T.pointwiseNonzero) :
    T.pointwiseNonzero :=
  h

end CanonicalPath
end Folder
