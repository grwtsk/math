# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrdinalIndex.Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74f12ebe5ab21a673f8192eb47b57624f647dce5` · SHA-256 `440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Frontier.LocalRank
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Stratum-dominant finite frontier indices

Persistent identity is intentionally absent from the address record.
-/

namespace Mathematics.StratifiedBoundary

structure StratifiedFrontierIndex where
  profileId : String
  stratum : OrdinalTally
  localRank : Nat
deriving DecidableEq, Repr

def finiteFrontierIndex
    {Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : FiniteLocalRank Frontier)
    (record : Frontier) : StratifiedFrontierIndex where
  profileId := profileId
  stratum := stratum
  localRank := ranker.rank record

theorem stratified_frontier_index_injective
    {Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : FiniteLocalRank Frontier) :
    Function.Injective
      (finiteFrontierIndex profileId stratum ranker) := by
  intro left right equalIndex
  apply ranker.injective
  exact congrArg StratifiedFrontierIndex.localRank equalIndex

structure IndexedPersistentLineage where
  persistentIdentity : String
  occurrenceIndex : StratifiedFrontierIndex
  predecessorIndexRef : Option String

end Mathematics.StratifiedBoundary
```
