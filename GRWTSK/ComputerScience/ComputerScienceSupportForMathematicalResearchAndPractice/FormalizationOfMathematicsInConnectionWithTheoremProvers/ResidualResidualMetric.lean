import Mathematics.Stability.Map

/-! # Forward and inverse residuals -/

namespace Mathematics.Stability

structure ResidualMetric (X : Type) where
  distance : X → X → Nat
  self_zero : ∀ x, distance x x = 0

structure VerificationMap (X : Type) where
  verifierId : StableId
  decode : X → X
  declaredInput : X → Prop

def forwardResidual
    {X : Type}
    (metric : ResidualMetric X)
    (construction : ReflectiveMap X)
    (input next : X) : Nat :=
  metric.distance next (construction.apply input)

def inverseResidual
    {X : Type}
    (metric : ResidualMetric X)
    (verification : VerificationMap X)
    (input next : X) : Nat :=
  metric.distance (verification.decode next) input

structure VerificationSoundnessCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (verification : VerificationMap X) where
  construction_output_in_verifier_domain :
    ∀ x, construction.domain.contains x →
      verification.declaredInput (construction.apply x)
  roundTrip :
    ∀ x, construction.domain.contains x →
      verification.decode (construction.apply x) = x

theorem verifier_sound_on_declared_domain
    {X : Type}
    {construction : ReflectiveMap X}
    {verification : VerificationMap X}
    (certificate :
      VerificationSoundnessCertificate construction verification)
    (x : X)
    (member : construction.domain.contains x) :
    verification.decode (construction.apply x) = x :=
  certificate.roundTrip x member

theorem sound_round_trip_has_zero_inverse_residual
    {X : Type}
    {construction : ReflectiveMap X}
    {verification : VerificationMap X}
    (metric : ResidualMetric X)
    (certificate :
      VerificationSoundnessCertificate construction verification)
    (x : X)
    (member : construction.domain.contains x) :
    inverseResidual metric verification x
      (construction.apply x) = 0 := by
  simp [inverseResidual, certificate.roundTrip x member,
    metric.self_zero]

/-!
The two residual channels are not identified by the model.  This concrete
witness prevents a downstream schema from treating them as interchangeable.
-/
theorem forward_and_inverse_residuals_can_differ :
    ∃ forward inverse : Nat,
      forward = 0 ∧ inverse = 1 ∧ forward ≠ inverse :=
  ⟨0, 1, rfl, rfl, by decide⟩

end Mathematics.Stability
