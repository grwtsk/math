import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.CrystallineTensor.CrystallineSite
import Folder.CrystallineTensor.Crystal

/-!
# Folder.Theorem.CrystallineTensor.Crystal

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline site and crystal contract exposure facts.
Ontology: proof.crystalline.crystal
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace Crystal

theorem thickening_has_nilpotent_ideal
    (T : Folder.CrystallineTensor.InfinitesimalThickening) :
    T.nilpotentIdeal :=
  Folder.CrystallineTensor.thickening_has_nilpotent_ideal T

theorem crystalline_cover_is_cover
    {C : Folder.CrystallineTensor.CrystallineSite}
    {X : C.Site.Obj}
    (U : Folder.CrystallineTensor.CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  Folder.CrystallineTensor.crystalline_cover_is_cover U

theorem crystal_has_compatibility
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.crystalCompatibility :=
  Folder.CrystallineTensor.crystal_has_compatibility F

theorem crystal_has_infinitesimal_rigidity
    {C : Folder.CrystallineTensor.CrystallineSite}
    (F : Folder.CrystallineTensor.Crystal C) :
    F.infinitesimalRigidity :=
  Folder.CrystallineTensor.crystal_has_infinitesimal_rigidity F

end Crystal
end CrystallineTensor
end Theorem
end Folder
