# comp_leftAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeff6e6c-2881-22ef-48d3-fddc70d1f347",
  "kind": "theorem",
  "lexical_name": "comp_leftAdjointMate",
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
  "slug": "comp-leftadjointmate--5b320b824134458985fecd09",
  "source": {
    "blob": "c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b320b824134458985fecd09c54a66aa48d86a1fe79ba4e51b8fe6872e714949",
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

Occurrence: `result:aeff6e6c-2881-22ef-48d3-fddc70d1f347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_leftAdjointMate {X Y Z : C} [HasLeftDual X] [HasLeftDual Y] [HasLeftDual Z] {f : X ⟶ Y}
    {g : Y ⟶ Z} : (ᘁf ≫ g) = (ᘁg) ≫ ᘁf := by
  rw [leftAdjointMate_comp]
  simp only [leftAdjointMate, MonoidalCategory.whiskerLeft_comp]
  simp only [← Category.assoc]; congr 3; simp only [Category.assoc]
  simp only [← comp_whiskerRight]; congr 2
  symm
  calc
    _ = 𝟙 _ ⊗≫ ((𝟙_ C) ◁ η_ (ᘁY) Y ≫ η_ (ᘁX) X ▷ ((ᘁY) ⊗ Y)) ⊗≫ (ᘁX) ◁ f ▷ (ᘁY) ▷ Y ⊗≫
        (ᘁX) ◁ ε_ (ᘁY) Y ▷ Y ⊗≫ (ᘁX) ◁ g := by
      rw [tensorHom_def]; monoidal
    _ = η_ (ᘁX) X ⊗≫ (((ᘁX) ⊗ X) ◁ η_ (ᘁY) Y ≫ ((ᘁX) ◁ f) ▷ ((ᘁY) ⊗ Y)) ⊗≫
        (ᘁX) ◁ ε_ (ᘁY) Y ▷ Y ⊗≫ (ᘁX) ◁ g := by
      rw [whisker_exchange]; monoidal
    _ = η_ (ᘁX) X ⊗≫ ((ᘁX) ◁ f) ⊗≫ (ᘁX) ◁ (Y ◁ η_ (ᘁY) Y ⊗≫ ε_ (ᘁY) Y ▷ Y) ⊗≫ (ᘁX) ◁ g := by
      rw [whisker_exchange]; monoidal
    _ = η_ (ᘁX) X ≫ (ᘁX) ◁ f ≫ (ᘁX) ◁ g := by
      rw [coevaluation_evaluation'']; monoidal

/-- Given an exact pairing on `Y Y'`,
we get a bijection on hom-sets `(Y' ⊗ X ⟶ Z) ≃ (X ⟶ Y ⊗ Z)`
by "pulling the string on the left" up or down.

This gives the adjunction `tensorLeftAdjunction Y Y' : tensorLeft Y' ⊣ tensorLeft Y`.

This adjunction is often referred to as "Frobenius reciprocity" in the
fusion categories / planar algebras / subfactors literature.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
