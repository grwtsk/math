# evaluation_coevaluation_braided'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d77875ae-e602-3ff8-8d26-afa6b2167101",
  "kind": "theorem",
  "lexical_name": "evaluation_coevaluation_braided'",
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
  "slug": "evaluation-coevaluation-braided--9efad9d4d5d6144896e524bb",
  "source": {
    "blob": "28348e5eab67237e25bf142e991a4163d75e0c2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9efad9d4d5d6144896e524bb1dc8a18b1d314bfc8d7dde61629494c4401f5a2d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d77875ae-e602-3ff8-8d26-afa6b2167101`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem evaluation_coevaluation_braided' [inst : ExactPairing X Y] :
    (η_ X Y ≫ (β_ Y X).inv) ▷ Y ≫ (α_ Y X Y).hom ≫ Y ◁ ((β_ X Y).hom ≫ ε_ X Y) =
      (λ_ Y).hom ≫ (ρ_ Y).inv := by
  rw [Iso.eq_comp_inv, ← Iso.inv_comp_eq_id]
  calc
    _ = 𝟙 Y ⊗≫ η_ X Y ▷ Y ⊗≫ ((β_ Y X).inv ▷ Y ⊗≫ Y ◁ (β_ X Y).hom) ≫ Y ◁ ε_ X Y ⊗≫ 𝟙 Y := by
      monoidal
    _ = 𝟙 Y ⊗≫ η_ X Y ▷ Y ⊗≫ (𝟙 ((X ⊗ Y) ⊗ Y) ⊗≫ X ◁ (β_ Y Y).hom ⊗≫ (β_ X Y).hom ▷ Y
        ⊗≫ Y ◁ (β_ Y X).inv ⊗≫ (β_ Y Y).inv ▷ X ⊗≫ 𝟙 (Y ⊗ Y ⊗ X)) ⊗≫ Y ◁ ε_ X Y ⊗≫ 𝟙 Y := by
      congr 3
      all_goals simp [monoidalComp]
      iterate 2 rw [← IsIso.eq_inv_comp]
      repeat rw [← assoc]
      iterate 4 rw [← IsIso.comp_inv_eq]
      simpa using (yang_baxter Y X Y).symm
    _ = 𝟙 Y ⊗≫ (η_ X Y ▷ Y ≫ (β_ (X ⊗ Y) Y).hom) ⊗≫ ((β_ Y (Y ⊗ X)).inv ≫ Y ◁ ε_ X Y) ⊗≫ 𝟙 Y := by
      simp [monoidalComp, braiding_tensor_left, braiding_inv_tensor_right]
    _ = _ := by
      rw [braiding_naturality_left, ← braiding_inv_naturality_left]
      simp [monoidalComp]

/-- If `X` and `Y` forms an exact pairing in a braided category, then so does `Y` and `X`
by composing the coevaluation and evaluation morphisms with associators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28348e5eab67237e25bf142e991a4163d75e0c2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
