# transform_map_associator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f176f91-acfa-4f64-c262-48101c83060e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95c8f01c-b515-788e-ae52-8f18e7d999d9",
  "kind": "lemma",
  "lexical_name": "transform_map_associator",
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
  "slug": "transform-map-associator--1eb807c6aac0bac8e1aedcf5",
  "source": {
    "blob": "ef3eae45401e390e6acf57aef9e60aacb88f4c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 566,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eb807c6aac0bac8e1aedcf56466dc14b7a811e4496616f0b72961646b910549",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c8f01c-b515-788e-ae52-8f18e7d999d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transform_map_associator
    {A₃ : Type u₁₀} {B₃ : Type u₁₁} {C₃ : Type u₁₂}
    [Category.{v₁₀} A₃] [Category.{v₁₁} B₃] [Category.{v₁₂} C₃]
    {F₃ : A₃ ⥤ B₃} {G₃ : C₃ ⥤ B₃}
    (X : Type u₁₃) [Category.{v₁₃} X]
    (ψ : CatCospanTransform F G F₁ G₁) (φ : CatCospanTransform F₁ G₁ F₂ G₂)
    (τ : CatCospanTransform F₂ G₂ F₃ G₃) :
    (transform X).map (α_ ψ φ τ).hom =
    (transformObjComp X (ψ.comp φ) τ).hom ≫
      whiskerRight (transformObjComp X ψ φ).hom (transform X |>.obj τ) ≫
      ((transform X |>.obj ψ).associator
        (transform X |>.obj φ) (transform X |>.obj τ)).hom ≫
      whiskerLeft (transform X |>.obj ψ) (transformObjComp X φ τ).inv ≫
      (transformObjComp X ψ (φ.comp τ)).inv := by
  ext <;> simp

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc1d1ce9c568b0854becdcf53a9fb62712e688d027fab3466998f388a0d6dd58e.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3eae45401e390e6acf57aef9e60aacb88f4c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
