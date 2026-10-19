import Folder.Research.DeBruijnNewmanBridge
import Folder.Core.ZeroTypology

/-!
# Folder.ResearchTopos.RodgersTaoHeat

Radiation role: research-boundary
BinaryMatrix spine: This module records Rodgers-Tao heat-flow data as external analytic witness data, not as finite BinaryMatrix or GraphHeat data.
Ontology: research_topos.rodgers_tao_heat
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: external-witness
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure RodgersTaoHeatFamily where
  HFunctionFamily : Type _
  Time : Type _
  ZeroIndex : Type _
  zeroPosition : Time → ZeroIndex → ℝ
  backwardsHeatEquation : Prop
  backwardsHeatEquation_certified : backwardsHeatEquation
  newmanLambdaNonnegative : Prop
  newmanLambdaNonnegative_certified : newmanLambdaNonnegative
  sourceLabel : String

structure RodgersTaoZeroDynamics
    (F : RodgersTaoHeatFamily) where
  velocity :
    F.Time → F.ZeroIndex → ℝ
  repulsionLaw : Prop
  localEquilibriumConclusion : Prop
  localEquilibriumConclusion_certified : localEquilibriumConclusion
  arithmeticProgressionLimit : Prop

theorem rodgers_tao_newman_nonnegative
    (F : RodgersTaoHeatFamily) :
    F.newmanLambdaNonnegative :=
  F.newmanLambdaNonnegative_certified

theorem rodgers_tao_backwards_heat
    (F : RodgersTaoHeatFamily) :
    F.backwardsHeatEquation :=
  F.backwardsHeatEquation_certified

theorem rodgers_tao_local_equilibrium
    {F : RodgersTaoHeatFamily}
    (D : RodgersTaoZeroDynamics F) :
    D.localEquilibriumConclusion :=
  D.localEquilibriumConclusion_certified

end ResearchTopos
end Folder
