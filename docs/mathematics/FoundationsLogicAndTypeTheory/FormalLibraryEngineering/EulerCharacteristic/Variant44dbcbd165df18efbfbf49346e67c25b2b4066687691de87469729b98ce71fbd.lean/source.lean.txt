import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.Theorem.DerivedSheaf.EulerCharacteristic

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Euler-characteristic facts, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem euler_characteristic_signed_sum
    {C : Folder.DerivedSheaf.SectionComplex}
    (chi : Folder.DerivedSheaf.EulerCharacteristic C) :
    chi.value_eq_signed_sum :=
  Folder.DerivedSheaf.euler_characteristic_signed_sum chi

theorem derived_index_interprets_as_index
    (I : Folder.DerivedSheaf.DerivedIndex) :
    I.interpretsAsIndex :=
  Folder.DerivedSheaf.derived_index_interprets_as_index I

theorem derived_index_has_euler_characteristic
    (I : Folder.DerivedSheaf.DerivedIndex) :
    ∃ chi : Folder.DerivedSheaf.EulerCharacteristic I.complex, chi = I.euler :=
  Folder.DerivedSheaf.derived_index_has_euler_characteristic I

end DerivedSheaf
end Theorem
end Folder
