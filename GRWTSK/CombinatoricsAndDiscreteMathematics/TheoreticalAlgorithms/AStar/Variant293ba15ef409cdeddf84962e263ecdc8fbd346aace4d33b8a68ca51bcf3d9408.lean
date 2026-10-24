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
