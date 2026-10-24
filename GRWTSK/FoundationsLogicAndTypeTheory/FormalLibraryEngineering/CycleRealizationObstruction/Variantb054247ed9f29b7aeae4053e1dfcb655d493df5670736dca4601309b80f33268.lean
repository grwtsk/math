/-!
# Folder.GrandChallenge.Hodge.CycleRealizationObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Hodge cycle-realization obstruction data.
Ontology: hodge_attachment_atlas
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Hodge

structure HodgeClassObject where
  label : String

structure AlgebraicCycleObject where
  label : String

structure CycleRealizationObstruction where
  hodgeClass : HodgeClassObject
  cycle : Option AlgebraicCycleObject
  obstructionNonzeroIfNoCycle : Prop
  obstructionNonzeroIfNoCycle_certified : obstructionNonzeroIfNoCycle
  sourceLabel : String

theorem hodge_cycle_obstruction_if_supplied
    (O : CycleRealizationObstruction) :
    O.obstructionNonzeroIfNoCycle :=
  O.obstructionNonzeroIfNoCycle_certified

end Hodge
end GrandChallenge
end Folder
