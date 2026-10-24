# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Observation.Variant1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8d76d0b85a0833c4e4048c5f481332862c8ed49` · SHA-256 `1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.ErrorBudget

/-!
# Non-authoritative attention observations

Attention records are immutable model observations.  Their type has no
constructor for theorem authority, mutation authority, or generation events.
-/

namespace Mathematics.Attention

inductive AttentionObservationKind
  | dataAttentionObserved
  | depthAttentionObserved
  | interchangeMeasured
  | condensationChecked
  | witnessMissing
  deriving DecidableEq, Repr

inductive AttentionObservationAuthority
  | modelObservation
  deriving DecidableEq, Repr

structure AttentionObservation where
  observationId : String
  kind : AttentionObservationKind
  immutableCutDigest : String
  modelSnapshotDigest : String
  payloadDigest : String
  authority : AttentionObservationAuthority
  authorityIsObservation : authority = .modelObservation

def AttentionObservation.Valid
    (observation : AttentionObservation) : Prop :=
  observation.observationId ≠ "" ∧
  observation.immutableCutDigest ≠ "" ∧
  observation.modelSnapshotDigest ≠ "" ∧
  observation.payloadDigest ≠ "" ∧
  observation.authority = .modelObservation

theorem attention_observation_has_no_theorem_authority
    (observation : AttentionObservation) :
    observation.authority =
      AttentionObservationAuthority.modelObservation :=
  observation.authorityIsObservation

structure AttentionObservationSet where
  observations : List AttentionObservation
  identitiesUnique :
    (observations.map (·.observationId)).Nodup
  allValid :
    ∀ observation ∈ observations, observation.Valid

structure AttentionSemanticObservationCertificate where
  exactSemanticSidecarDigest : String
  decoderObservationDigest : String
  protectedObservationSetDigest : String
  semanticErrorBound : ℝ
  semanticErrorNonnegative : 0 ≤ semanticErrorBound
  correspondenceClaim : Prop
  correspondenceCertified : correspondenceClaim

def AttentionSemanticObservationCertificate.Certified
    (certificate : AttentionSemanticObservationCertificate) : Prop :=
  certificate.exactSemanticSidecarDigest ≠ "" ∧
  certificate.decoderObservationDigest ≠ "" ∧
  certificate.protectedObservationSetDigest ≠ "" ∧
  0 ≤ certificate.semanticErrorBound ∧
  certificate.correspondenceClaim

theorem AttentionSemanticObservationCertificate.certified
    (certificate : AttentionSemanticObservationCertificate)
    (sidecarPresent : certificate.exactSemanticSidecarDigest ≠ "")
    (decoderPresent : certificate.decoderObservationDigest ≠ "")
    (observationSetPresent :
      certificate.protectedObservationSetDigest ≠ "") :
    certificate.Certified :=
  ⟨sidecarPresent, decoderPresent, observationSetPresent,
    certificate.semanticErrorNonnegative,
    certificate.correspondenceCertified⟩

end Mathematics.Attention
```
