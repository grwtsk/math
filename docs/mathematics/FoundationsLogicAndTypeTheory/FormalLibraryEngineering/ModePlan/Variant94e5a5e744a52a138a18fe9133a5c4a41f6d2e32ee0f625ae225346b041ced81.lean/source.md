# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModePlan.Variant94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37516d0aae06fe838ede494a464b17a45021788f` · SHA-256 `94e5a5e744a52a138a18fe9133a5c4a41f6d2e32ee0f625ae225346b041ced81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Mode

/-!
# Certified mode plans

Primary modes carry semantic support proofs.  Tie breakers are separately
restricted so they cannot silently replace the primary objective key.
-/

namespace Mathematics.GraphAccess

inductive TieBreaker
  | canonicalOrder
  | rotor
deriving DecidableEq, Repr

inductive TieBreakerAllowed :
    TraversalMode → TieBreaker → Prop
  | canonical (mode : TraversalMode) :
      TieBreakerAllowed mode .canonicalOrder
  | rotorBfs :
      TieBreakerAllowed .bfs .rotor
  | rotorDijkstra :
      TieBreakerAllowed .dijkstra .rotor
  | rotorAStar :
      TieBreakerAllowed .astar .rotor

structure ModePlan
    (objective : AccessObjective) where
  primary : TraversalMode
  supports : Supports primary objective
  tieBreaker : TieBreaker
  tieBreakerAllowed :
    TieBreakerAllowed primary tieBreaker
  revision : ModeRevision

def canonicalPrimaryMode :
    AccessObjective → TraversalMode
  | .minimumHop => .bfs
  | .minimumCost => .dijkstra
  | .goalDirectedCost => .astar
  | .fairExploration => .rotor
  | .universalCoverage => .universalSequence
  | .finitePatternCoverage => .debruijn
  | .invariantSampling => .lowDiscrepancy
  | .multiscaleDiversification => .recaman
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .cylinder

theorem canonicalPrimaryMode_supports
    (objective : AccessObjective) :
    Supports (canonicalPrimaryMode objective) objective := by
  cases objective <;> constructor

structure ModeProfileFamily
    (G : GraphCut) where
  Profile : TraversalMode → Type
  digest :
    ∀ mode, Profile mode → ProfileDigest

end Mathematics.GraphAccess
```
