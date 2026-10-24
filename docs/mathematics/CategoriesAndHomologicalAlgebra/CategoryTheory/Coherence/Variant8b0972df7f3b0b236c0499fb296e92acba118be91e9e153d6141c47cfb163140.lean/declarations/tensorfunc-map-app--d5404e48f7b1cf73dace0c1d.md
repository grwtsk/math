# tensorFunc_map_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afba63f365e0d00c913d9f626c02bac6d7c329fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c427b728-b71b-aeb9-775e-a01d7e95915f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2e7647b-1654-7b6f-5b72-306e7cafc5de",
  "kind": "theorem",
  "lexical_name": "tensorFunc_map_app",
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
  "slug": "tensorfunc-map-app--d5404e48f7b1cf73dace0c1d",
  "source": {
    "blob": "afba63f365e0d00c913d9f626c02bac6d7c329fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5404e48f7b1cf73dace0c1dee1bf9291da55493bc8ccbe496bd1f3dbe2baafa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e7647b-1654-7b6f-5b72-306e7cafc5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorFunc_map_app {X Y : F C} (f : X ⟶ Y) (n) : ((tensorFunc C).map f).app n = 𝟙 _ ⊗ f :=
  rfl
#align category_theory.free_monoidal_category.tensor_func_map_app CategoryTheory.FreeMonoidalCategory.tensorFunc_map_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant8b0972df7f3b0b236c0499fb296e92acba118be91e9e153d6141c47cfb163140.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afba63f365e0d00c913d9f626c02bac6d7c329fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
