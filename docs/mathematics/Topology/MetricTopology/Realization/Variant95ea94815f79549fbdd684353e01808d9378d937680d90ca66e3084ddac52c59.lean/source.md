# Complete source: GRWTSK.Topology.MetricTopology.Realization.Variant95ea94815f79549fbdd684353e01808d9378d937680d90ca66e3084ddac52c59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79bfa1f9294415a4e47fb56eb6ff22359e67e9bf` · SHA-256 `a3843f656b1b469c8186dfde24b031d0384ae572711eb065c840b686b2f75462`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.BiaxialAttentionRealizationProfile.Variant7dc224b6e50014cf29b49a80f8f7bf2b91f825a0aac7a484331cd497afcb1ebf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dc224b6e50014cf29b49a80f8f7bf2b91f825a0aac7a484331cd497afcb1ebf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.BiaxialAttentionRealizationProfile.Variant7dc224b6e50014cf29b49a80f8f7bf2b91f825a0aac7a484331cd497afcb1ebf","mathematical_subject":"Topology.MetricSpaces","original_sha256":"7dc224b6e50014cf29b49a80f8f7bf2b91f825a0aac7a484331cd497afcb1ebf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Attention/Realization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Attention.Observation
import Mathematics.TensorNetwork.Recovery

/-!
# Certified biaxial realization profile

The profile is an optional semantic realization observation.  It can guide
acquisition but cannot construct proof, arithmetic, symmetry, or mutation
authority.
-/


namespace GRWTSK.Topology.MetricTopology.BiaxialAttentionRealizationProfile.Variant7dc224b6e50014cf29b49a80f8f7bf2b91f825a0aac7a484331cd497afcb1ebf

namespace Mathematics.Attention

open Mathematics.TensorNetwork

structure BiaxialAttentionRealizationProfile where
  tokenCount : Nat
  depthCount : Nat
  immutableCutDigest : String
  modelSnapshotDigest : String
  dataTransitionDigest : String
  depthRetrievalDigest : String
  blockCondensationDigest : String
  interchangeDigest : String
  exactSemanticSidecarDigest : String
  mpsFactorizationDigest : Option String
  decoderObservationDigest : String
  observationSet : AttentionObservationSet
  semanticObservation : AttentionSemanticObservationCertificate
  errorBudget : AttentionErrorBudget

def BiaxialAttentionRealizationProfile.Certified
    (profile : BiaxialAttentionRealizationProfile) : Prop :=
  0 < profile.tokenCount ∧
  0 < profile.depthCount ∧
  profile.immutableCutDigest ≠ "" ∧
  profile.modelSnapshotDigest ≠ "" ∧
  profile.dataTransitionDigest ≠ "" ∧
  profile.depthRetrievalDigest ≠ "" ∧
  profile.blockCondensationDigest ≠ "" ∧
  profile.interchangeDigest ≠ "" ∧
  profile.exactSemanticSidecarDigest ≠ "" ∧
  profile.decoderObservationDigest ≠ "" ∧
  profile.semanticObservation.Certified ∧
  profile.semanticObservation.exactSemanticSidecarDigest =
    profile.exactSemanticSidecarDigest ∧
  profile.semanticObservation.decoderObservationDigest =
    profile.decoderObservationDigest ∧
  0 ≤ profile.errorBudget.total

inductive BiaxialAttentionObservationResult
  | observed
      (profile : BiaxialAttentionRealizationProfile)
      (certificate : profile.Certified)
  | witnessMissing
      (immutableCutDigest : String)
  | rejectedObservation
      (reason : String)

def observeBiaxialAttention
    (profile : Option BiaxialAttentionRealizationProfile)
    (certificate :
      ∀ selected ∈ profile, selected.Certified) :
    BiaxialAttentionObservationResult :=
  match profile with
  | none => .witnessMissing ""
  | some selected => .observed selected (certificate selected rfl)

theorem observe_biaxial_attention_total
    (profile : Option BiaxialAttentionRealizationProfile)
    (certificate :
      ∀ selected ∈ profile, selected.Certified) :
    ∃ result,
      result = observeBiaxialAttention profile certificate :=
  ⟨observeBiaxialAttention profile certificate, rfl⟩

structure BiaxialReplayCertificate
    (SemanticState : Type)
    [MetricSpace SemanticState] where
  source : SemanticState
  replay : SemanticState
  profile : BiaxialAttentionRealizationProfile
  profileCertified : profile.Certified
  semanticBound :
    dist replay source ≤ profile.errorBudget.total

theorem exact_biaxial_replay_of_zero_budget
    {SemanticState : Type}
    [MetricSpace SemanticState]
    (certificate : BiaxialReplayCertificate SemanticState)
    (zeroBudget : certificate.profile.errorBudget.total = 0) :
    certificate.replay = certificate.source := by
  apply dist_eq_zero.mp
  apply le_antisymm
  · simpa [zeroBudget] using certificate.semanticBound
  · exact dist_nonneg

end Mathematics.Attention
```
