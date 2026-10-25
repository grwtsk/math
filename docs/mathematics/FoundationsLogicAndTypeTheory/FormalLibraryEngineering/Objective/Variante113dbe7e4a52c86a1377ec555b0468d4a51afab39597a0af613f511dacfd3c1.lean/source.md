# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Objective.Variante113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63ec68950cdb32788a3bfe8b8c6bca28ace2723c` · SHA-256 `e113dbe7e4a52c86a1377ec555b0468d4a51afab39597a0af613f511dacfd3c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
