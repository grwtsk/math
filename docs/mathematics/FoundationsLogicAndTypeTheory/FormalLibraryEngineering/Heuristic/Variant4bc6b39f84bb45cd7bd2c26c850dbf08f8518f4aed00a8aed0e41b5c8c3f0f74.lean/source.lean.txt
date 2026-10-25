/-!
# Certified lower-bound heuristic profile
-/

namespace Mathematics.GraphAccess

structure CertifiedHeuristic (Node : Type u) where
  potential : Node → Nat
  trueRemainingCost : Node → Nat
  eligibleEdge : Node → Node → Prop
  edgeCost : Node → Node → Nat
  admissible :
    ∀ node, potential node ≤ trueRemainingCost node
  consistent :
    ∀ source target,
      eligibleEdge source target →
      potential source ≤ edgeCost source target + potential target

theorem admitted_heuristic_is_lower_bound
    {Node : Type u}
    (heuristic : CertifiedHeuristic Node)
    (node : Node) :
    heuristic.potential node ≤ heuristic.trueRemainingCost node :=
  heuristic.admissible node

end Mathematics.GraphAccess
