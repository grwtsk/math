import Folder.Basic

/-!
# Folder.CrystallineIndex.CohomologyClass

Radiation role: research-boundary
BinaryMatrix spine: This module supplies cohomology-class placeholders, not BinaryMatrix carriers.
Ontology: crystalline_index.cohomology_class
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Typed target for index and characteristic classes.

This does not construct crystalline cohomology; it only names the ambient
cohomology theory in which boundary contracts may store classes.
-/
structure CohomologyTheory where
  Base : Type _
  Coefficients : Type _
  degree : Type _
  Class : degree → Type _
  label : String

structure CohomologyClass
    (H : CohomologyTheory) where
  degree : H.degree
  value : H.Class degree
  label : String

structure ClassEquality
    {H : CohomologyTheory}
    (a b : CohomologyClass H) where
  equal : a.degree = b.degree
  compatible : Prop
  compatible_certified : compatible

theorem class_equality_compatible
    {H : CohomologyTheory}
    {a b : CohomologyClass H}
    (E : ClassEquality a b) :
    E.compatible :=
  E.compatible_certified

end CrystallineIndex
end Folder
