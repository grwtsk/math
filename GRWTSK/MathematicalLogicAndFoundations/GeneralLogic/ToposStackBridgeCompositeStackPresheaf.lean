import Folder.Core.CompositeStack
import Folder.Stack.Composite
import Folder.ResearchTopos.SheafGluing
import Folder.ResearchTopos.StableSphereSite

/-!
# Folder.ResearchTopos.ToposStackBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges composite-stack presheaves to a stable-sphere site by supplied sheaf data.
Ontology: research_topos.topos_stack_bridge
Pivot role: dual
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure CompositeStackPresheaf
    (C : SiteCategory) where
  presheaf : Presheaf C
  stackRole : String
  representsCompositeStack : Prop

structure ToposStackBridge where
  site : StableSphereSite
  compositePresheaf : CompositeStackPresheaf site.category
  sheafCondition :
    SheafCondition site.topology compositePresheaf.presheaf
  globalSection : Prop
  localToGlobal :
    sheafCondition.localCompatible → globalSection

theorem topos_stack_global_section
    (B : ToposStackBridge)
    (h : B.sheafCondition.localCompatible) :
    B.globalSection :=
  B.localToGlobal h

end ResearchTopos
end Folder
