# ThresholdMarginCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:337fd82253ab1112b56f28282a229d119df31ac54fa937ab22a2d9cead055d36",
  "kind": "structure",
  "lexical_name": "ThresholdMarginCertificate",
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
  "slug": "thresholdmargincertificate--b5c7c455a1226cb040271efe",
  "source": {
    "blob": "2dc031e37ed3a19d485af6f3a70be7a6ee1b793e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5c7c455a1226cb040271efec1db545521a46ccb4bb979c50816d2e759bb53d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:337fd82253ab1112b56f28282a229d119df31ac54fa937ab22a2d9cead055d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThresholdMarginCertificate
    {cut : EvidenceCut}
    {left right : Span cut.text}
    (certificate : BoundaryCertificate cut left right) where
  observed : ℚ
  threshold : ℚ
  perturbationBound : ℚ
  scoreMatches :
    certificate.overlap.aggregateScore = some observed
  thresholdMatches :
    certificate.rule.threshold = some threshold
  perturbation_nonneg :
    0 ≤ perturbationBound
  strictMargin :
    perturbationBound < |observed - threshold|

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc031e37ed3a19d485af6f3a70be7a6ee1b793e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
