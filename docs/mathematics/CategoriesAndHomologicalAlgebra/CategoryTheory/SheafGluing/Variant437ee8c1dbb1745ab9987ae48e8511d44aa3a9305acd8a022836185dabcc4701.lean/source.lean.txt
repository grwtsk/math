import Folder.ResearchTopos.SheafGluing

/-!
# Folder.Theorem.ResearchTopos.SheafGluing

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-gluing contract exposure.
Ontology: proof.research_topos.sheaf_gluing
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SheafGluing

theorem sheaf_glues_from_compatibility
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.ResearchTopos.Presheaf C}
    (S : Folder.ResearchTopos.SheafCondition J F)
    (h : S.localCompatible) :
    S.gluesUniquely h :=
  Folder.ResearchTopos.sheaf_glues_from_compatibility S h

end SheafGluing
end ResearchTopos
end Theorem
end Folder
