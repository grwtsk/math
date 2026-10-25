import Mathematics.GraphAccess.Exact.BFS
import Mathematics.GraphAccess.Exact.Dijkstra
import Mathematics.GraphAccess.Exact.AStar

/-!
# Independent path-certificate verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentPathVerification where
  constructorRef : String
  verifierRef : String
  independence : Prop
  accepted : Prop
  independenceEvidence : independence
  acceptedEvidence : accepted

theorem independently_verified_path_is_accepted
    (verification : IndependentPathVerification) :
    verification.accepted :=
  verification.acceptedEvidence

end Mathematics.GraphAccess
