# comp_leftAdjointMate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "746038af84a0be6e682335dd41e9e9357477ce3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 358,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23f1850f-f2a5-0b14-020f-732003d068b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cd0c468-c9e4-b2b3-0af7-43e513479d18",
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
  "slug": "comp-leftadjointmate--9e2b075a5b50cc3812febdfb",
  "source": {
    "blob": "746038af84a0be6e682335dd41e9e9357477ce3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 358,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2b075a5b50cc3812febdfb4ed65cc365030690dc23c25c1c80f8b894ffee8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd0c468-c9e4-b2b3-0af7-43e513479d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–385.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3a71ed4166356d5762efc0e7681bd51d92af1d812e003021ae6a1c3bd959ba4e.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `746038af84a0be6e682335dd41e9e9357477ce3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
