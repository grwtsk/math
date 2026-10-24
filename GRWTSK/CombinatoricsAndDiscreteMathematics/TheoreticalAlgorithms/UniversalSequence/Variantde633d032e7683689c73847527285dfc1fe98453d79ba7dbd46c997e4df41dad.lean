/-!
# Declared-class universal exploration

Coverage is conditional on the supplied graph-class membership and port-label
certificate.  No cross-class universality is asserted.
-/

namespace Mathematics.GraphAccess

structure UniversalSequenceCertificate (Node : Type u) where
  graphClassRef : String
  sequenceRevisionRef : String
  declaredNodes : List Node
  visitedNodes : List Node
  graphClassMembership : Prop
  portLabelsComplete : Prop
  graphClassMembershipEvidence : graphClassMembership
  portLabelsCompleteEvidence : portLabelsComplete
  covers :
    ∀ node, node ∈ declaredNodes → node ∈ visitedNodes

theorem universal_sequence_covers_declared_class
    {Node : Type u}
    (certificate : UniversalSequenceCertificate Node)
    (node : Node)
    (declared : node ∈ certificate.declaredNodes) :
    node ∈ certificate.visitedNodes :=
  certificate.covers node declared

end Mathematics.GraphAccess
