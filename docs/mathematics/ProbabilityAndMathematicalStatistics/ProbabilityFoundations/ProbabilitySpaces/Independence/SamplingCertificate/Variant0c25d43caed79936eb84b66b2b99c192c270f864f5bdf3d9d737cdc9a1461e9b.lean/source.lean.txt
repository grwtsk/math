import Mathematics.GraphAccess.Sampling.TraceApproximation

/-!
# Independent discrepancy verification custody
-/

namespace Mathematics.GraphAccess

structure IndependentSamplingVerification where
  samplerRef : String
  verifierRef : String
  independent : Prop
  discrepancyAccepted : Prop
  independentEvidence : independent
  discrepancyAcceptedEvidence : discrepancyAccepted

theorem independently_verified_sampling_bound_is_accepted
    (verification : IndependentSamplingVerification) :
    verification.discrepancyAccepted :=
  verification.discrepancyAcceptedEvidence

end Mathematics.GraphAccess
