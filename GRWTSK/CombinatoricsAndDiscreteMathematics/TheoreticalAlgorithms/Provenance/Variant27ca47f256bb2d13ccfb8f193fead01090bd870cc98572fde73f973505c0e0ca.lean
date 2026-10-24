-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProvenanceTerminal.Variant0224c174e70e839d2d51b378b82199b40fb95ab2aad03863a3d9a070c7e63acf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0224c174e70e839d2d51b378b82199b40fb95ab2aad03863a3d9a070c7e63acf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProvenanceTerminal.Variant0224c174e70e839d2d51b378b82199b40fb95ab2aad03863a3d9a070c7e63acf","mathematical_subject":"Computation.DataStructures","original_sha256":"0224c174e70e839d2d51b378b82199b40fb95ab2aad03863a3d9a070c7e63acf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Evidence

/-!
# Source-local provenance paths
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProvenanceTerminal.Variant0224c174e70e839d2d51b378b82199b40fb95ab2aad03863a3d9a070c7e63acf

namespace Mathematics.SemanticTokenization

inductive ProvenanceTerminal (text : TextCarrier)
  | sourceSpan (span : Span text)
  | acceptedEvidence (evidence : EvidenceId)
deriving Repr

structure ProvenanceEdge where
  fromEvidence : EvidenceId
  toEvidence : EvidenceId
  rule : Option RuleId
  edgeDigest : Digest
deriving Repr

structure ProvenancePath (text : TextCarrier) where
  assertion : AssertionId
  edges : Array ProvenanceEdge
  terminal : ProvenanceTerminal text
  snapshot : SnapshotId
deriving Repr

def ProvenancePath.Valid
    {text : TextCarrier}
    (path : ProvenancePath text)
    (activeSnapshot : SnapshotId)
    (hasEvidence : EvidenceId → Prop) : Prop :=
  path.snapshot = activeSnapshot ∧
  (∀ edge ∈ path.edges,
    hasEvidence edge.fromEvidence ∧
    hasEvidence edge.toEvidence) ∧
  match path.terminal with
  | .sourceSpan span => span.Valid
  | .acceptedEvidence evidence => hasEvidence evidence

theorem validProvenance_snapshot
    {text : TextCarrier}
    {path : ProvenancePath text}
    {snapshot : SnapshotId}
    {hasEvidence : EvidenceId → Prop}
    (valid : path.Valid snapshot hasEvidence) :
    path.snapshot = snapshot :=
  valid.1

structure ProvenanceCertificate
    (text : TextCarrier) where
  path : ProvenancePath text
  registry : EvidenceRegistry text
  activeSnapshot : SnapshotId
  valid :
    path.Valid activeSnapshot registry.HasId

theorem provenanceCertificate_sound
    {text : TextCarrier}
    (certificate : ProvenanceCertificate text) :
    certificate.path.Valid
      certificate.activeSnapshot
      certificate.registry.HasId :=
  certificate.valid

end Mathematics.SemanticTokenization
