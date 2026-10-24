import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.HodgeDeRhamFiltration

Radiation role: research-boundary
BinaryMatrix spine: This module records filtration boundary data, not BinaryMatrix density or heat.
Ontology: crystalline.hodge_de_rham_filtration
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure Filtration where
  Carrier : Type _
  step : Nat → Type _
  exhaustive : Prop
  exhaustive_certified : exhaustive
  separated : Prop
  separated_certified : separated
  label : String

structure HodgeDeRhamFiltration
    {C : CrystallineSite}
    (F : Crystal C) where
  filtration : Filtration
  associatedConnection : Prop
  associatedConnection_certified : associatedConnection
  degeneratesAtE1? : Prop
  harmonicBasis? : Option Type
  sourceLabel : String

theorem filtration_exhaustive
    (F : Filtration) :
    F.exhaustive :=
  F.exhaustive_certified

theorem filtration_separated
    (F : Filtration) :
    F.separated :=
  F.separated_certified

theorem hodge_de_rham_has_associated_connection
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HodgeDeRhamFiltration F) :
    H.associatedConnection :=
  H.associatedConnection_certified

end CrystallineTensor
end Folder
