/-!
# Conditional Dijkstra settled-label certificate

Costs are natural numbers in this structural boundary, so admitted costs are
nonnegative.  Completeness of eligible outgoing-edge enumeration and exact
relaxation are still explicit premises.
-/

namespace Mathematics.GraphAccess

structure DijkstraPathCertificate (Node : Type u) where
  source : Node
  target : Node
  settledCost : Nat
  candidateCosts : List Nat
  eligibleEdgesComplete : Prop
  relaxationArithmeticExact : Prop
  eligibleEdgesCompleteEvidence : eligibleEdgesComplete
  relaxationArithmeticExactEvidence : relaxationArithmeticExact
  settledLabelOptimal :
    ∀ candidateCost,
      candidateCost ∈ candidateCosts →
      settledCost ≤ candidateCost

theorem dijkstra_settled_label_optimal
    {Node : Type u}
    (certificate : DijkstraPathCertificate Node)
    (candidateCost : Nat)
    (candidateRegistered :
      candidateCost ∈ certificate.candidateCosts) :
    certificate.settledCost ≤ candidateCost :=
  certificate.settledLabelOptimal
    candidateCost
    candidateRegistered

end Mathematics.GraphAccess
