import Folder.CrystallineTensor.InfinitesimalThickening
import Folder.ResearchTopos.GrothendieckTopology

/-!
# Folder.CrystallineTensor.CrystallineSite

Radiation role: research-boundary
BinaryMatrix spine: This module supplies an abstract site boundary, not a BinaryMatrix descent theorem.
Ontology: crystalline.site
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Crystalline-site-inspired metadata over an abstract site.

The intended base label may mention `M_ell`, but no actual crystalline site of
`M_ell` is constructed here.
-/
structure CrystallineSite where
  Site : ResearchTopos.SiteCategory
  topology : ResearchTopos.GrothendieckTopology Site
  thickeningOf : Site.Obj → Option InfinitesimalThickening
  baseLabel : String
  intendedBaseStack : String := "M_ell"

structure CrystallineCover
    (C : CrystallineSite)
    (X : C.Site.Obj) where
  cover : ResearchTopos.Cover C.Site X
  crystallineCompatible : C.topology.IsCover X cover

theorem crystalline_cover_is_cover
    {C : CrystallineSite}
    {X : C.Site.Obj}
    (U : CrystallineCover C X) :
    C.topology.IsCover X U.cover :=
  U.crystallineCompatible

end CrystallineTensor
end Folder
