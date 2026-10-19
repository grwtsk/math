import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.Theorem.CrystallineTensor.IntegrableConnection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports integrable-connection contract exposure facts.
Ontology: proof.crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace IntegrableConnection

theorem connection_flat
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.flat :=
  Folder.CrystallineTensor.connection_flat nabla

theorem connection_integrable
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    (nabla : Folder.CrystallineTensor.Connection F) :
    nabla.integrable :=
  Folder.CrystallineTensor.connection_integrable nabla

theorem horizontal_section_is_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {X : C.Site.Obj}
    (s : Folder.CrystallineTensor.HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  Folder.CrystallineTensor.horizontal_section_is_horizontal s

end IntegrableConnection
end CrystallineTensor
end Theorem
end Folder
