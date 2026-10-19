import Folder.GrandChallenge.Hodge.GeneralizationAtlas
import Folder.GrandChallenge.Hodge.CycleRealizationObstruction

/-!
# Folder.Theorem.GrandChallenge.Hodge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Hodge branch contract facts.
Ontology: proof.grand_challenge_hodge
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem hodge_atlas_covers_if_supplied
    (A : Folder.GrandChallenge.Hodge.HodgeGeneralizationAtlas) :
    A.coversGeneralizationPath :=
  Folder.GrandChallenge.Hodge.hodge_atlas_covers_if_supplied A

theorem hodge_cycle_obstruction_if_supplied
    (O : Folder.GrandChallenge.Hodge.CycleRealizationObstruction) :
    O.obstructionNonzeroIfNoCycle :=
  Folder.GrandChallenge.Hodge.hodge_cycle_obstruction_if_supplied O

end GrandChallenge
end Theorem
end Folder

