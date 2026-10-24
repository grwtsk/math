# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Adjudication.Variant40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1800514731603d6a1f1ec4321a20c75723f967c` · SHA-256 `40a06eb83166d9b8bd2dfd0bbe21704c0636f4a2e7c2cb05674cf8e9e34d8a84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
