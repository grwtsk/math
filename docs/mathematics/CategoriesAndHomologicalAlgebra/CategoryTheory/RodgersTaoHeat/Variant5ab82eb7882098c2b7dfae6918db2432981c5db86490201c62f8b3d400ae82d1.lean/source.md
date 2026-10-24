# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoHeat.Variant5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b20ffc985c80d0279fff835fd082be6ae26a9a42` · SHA-256 `5ab82eb7882098c2b7dfae6918db2432981c5db86490201c62f8b3d400ae82d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
