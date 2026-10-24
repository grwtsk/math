# EvidenceCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2128eb67afdea27ec83eb86e6325bc5ab7a0b94a28fff0808b914c648849fd32",
  "kind": "structure",
  "lexical_name": "EvidenceCut",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "evidencecut--bcde7f8fac36a1354c66d53a",
  "source": {
    "blob": "673f1997cc85e59a31100e989997456ac5a5fe62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcde7f8fac36a1354c66d53ab5000f64a700ea64fb8b53ebbf50ded7672754a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2128eb67afdea27ec83eb86e6325bc5ab7a0b94a28fff0808b914c648849fd32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EvidenceCut where
  rawText : RawText
  text : TextCarrier
  activeSnapshot : SnapshotId
  normalizationSpec : NormalizationSpec
  normalizationCertificate :
    Option
      (NormalizationCertificate
        rawText text normalizationSpec)
  candidateSpans : CandidateSpanFamily text
  candidateCoverage :
    Option
      (Sigma fun required : EvidenceRequiredSpans text =>
        CandidateCoverageCertificate candidateSpans required)
  baseTokenization : Option (Tokenization text)
  authorityPolicy : AuthorityPolicy
  evidenceRegistry : Array (EvidenceRef text)
  provenanceRegistry : Array (ProvenancePath text)
  contexts : Array Context
  contextSufficiency : Array ContextSufficiencyRecord
  contextTransports : Array ContextTransportCertificate
  snapshotTransports : Array SnapshotTransportCertificate
  metadataAssertions : Array (PackedExternalAssertion text)
  interpretations : Array (ExternalInterpretation text)
  adjudications : Array AdjudicationCertificate
  relationAlgebra : RelationAlgebra
  invalidatedAssertions : Finset AssertionId
  proofRegistry : Array Digest
  lineageLedger : Array LineageRecord
  eventLedger : Array AcceptedEvent
  budget : ResourceBudget

namespace EvidenceCut

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673f1997cc85e59a31100e989997456ac5a5fe62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
