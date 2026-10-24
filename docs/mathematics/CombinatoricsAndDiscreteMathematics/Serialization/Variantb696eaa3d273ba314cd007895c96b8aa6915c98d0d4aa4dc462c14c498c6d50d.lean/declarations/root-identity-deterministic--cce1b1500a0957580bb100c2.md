# root_identity_deterministic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38027c5a80aa7eae3ec9f48183fb48d97eed27ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30f4dd02-291c-91ef-1a09-3b91ae99696e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e12b5167-aad4-7699-7157-5c069346333b",
  "kind": "theorem",
  "lexical_name": "root_identity_deterministic",
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
  "slug": "root-identity-deterministic--cce1b1500a0957580bb100c2",
  "source": {
    "blob": "38027c5a80aa7eae3ec9f48183fb48d97eed27ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce1b1500a0957580bb100c2477c155cd86d6df253f79678a48b660427f601a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e12b5167-aad4-7699-7157-5c069346333b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem root_identity_deterministic
    (serializer : CanonicalIndexSerializer)
    {left right : CanonicalMathematicalIndex}
    (equal : left = right) :
    serializer.rootIdentity (serializer.encode left) =
      serializer.rootIdentity (serializer.encode right) := by
  rw [serializer.root_matches left, serializer.root_matches right, equal]

end CanonicalIndexSerializer

/-- A source digest observed for one stable declaration identifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Serialization/Variantb696eaa3d273ba314cd007895c96b8aa6915c98d0d4aa4dc462c14c498c6d50d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38027c5a80aa7eae3ec9f48183fb48d97eed27ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
