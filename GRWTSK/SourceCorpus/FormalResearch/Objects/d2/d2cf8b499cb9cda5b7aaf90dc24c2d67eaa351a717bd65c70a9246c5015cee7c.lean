import Mathematics.GraphAccess.Exploration.UniversalSequence
import Mathematics.GraphAccess.Exploration.DeBruijn

/-!
# Independent coverage verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentCoverageVerification where
  declaredClassOrAlphabetRef : String
  constructorRef : String
  verifierRef : String
  independent : Prop
  coverageAccepted : Prop
  independentEvidence : independent
  coverageAcceptedEvidence : coverageAccepted

theorem independently_verified_coverage_is_accepted
    (verification : IndependentCoverageVerification) :
    verification.coverageAccepted :=
  verification.coverageAcceptedEvidence

end Mathematics.GraphAccess
