# Complete source: GRWTSK.Algebra.GroupTheory.HeatFlowAction.Variant7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94557c00a64bec7e2700b139310f48ad7b703673` · SHA-256 `7dde2e51eab6a9d37432d648c0a6d1000f645b87c485deb08050da2d9ed568ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.IntegrableConnection
import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.CrystallineTensor.HeatFlowAction

Radiation role: research-boundary
BinaryMatrix spine: This module records heat-flow action contracts and does not identify them with finite BinaryMatrix heat.
Ontology: crystalline.heat_flow_action
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Contract-level heat action on crystal sections.

This is not the finite `GraphHeat` operator and not an analytic construction of
Rodgers-Tao heat flow; it only stores the action laws needed by later boundary
contracts.
-/
structure HeatFlowAction
    {C : CrystallineSite}
    (F : Crystal C) where
  Time : Type _
  flow : ∀ X : C.Site.Obj, Time → F.Section X → F.Section X
  identityAtZero : Prop
  identityAtZero_certified : identityAtZero
  semigroupLaw : Prop
  semigroupLaw_certified : semigroupLaw
  sourceLabel : String

theorem heat_flow_identity_at_zero
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F) :
    H.identityAtZero :=
  H.identityAtZero_certified

theorem heat_flow_semigroup
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HeatFlowAction F) :
    H.semigroupLaw :=
  H.semigroupLaw_certified

end CrystallineTensor
end Folder
```
