# NodeRecord.IndicesValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1d5aa84104a756700843b32acabd741118d909fe73e777575db0f51b71b262f",
  "kind": "def",
  "lexical_name": "NodeRecord.IndicesValid",
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
  "slug": "noderecord-indicesvalid--b8dd5348daaabb131d79841c",
  "source": {
    "blob": "f7508f57fd10889143d4634c2b42aa724565a123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8dd5348daaabb131d79841c9c8063f9bb2a15500f9c7939e7cb2c3f20b44d32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1d5aa84104a756700843b32acabd741118d909fe73e777575db0f51b71b262f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def NodeRecord.IndicesValid
    (nodeCount tokenCount stringCount declarationCount anchorCount : Nat)
    (node : NodeRecord) : Prop :=
  OptionalIndexValid nodeCount node.parentIndex ∧
    OptionalIndexValid nodeCount node.firstChildIndex ∧
    OptionalIndexValid nodeCount node.nextSiblingIndex ∧
    node.tokenSpan.Valid tokenCount ∧
    OptionalIndexValid stringCount node.nameStringIndex ∧
    OptionalIndexValid declarationCount node.declarationIndex ∧
    OptionalIndexValid anchorCount node.stableSemanticAnchorIndex

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Node/Variant4ca1aea8ff2077f502d01de54d1236c5dc4714c2da52a0a38eee022494bd7996.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7508f57fd10889143d4634c2b42aa724565a123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
