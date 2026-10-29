import Mathematics.SemanticTokenization.ExternalAssertion

/-!
# Explicit evidence conflict and adjudication
-/

namespace Mathematics.SemanticTokenization

structure EvidenceConflict where
  assertion : AssertionId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  description : String
deriving Repr

inductive AdjudicationDecision
  | acceptAll
  | acceptOnly (evidence : Finset EvidenceId)
  | retainAmbiguity
  | rejectAll
deriving Repr

structure AdjudicationCertificate where
  conflict : EvidenceConflict
  decision : AdjudicationDecision
  adjudicator : AuthorityClass
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  snapshot : SnapshotId
  certificateDigest : Digest
deriving Repr

end Mathematics.SemanticTokenization
