import Folder.Basic

/-!
# Folder.ResearchTopos.TMFFraming

Radiation role: research-boundary
BinaryMatrix spine: This module records TMF framing as contract data for later cellular boundary interpretation.
Ontology: research_topos.tmf_framing
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure TMFContract where
  Spectrum : Type _
  RingOfTopologicalModularForms : Type _
  hasStringOrientation : Prop
  hasWittenGenus : Prop
  hasWittenGenus_certified : hasWittenGenus
  sourceLabel : String

structure WittenGenusWitness where
  Domain : Type _
  Codomain : Type _
  genus : Domain → Codomain
  modularityWitness : Prop

structure TMFTorsionFraming where
  tmf : TMFContract
  TorsionClass : Type _
  torsionOrder? : Option Nat
  framingAnomaly : Prop
  trivialized : Prop
  trivialized_certified : trivialized

theorem tmf_has_witten_genus
    (T : TMFContract) :
    T.hasWittenGenus :=
  T.hasWittenGenus_certified

theorem tmf_framing_trivialized
    (F : TMFTorsionFraming) :
    F.trivialized :=
  F.trivialized_certified

end ResearchTopos
end Folder
