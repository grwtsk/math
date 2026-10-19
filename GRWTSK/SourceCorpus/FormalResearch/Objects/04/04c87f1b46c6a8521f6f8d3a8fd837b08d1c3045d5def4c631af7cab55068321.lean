import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.Theorem.ResearchTopos.RodgersTaoHeat

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao heat-flow contract exposures.
Ontology: proof.research_topos.rodgers_tao_heat
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace RodgersTaoHeat

theorem rodgers_tao_newman_nonnegative
    (F : Folder.ResearchTopos.RodgersTaoHeatFamily) :
    F.newmanLambdaNonnegative :=
  Folder.ResearchTopos.rodgers_tao_newman_nonnegative F

theorem rodgers_tao_backwards_heat
    (F : Folder.ResearchTopos.RodgersTaoHeatFamily) :
    F.backwardsHeatEquation :=
  Folder.ResearchTopos.rodgers_tao_backwards_heat F

theorem rodgers_tao_local_equilibrium
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    (D : Folder.ResearchTopos.RodgersTaoZeroDynamics F) :
    D.localEquilibriumConclusion :=
  Folder.ResearchTopos.rodgers_tao_local_equilibrium D

end RodgersTaoHeat
end ResearchTopos
end Theorem
end Folder
