-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AttentionObservationKind.Variant1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.AttentionObservationKind.Variant1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614","mathematical_subject":"Computation.DataStructures","original_sha256":"1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Observation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.ErrorBudget

/-!
# Non-authoritative attention observations

Attention records are immutable model observations.  Their type has no
constructor for theorem authority, mutation authority, or generation events.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AttentionObservationKind.Variant1c3ddbac171e5d500256dac0b1f31802dd575abce31b5785aaff94499e3db614

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
