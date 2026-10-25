# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.AutomorphismIndex.Variant564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0edcaf6d90c9e9bd887f90d49e8f138103efa0d` · SHA-256 `564e1fc6d0f82dd3d667bf2d67c778a98201050e21b3cdb594078a33d1d858b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
