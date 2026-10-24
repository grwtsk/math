-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidualMetric.Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ResidualMetric.Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80","mathematical_subject":"Foundations.Unclassified","original_sha256":"73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/Residual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.Map

/-! # Forward and inverse residuals -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResidualMetric.Variant73af159c4514233f4073cfb0ff70afcdb207f2eda7ac7611d2a0aa1e6659df80

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
