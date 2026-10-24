# prodComparison_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f81bf065-56ed-7a14-4710-1242a4d40a2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a05eda2d-9b23-6143-bdfc-f94d63cc4cd5",
  "kind": "theorem",
  "lexical_name": "prodComparison_comp",
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
  "slug": "prodcomparison-comp--b5579eb9410a68ec6633e621",
  "source": {
    "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1150,
    "line": 1129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5579eb9410a68ec6633e621cd929b145d50ace820a99d98ba7b0e30ffff38e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a05eda2d-9b23-6143-bdfc-f94d63cc4cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1129–1150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodComparison_comp :
    prodComparison (F ⋙ G) A B =
      G.map (prodComparison F A B) ≫ prodComparison G (F.obj A) (F.obj B) := by
  unfold prodComparison
  ext <;> simp [← G.map_comp]

end ProdComparison

noncomputable section CoprodComparison

universe w

variable {C} {D : Type u₂} [Category.{w} D]
variable (F : C ⥤ D) {A A' B B' : C}
variable [HasBinaryCoproduct A B] [HasBinaryCoproduct A' B']
variable [HasBinaryCoproduct (F.obj A) (F.obj B)] [HasBinaryCoproduct (F.obj A') (F.obj B')]

/-- The coproduct comparison morphism.

In `Mathlib/CategoryTheory/Limits/Preserves/` we show
this is always an iso iff F preserves binary coproducts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean#L1129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37bd955f38a3e476ad5121d1db346d4c969a9c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
