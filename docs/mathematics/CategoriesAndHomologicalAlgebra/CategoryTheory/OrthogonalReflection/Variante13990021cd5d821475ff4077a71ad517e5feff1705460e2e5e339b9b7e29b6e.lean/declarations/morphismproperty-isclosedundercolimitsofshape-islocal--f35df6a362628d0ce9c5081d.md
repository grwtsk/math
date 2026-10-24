# MorphismProperty.isClosedUnderColimitsOfShape_isLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:041d8f37-bfbe-de1c-6910-b8cb19be6ce8",
  "kind": "lemma",
  "lexical_name": "MorphismProperty.isClosedUnderColimitsOfShape_isLocal",
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
  "slug": "morphismproperty-isclosedundercolimitsofshape-islocal--f35df6a362628d0ce9c5081d",
  "source": {
    "blob": "95357aa8e7d66e804c95843a1c9f7969b2b05cca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35df6a362628d0ce9c5081d1ddab999c60f532bc808b3b029872a1e4f54e57d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041d8f37-bfbe-de1c-6910-b8cb19be6ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MorphismProperty.isClosedUnderColimitsOfShape_isLocal
    (J : Type u') [Category.{v'} J] [EssentiallySmall.{w} J]
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [IsCardinalFiltered J κ]
    (hW : ∀ ⦃X Y : C⦄ (f : X ⟶ Y), W f → IsCardinalPresentable X κ ∧ IsCardinalPresentable Y κ) :
    W.isLocal.IsClosedUnderColimitsOfShape J where
  colimitsOfShape_le := fun Z ⟨p⟩ X Y f hf ↦ by
    obtain ⟨_, _⟩ := hW f hf
    refine ⟨fun g₁ g₂ h ↦ ?_, fun g ↦ ?_⟩
    · obtain ⟨j₁, g₁, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ p.isColimit g₁
      obtain ⟨j₂, g₂, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ p.isColimit g₂
      dsimp at h ⊢
      obtain ⟨j₃, u, v, huv⟩ :=
        IsCardinalPresentable.exists_eq_of_isColimit κ p.isColimit (f ≫ g₁) (f ≫ g₂)
          (by simpa)
      simp only [Category.assoc] at huv
      rw [← p.w u, ← p.w v, reassoc_of% ((p.prop_diag_obj j₃ _ hf).1 huv)]
    · obtain ⟨j, g, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ p.isColimit g
      obtain ⟨g, rfl⟩ := (p.prop_diag_obj j _ hf).2 g
      exact ⟨g ≫ p.ι.app j, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95357aa8e7d66e804c95843a1c9f7969b2b05cca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
