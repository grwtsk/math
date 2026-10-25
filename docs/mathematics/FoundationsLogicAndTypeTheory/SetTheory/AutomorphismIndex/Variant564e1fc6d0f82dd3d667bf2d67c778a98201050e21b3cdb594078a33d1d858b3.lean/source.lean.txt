import Mathematics.StratifiedBoundary.Frontier.OrdinalIndex

/-!
# Orbit-invariant local rank

Raw occurrence ranks and orbit ranks use distinct structures.
-/

namespace Mathematics.StratifiedBoundary

structure OrbitLocalRank
    (GroupElement Frontier : Type u) where
  orderingSourceRef : String
  act : GroupElement → Frontier → Frontier
  rank : Frontier → Nat
  invariant :
    ∀ groupElement record,
      rank (act groupElement record) = rank record

def orbitFrontierIndex
    {GroupElement Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : OrbitLocalRank GroupElement Frontier)
    (record : Frontier) : StratifiedFrontierIndex where
  profileId := profileId
  stratum := stratum
  localRank := ranker.rank record

theorem orbit_index_invariant
    {GroupElement Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : OrbitLocalRank GroupElement Frontier)
    (groupElement : GroupElement)
    (record : Frontier) :
    orbitFrontierIndex
        profileId stratum ranker
        (ranker.act groupElement record) =
      orbitFrontierIndex profileId stratum ranker record := by
  unfold orbitFrontierIndex
  rw [ranker.invariant]

end Mathematics.StratifiedBoundary
