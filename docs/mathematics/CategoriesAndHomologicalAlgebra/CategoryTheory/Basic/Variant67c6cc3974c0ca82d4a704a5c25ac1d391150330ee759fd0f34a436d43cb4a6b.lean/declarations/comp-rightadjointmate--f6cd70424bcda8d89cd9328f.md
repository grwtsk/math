# comp_rightAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da1fec55-094f-8bab-e0df-b3d3e3467aad",
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
  "slug": "comp-rightadjointmate--f6cd70424bcda8d89cd9328f",
  "source": {
    "blob": "c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6cd70424bcda8d89cd9328f6204bad4a63fbfca2996212cfacf67fa256695a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da1fec55-094f-8bab-e0df-b3d3e3467aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–250.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
