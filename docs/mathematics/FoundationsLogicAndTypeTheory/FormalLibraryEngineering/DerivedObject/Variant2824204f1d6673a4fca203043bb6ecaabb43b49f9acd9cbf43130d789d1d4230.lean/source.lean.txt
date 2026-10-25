import Folder.DerivedSheaf.DerivedObject

/-!
# Folder.Theorem.DerivedSheaf.DerivedObject

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived-object boundary facts, not BinaryMatrix data.
Ontology: derived.derived_object
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem derived_object_localized
    (D : Folder.DerivedSheaf.DerivedObject) :
    D.localizationByQuasiIso :=
  Folder.DerivedSheaf.derived_object_localized D

theorem quasi_iso_induces_cohomology_iso
    {A B : Folder.DerivedSheaf.SectionComplex}
    (q : Folder.DerivedSheaf.QuasiIsomorphism A B) :
    q.inducesCohomologyIso :=
  Folder.DerivedSheaf.quasi_iso_induces_cohomology_iso q

end DerivedSheaf
end Theorem
end Folder
