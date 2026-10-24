import Folder.ResearchTopos.ToposStackBridge

/-!
# Folder.Theorem.ResearchTopos.ToposStackBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the topological stack local-to-global contract exposure.
Ontology: proof.research_topos.topos_stack_bridge
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace ToposStackBridge

theorem topos_stack_global_section
    (B : Folder.ResearchTopos.ToposStackBridge)
    (h : B.sheafCondition.localCompatible) :
    B.globalSection :=
  Folder.ResearchTopos.topos_stack_global_section B h

end ToposStackBridge
end ResearchTopos
end Theorem
end Folder
