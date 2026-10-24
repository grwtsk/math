# neg_sub'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aabc4c2a759d685dcd61efd3f6d53d198921f87f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85d4492286d14c28fd742489223d7880dce180008834f571e87e233b17b8a24b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:531975ae-d469-171a-8ac3-3dd91c6a9879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:379f9d0a-3ce8-3c02-8735-2c7d90f4bf62",
  "kind": "theorem",
  "lexical_name": "neg_sub'",
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
  "slug": "neg-sub--cf32af07eb6fb83aeb7236ea",
  "source": {
    "blob": "aabc4c2a759d685dcd61efd3f6d53d198921f87f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant85d4492286d14c28fd742489223d7880dce180008834f571e87e233b17b8a24b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf32af07eb6fb83aeb7236eaa0eabaeddb73f096656ea5584efd1582717d12c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant85d4492286d14c28fd742489223d7880dce180008834f571e87e233b17b8a24b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:379f9d0a-3ce8-3c02-8735-2c7d90f4bf62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_sub' {X Y : C} (a b : X ⟶ Y) : -(a - b) = -a + b := by
  rw [neg_def, neg_def]
  conv_lhs => rw [← sub_self (0 : X ⟶ Y)]
  rw [sub_sub_sub, add_def, neg_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant85d4492286d14c28fd742489223d7880dce180008834f571e87e233b17b8a24b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variant85d4492286d14c28fd742489223d7880dce180008834f571e87e233b17b8a24b.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aabc4c2a759d685dcd61efd3f6d53d198921f87f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
