# AcceptedAssertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26a4884f9ea22b0b019e018ad04ea3b295f9f847cbf0f8c0b150776458c100a0",
  "kind": "structure",
  "lexical_name": "AcceptedAssertion",
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
  "slug": "acceptedassertion--5ea1a6343aed86e0efd7d7b6",
  "source": {
    "blob": "673f1997cc85e59a31100e989997456ac5a5fe62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea1a6343aed86e0efd7d7b645cd71ac8ecea3e9c74969b26deddbe4d03203b4",
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

Occurrence: `declaration:26a4884f9ea22b0b019e018ad04ea3b295f9f847cbf0f8c0b150776458c100a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AcceptedAssertion
    (cut : EvidenceCut)
    (assertion : PackedExternalAssertion cut.text) : Prop where
  sourceValid :
    ∀ span ∈ assertion.2.source,
      span ∈ cut.candidateSpans.spans
  contextExists :
    cut.hasContext assertion.2.context
  sufficientContext :
    cut.hasSufficientContext
      assertion.2.context assertion.2.dependency
  evidenceExists :
    ∀ evidence ∈ assertion.2.evidence,
      cut.hasAcceptedEvidence evidence
  authorityAccepted :
    cut.authorityPolicy.permits
      assertion.2.authority
      assertion.2.intendedUse = true
  snapshotMatches :
    assertion.2.snapshot = cut.activeSnapshot
  provenanceExists :
    cut.hasProvenance assertion.2.id
  noContradiction :
    assertion.2.id ∉ cut.invalidatedAssertions

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EvidenceCut/Variant97998ce816502ecbccaac48324aaceef0e166202bd11deddc984b87039eb2d53.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673f1997cc85e59a31100e989997456ac5a5fe62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
