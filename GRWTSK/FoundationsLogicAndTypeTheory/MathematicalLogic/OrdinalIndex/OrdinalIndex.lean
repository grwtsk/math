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
