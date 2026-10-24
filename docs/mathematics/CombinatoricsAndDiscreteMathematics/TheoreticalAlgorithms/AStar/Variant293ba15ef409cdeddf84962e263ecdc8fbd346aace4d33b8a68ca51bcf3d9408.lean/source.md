# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AStar.Variant293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37b808974267e299d7763c12cbdf1f8368c3ba31` · SHA-256 `293ba15ef409cdeddf84962e263ecdc8fbd346aace4d33b8a68ca51bcf3d9408`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Exact.Heuristic

/-!
# Conditional A-star optimality

The certificate deliberately carries the algorithm-specific implication from
admissibility and consistency to optimality.
-/

namespace Mathematics.GraphAccess

structure AStarPathCertificate (Node : Type u) where
  source : Node
  target : Node
  pathCost : Nat
  candidateCosts : List Nat
  optimalOfAdmissibleConsistent :
    (heuristic : CertifiedHeuristic Node) →
    (∀ candidateCost,
      candidateCost ∈ candidateCosts →
      pathCost ≤ candidateCost)

theorem astar_optimal_of_admissible_consistent
    {Node : Type u}
    (certificate : AStarPathCertificate Node)
    (heuristic : CertifiedHeuristic Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.pathCost ≤ candidateCost :=
  certificate.optimalOfAdmissibleConsistent
    heuristic
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
```
