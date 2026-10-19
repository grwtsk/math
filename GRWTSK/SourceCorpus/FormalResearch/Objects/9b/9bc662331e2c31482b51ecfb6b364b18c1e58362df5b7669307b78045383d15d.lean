import Mathematics.Stability.Damping

/-! # Branch- and domain-bound logarithmic verification -/

namespace Mathematics.Stability

structure LogarithmicVerificationProfile (X : Type) where
  profileId : StableId
  decode : X → X
  inputDomain : X → Prop
  branchRef : Option StableId
  conditioningUpperBound : Option Nat

structure LogarithmicRoundTripCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (verification : LogarithmicVerificationProfile X) where
  outputInDomain :
    ∀ x, construction.domain.contains x →
      verification.inputDomain (construction.apply x)
  roundTrip :
    ∀ x, construction.domain.contains x →
      verification.decode (construction.apply x) = x

theorem logarithmic_verifier_round_trip
    {X : Type}
    {construction : ReflectiveMap X}
    {verification : LogarithmicVerificationProfile X}
    (certificate :
      LogarithmicRoundTripCertificate construction verification)
    (x : X)
    (member : construction.domain.contains x) :
    verification.decode (construction.apply x) = x :=
  certificate.roundTrip x member

structure LogarithmOpenObligations where
  domainStatement : Prop
  branchStatement : Prop
  conditioningStatement : Prop
  domainStatus : ProofDisposition
  branchStatus : ProofDisposition
  conditioningStatus : ProofDisposition

end Mathematics.Stability
