import Mathematics.SemanticTokenization.Evidence

/-!
# Source-local provenance paths
-/

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
