# universalFactorizationMap_freeMonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c557b170-c9cd-a6b9-8e72-a647f038c05b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f80f3ab7-e2a4-764f-6fc4-92593aad9db7",
  "kind": "lemma",
  "lexical_name": "universalFactorizationMap_freeMonic",
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
  "slug": "universalfactorizationmap-freemonic--13d5e2f4d9a3f28280b13c05",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 145,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d5e2f4d9a3f28280b13c0543e921901f5f19d69bffcb13a37172b54f4cc3ca",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f80f3ab7-e2a4-764f-6fc4-92593aad9db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma universalFactorizationMap_freeMonic :
    (freeMonic R n).map (toRingHom <| universalFactorizationMap R n m k hn) =
      (freeMonic R m).map (algebraMap _ _) *
        (freeMonic R k).map (toRingHom <| Algebra.TensorProduct.includeRight) := by
  change (mapEquivMonic _ _ _ (universalFactorizationMap R n m k hn)).1 = _
  simp [universalFactorizationMap]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
