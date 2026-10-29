import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.Theorem.ResearchTopos.StableSphereSite

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports stable-sphere collapse contract exposures.
Ontology: proof.research_topos.stable_sphere_site
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace StableSphereSite

theorem stable_sphere_collapse_has_target
    (C : Folder.ResearchTopos.StableSphereCollapse) :
    ∃ S : Folder.ResearchTopos.StableSphere, S = C.targetSphere :=
  Folder.ResearchTopos.stable_sphere_collapse_has_target C

theorem stable_sphere_collapse_torsion_killed
    (C : Folder.ResearchTopos.StableSphereCollapse) :
    C.tmfFraming.trivialized :=
  Folder.ResearchTopos.stable_sphere_collapse_torsion_killed C

end StableSphereSite
end ResearchTopos
end Theorem
end Folder
