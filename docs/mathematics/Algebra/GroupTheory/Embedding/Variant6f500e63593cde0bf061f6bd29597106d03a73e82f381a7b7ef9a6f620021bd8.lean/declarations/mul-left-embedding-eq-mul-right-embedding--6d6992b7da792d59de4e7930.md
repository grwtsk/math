# mul_left_embedding_eq_mul_right_embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "252fa733fc4adef5aebdf9ef1fd4de880712af6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76d58463-b99e-3f2e-1778-3d000994d9f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ebf1576-be51-1ec2-4f8f-b3463269be93",
  "kind": "theorem",
  "lexical_name": "mul_left_embedding_eq_mul_right_embedding",
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
  "slug": "mul-left-embedding-eq-mul-right-embedding--6d6992b7da792d59de4e7930",
  "source": {
    "blob": "252fa733fc4adef5aebdf9ef1fd4de880712af6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d6992b7da792d59de4e79300147d1eb1d70ea2bd324d91a233f6d101c346011",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ebf1576-be51-1ec2-4f8f-b3463269be93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_left_embedding_eq_mul_right_embedding {G : Type*} [CancelCommMonoid G] (g : G) :
    mulLeftEmbedding g = mulRightEmbedding g := by
  ext
  exact mul_comm _ _
#align mul_left_embedding_eq_mul_right_embedding mul_left_embedding_eq_mul_right_embedding
#align add_left_embedding_eq_add_right_embedding add_left_embedding_eq_add_right_embedding

end LeftOrRightCancelSemigroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Embedding/Variant6f500e63593cde0bf061f6bd29597106d03a73e82f381a7b7ef9a6f620021bd8.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252fa733fc4adef5aebdf9ef1fd4de880712af6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
