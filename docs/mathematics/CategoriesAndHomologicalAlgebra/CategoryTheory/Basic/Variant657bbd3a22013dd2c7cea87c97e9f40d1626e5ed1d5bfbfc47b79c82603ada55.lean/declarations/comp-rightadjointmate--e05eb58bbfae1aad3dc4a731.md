# comp_rightAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3041737e-ec5d-6213-24d6-62cbcb028ff2",
  "kind": "theorem",
  "lexical_name": "comp_rightAdjointMate",
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
  "slug": "comp-rightadjointmate--e05eb58bbfae1aad3dc4a731",
  "source": {
    "blob": "58f5c2b7b791d00e2309663a7051bb7cf105a492",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 345,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e05eb58bbfae1aad3dc4a731c779d7069ac399f2c3b9d5a91b7781b40b1d3dd1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3041737e-ec5d-6213-24d6-62cbcb028ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_rightAdjointMate {X Y Z : C} [HasRightDual X] [HasRightDual Y] [HasRightDual Z]
    {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g)ᘁ = gᘁ ≫ fᘁ := by
  rw [rightAdjointMate_comp]
  simp only [rightAdjointMate, comp_whiskerRight]
  simp only [← Category.assoc]; congr 3; simp only [Category.assoc]
  simp only [← MonoidalCategory.whiskerLeft_comp]; congr 2
  symm
  calc
    _ = 𝟙 _ ⊗≫ (η_ Y Yᘁ ▷ 𝟙_ C ≫ (Y ⊗ Yᘁ) ◁ η_ X Xᘁ) ⊗≫ Y ◁ Yᘁ ◁ f ▷ Xᘁ ⊗≫
        Y ◁ ε_ Y Yᘁ ▷ Xᘁ ⊗≫ g ▷ Xᘁ ⊗≫ 𝟙 _ := by
      rw [tensorHom_def']; monoidal
    _ = η_ X Xᘁ ⊗≫ (η_ Y Yᘁ ▷ (X ⊗ Xᘁ) ≫ (Y ⊗ Yᘁ) ◁ f ▷ Xᘁ) ⊗≫
        Y ◁ ε_ Y Yᘁ ▷ Xᘁ ⊗≫ g ▷ Xᘁ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange]; monoidal
    _ = η_ X Xᘁ ⊗≫ f ▷ Xᘁ ⊗≫ (η_ Y Yᘁ ▷ Y ⊗≫ Y ◁ ε_ Y Yᘁ) ▷ Xᘁ ⊗≫ g ▷ Xᘁ ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange]; monoidal
    _ = η_ X Xᘁ ≫ f ▷ Xᘁ ≫ g ▷ Xᘁ := by
      rw [evaluation_coevaluation'']; monoidal

/-- The composition of left adjoint mates is the adjoint mate of the composition. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant657bbd3a22013dd2c7cea87c97e9f40d1626e5ed1d5bfbfc47b79c82603ada55.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f5c2b7b791d00e2309663a7051bb7cf105a492` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
