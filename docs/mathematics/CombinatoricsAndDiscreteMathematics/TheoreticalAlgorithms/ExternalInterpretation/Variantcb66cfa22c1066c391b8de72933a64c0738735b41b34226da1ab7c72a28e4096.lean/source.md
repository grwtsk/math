# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExternalInterpretation.Variantcb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `157e3e3955b5a51c4b946baf6c0f7cb37649625e` · SHA-256 `cb66cfa22c1066c391b8de72933a64c0738735b41b34226da1ab7c72a28e4096`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Boundary

/-!
# External interpretation boundary

Interpretation payloads enter as snapshot-bound evidence records.  This module
contains no function from characters to meanings.
-/

namespace Mathematics.SemanticTokenization

structure ExternalAssertion
    (text : TextCarrier)
    (kind : MetadataType) where
  metadata : MetadataAssertion text kind
  context : Context
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  authority : SemanticAuthorityClass
  snapshot : SnapshotId
  evidence_snapshot_exact :
    ∀ item ∈ evidence.refs,
      item.snapshot = snapshot
  context_snapshot_exact :
    context.snapshot = snapshot
  provenance_covers :
    ∀ item ∈ evidence.refs,
      ∃ path ∈ provenance,
        path.evidenceId = item.evidenceId

structure SomeExternalAssertion (text : TextCarrier) where
  kind : MetadataType
  assertion : ExternalAssertion text kind

structure MeaningPayload where
  meaningId : StableId
  representationDigest : Digest
  digest_valid : representationDigest.Valid

structure ExternalContextualReading (text : TextCarrier) where
  readingId : StableId
  sourceSpans : List (Span text)
  sourceSpans_nonempty : sourceSpans ≠ []
  context : Context
  meaning : MeaningPayload
  evidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  authority : SemanticAuthorityClass
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot
  evidence_snapshot_exact :
    ∀ item ∈ evidence.refs,
      item.snapshot = snapshot

theorem ExternalAssertion.has_evidence
    {text : TextCarrier}
    {kind : MetadataType}
    (assertion : ExternalAssertion text kind) :
    ∃ evidence, evidence ∈ assertion.evidence.refs :=
  assertion.evidence.has_evidence

end Mathematics.SemanticTokenization
```
