import Folder.ResearchTopos.ZeroFlowODE

/-!
# Folder.Theorem.ResearchTopos.ZeroFlowODE

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports finite toy zero-flow facts.
Ontology: proof.research_topos.zero_flow_ode
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace ZeroFlowODE

theorem finite_zero_config_ordered
    (X : Folder.ResearchTopos.FiniteZeroConfiguration)
    {i j : Fin X.n}
    (h : i.val < j.val) :
    X.pos i < X.pos j :=
  Folder.ResearchTopos.finite_zero_config_ordered X h

end ZeroFlowODE
end ResearchTopos
end Theorem
end Folder
