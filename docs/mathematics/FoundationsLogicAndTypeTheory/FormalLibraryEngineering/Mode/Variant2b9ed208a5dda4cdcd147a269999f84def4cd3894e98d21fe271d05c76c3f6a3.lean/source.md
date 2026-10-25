# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mode.Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a1524f484afeb3c45d27a789f6004580ff907e2` · SHA-256 `2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
