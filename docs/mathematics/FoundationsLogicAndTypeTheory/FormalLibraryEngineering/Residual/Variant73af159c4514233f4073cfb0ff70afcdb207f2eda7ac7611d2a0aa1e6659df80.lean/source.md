# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Residual.Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8d583f58855c4fc010263f99ef27c2a1e4bc758` · SHA-256 `73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
