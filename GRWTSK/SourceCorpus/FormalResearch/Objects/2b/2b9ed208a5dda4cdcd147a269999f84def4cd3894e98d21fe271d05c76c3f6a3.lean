import Mathematics.GraphAccess.Objective

/-!
# Traversal mode semantics

The support relation is intentionally closed: mode names do not imply support
for objectives not represented by a constructor.
-/

namespace Mathematics.GraphAccess

inductive TraversalMode
  | bfs
  | dijkstra
  | astar
  | rotor
  | universalSequence
  | debruijn
  | lowDiscrepancy
  | recaman
  | obstruction
  | cylinder
deriving DecidableEq, Repr

def TraversalMode.productKind :
    TraversalMode → AccessProductKind
  | .bfs => .path
  | .dijkstra => .path
  | .astar => .path
  | .rotor => .coverage
  | .universalSequence => .coverage
  | .debruijn => .coverage
  | .lowDiscrepancy => .sample
  | .recaman => .proposal
  | .obstruction => .obstruction
  | .cylinder => .coverage

inductive Supports :
    TraversalMode → AccessObjective → Prop
  | bfs :
      Supports .bfs .minimumHop
  | dijkstra :
      Supports .dijkstra .minimumCost
  | dijkstraGoalFallback :
      Supports .dijkstra .goalDirectedCost
  | astar :
      Supports .astar .goalDirectedCost
  | rotor :
      Supports .rotor .fairExploration
  | universalSequence :
      Supports .universalSequence .universalCoverage
  | debruijn :
      Supports .debruijn .finitePatternCoverage
  | lowDiscrepancy :
      Supports .lowDiscrepancy .invariantSampling
  | recaman :
      Supports .recaman .multiscaleDiversification
  | obstruction :
      Supports .obstruction .primitiveObstruction
  | cylinder :
      Supports .cylinder .limitCylinderAccess

theorem Supports.productKind_eq
    {mode : TraversalMode}
    {objective : AccessObjective}
    (support : Supports mode objective) :
    mode.productKind = objective.productKind := by
  cases support <;> rfl

end Mathematics.GraphAccess
