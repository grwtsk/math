import Folder.DerivedSheaf.DerivedObject
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.DerivedSheaf.DerivedCategoryBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module marks derived-category boundaries, not BinaryMatrix data.
Ontology: derived.category_boundary
Pivot role: none
Zero typology: none
Contract boundary: boundary
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
Boundary record for the derived-category layer.

The full derived category is not constructed here; this record only states that
complex representatives and quasi-isomorphism localization are supplied as
contract data.
-/
structure DerivedCategoryBoundary where
  complexesRepresentObjects : Prop
  complexesRepresentObjects_certified : complexesRepresentObjects
  quasiIsomorphismsLocalized : Prop
  quasiIsomorphismsLocalized_certified : quasiIsomorphismsLocalized
  fullDerivedCategoryConstructed : Prop := False
  sourceLabel : String

theorem derived_category_boundary_has_complex_representatives
    (B : DerivedCategoryBoundary) :
    B.complexesRepresentObjects :=
  B.complexesRepresentObjects_certified

theorem derived_category_boundary_localizes_quasi_isos
    (B : DerivedCategoryBoundary) :
    B.quasiIsomorphismsLocalized :=
  B.quasiIsomorphismsLocalized_certified

end DerivedSheaf
end Folder
