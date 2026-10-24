# PreservesLimitPair.of_iso_prod_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f50253aecea958cafbf280535bdc4485f0c1abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8aea161c569565a41c5c6bc05a483e52bf4e5fa6e7fc2397483d159383e1b248.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33995b6b-6e20-0c3f-847e-5350b582334b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d2e3d74-43a3-ab0d-5155-a48f61906136",
  "kind": "lemma",
  "lexical_name": "PreservesLimitPair.of_iso_prod_comparison",
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
  "slug": "preserveslimitpair-of-iso-prod-comparison--702d13f3fb5ff151dc1ce468",
  "source": {
    "blob": "3f50253aecea958cafbf280535bdc4485f0c1abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant8aea161c569565a41c5c6bc05a483e52bf4e5fa6e7fc2397483d159383e1b248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:702d13f3fb5ff151dc1ce468c034a69504e8b35a0f41cab4955b9d1013f12ef4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant8aea161c569565a41c5c6bc05a483e52bf4e5fa6e7fc2397483d159383e1b248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d2e3d74-43a3-ab0d-5155-a48f61906136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesLimitPair.of_iso_prod_comparison [i : IsIso (prodComparison G X Y)] :
    PreservesLimit (pair X Y) G := by
  apply preservesLimit_of_preserves_limit_cone (prodIsProd X Y)
  apply (isLimitMapConeBinaryFanEquiv _ _ _).symm _
  refine @IsLimit.ofPointIso _ _ _ _ _ _ _ (limit.isLimit (pair (G.obj X) (G.obj Y))) ?_
  apply i

variable [PreservesLimit (pair X Y) G]

/-- If `G` preserves the product of `(X,Y)`, then the product comparison map for `G` at `(X,Y)` is
an isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant8aea161c569565a41c5c6bc05a483e52bf4e5fa6e7fc2397483d159383e1b248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant8aea161c569565a41c5c6bc05a483e52bf4e5fa6e7fc2397483d159383e1b248.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f50253aecea958cafbf280535bdc4485f0c1abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
