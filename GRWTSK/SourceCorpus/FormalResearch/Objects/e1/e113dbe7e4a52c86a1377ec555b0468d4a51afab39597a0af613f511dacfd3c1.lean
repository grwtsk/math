/-!
# Graph-access objectives and modes

Authority and traversal are orthogonal.  `modeForObjective` is only a
deterministic selection function; it grants no authority.
-/

namespace Mathematics.GraphAccess

inductive AuthorityMode
  | observe
  | traverse
  | sample
  | propose
deriving DecidableEq, Repr

inductive AccessObjective
  | minimumHop
  | minimumCost
  | goalDirectedCost
  | fairExploration
  | universalCoverage
  | finitePatternCoverage
  | invariantSampling
  | multiscaleDiversification
  | primitiveObstruction
  | limitCylinderAccess
deriving DecidableEq, Repr

inductive TraversalMode
  | bfs
  | dijkstra
  | astar
  | rotor
  | universalSequence
  | deBruijn
  | lowDiscrepancy
  | recaman
  | obstruction
  | cylinder
deriving DecidableEq, Repr

def modeForObjective : AccessObjective → TraversalMode
  | .minimumHop => .bfs
  | .minimumCost => .dijkstra
  | .goalDirectedCost => .astar
  | .fairExploration => .rotor
  | .universalCoverage => .universalSequence
  | .finitePatternCoverage => .deBruijn
  | .invariantSampling => .lowDiscrepancy
  | .multiscaleDiversification => .recaman
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .cylinder

def ModeMatchesObjective
    (objective : AccessObjective)
    (mode : TraversalMode) : Prop :=
  mode = modeForObjective objective

theorem selected_mode_matches_objective
    (objective : AccessObjective) :
    ModeMatchesObjective objective (modeForObjective objective) :=
  rfl

end Mathematics.GraphAccess
