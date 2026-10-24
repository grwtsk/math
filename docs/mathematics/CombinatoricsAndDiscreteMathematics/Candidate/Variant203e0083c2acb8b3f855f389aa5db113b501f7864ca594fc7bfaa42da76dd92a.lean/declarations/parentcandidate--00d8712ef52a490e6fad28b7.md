# ParentCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82b46d25685beaaf7905bb6d66f135392ace4e396e290017f95f40f5816d7340",
  "kind": "structure",
  "lexical_name": "ParentCandidate",
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
  "slug": "parentcandidate--00d8712ef52a490e6fad28b7",
  "source": {
    "blob": "dc252132c41367e86208b2c6d5a313ef8c2f9aa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Candidate/Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00d8712ef52a490e6fad28b72407570de8617963b77a79c84cb1f311fa991fc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Candidate/Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82b46d25685beaaf7905bb6d66f135392ace4e396e290017f95f40f5816d7340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ParentCandidate where
  childId : ConceptId
  parentId : StableId
  parentKind : ParentKind
  relationId : Option RelationId
  relationType : Option RelationKindId
  selectionKey : ParentSelectionKey
  authorityName : String
  provenance : Finset StableId
  deriving DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Candidate/Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Candidate/Variant203e0083c2acb8b3f855f389aa5db113b501f7864ca594fc7bfaa42da76dd92a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc252132c41367e86208b2c6d5a313ef8c2f9aa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
