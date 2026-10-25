# CertifiedStratifiedPresentationChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:030c7d8fb4197e50f8e564ee9645c007379e4646ac22d78784c4d7849668c4a2",
  "kind": "structure",
  "lexical_name": "CertifiedStratifiedPresentationChange",
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
  "slug": "certifiedstratifiedpresentationchange--d45f44d0df3489841842e081",
  "source": {
    "blob": "5e2a3c06e58415237909b6f4b79a649d8ffedec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d45f44d0df3489841842e08143f56285578d376acac0aa467294704335d293a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:030c7d8fb4197e50f8e564ee9645c007379e4646ac22d78784c4d7849668c4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedStratifiedPresentationChange
    (before after : StratifiedPresentationNode) where
  persistentIdentity :
    after.persistentIdentity = before.persistentIdentity
  ordinalProfile :
    after.ordinalProfileRef = before.ordinalProfileRef
  ordinalSemantics :
    after.normalizedStratumRef = before.normalizedStratumRef
  proposalOnly : Bool := true
  proposalOnly_exact : proposalOnly = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2a3c06e58415237909b6f4b79a649d8ffedec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
