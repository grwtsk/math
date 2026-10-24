# isLocal_reflectionObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c57221e-da49-ffa2-86be-89935f905d1c",
  "kind": "lemma",
  "lexical_name": "isLocal_reflectionObj",
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
  "slug": "islocal-reflectionobj--5e7b479404d3463211473b67",
  "source": {
    "blob": "95357aa8e7d66e804c95843a1c9f7969b2b05cca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 416,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e7b479404d3463211473b67d2833312aab6dacc4e01c3e61064b56c15635fa1",
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

Occurrence: `result:3c57221e-da49-ffa2-86be-89935f905d1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_reflectionObj :
    W.isLocal (reflectionObj W Z κ) := by
  let H := transfiniteCompositionOfShapeReflection W Z κ
  intro X Y f hf
  obtain ⟨_, _⟩ := hW f hf
  refine ⟨fun g₁ g₂ h ↦ ?_, fun g ↦ ?_⟩
  · obtain ⟨j, g₁, g₂, rfl, rfl⟩ :
      ∃ (j : κ.ord.ToType) (g₁' g₂' : Y ⟶ H.F.obj j), g₁' ≫ H.incl.app j = g₁ ∧
        g₂' ≫ H.incl.app j = g₂ := by
      obtain ⟨j₁, g₁, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ H.isColimit g₁
      obtain ⟨j₂, g₂, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ H.isColimit g₂
      exact ⟨max j₁ j₂, g₁ ≫ H.F.map (homOfLE (le_max_left _ _)),
        g₂ ≫ H.F.map (homOfLE (le_max_right _ _)), by simp⟩
    dsimp at h
    obtain ⟨k, u, hk⟩ := IsCardinalPresentable.exists_eq_of_isColimit' κ H.isColimit
      (f ≫ g₁) (f ≫ g₂) (by simpa)
    have hg := iteration_map_succ_injectivity f hf
      (g₁ ≫ H.F.map u) (g₂ ≫ H.F.map u) (by simpa using hk)
    simp only [homOfLE_leOfHom, Category.assoc] at hg
    have := H.incl.naturality (u ≫ homOfLE (Order.le_succ k))
    simp only [Functor.const_obj_obj, Functor.const_obj_map, Category.comp_id] at this
    simp only [← this, Functor.map_comp, Category.assoc]
    rw [reassoc_of% hg]
  · obtain ⟨j, g, rfl⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ H.isColimit g
    obtain ⟨g', hg'⟩ := iteration_map_succ_surjectivity f hf g
    exact ⟨g' ≫ H.incl.app (Order.succ j), by simp [reassoc_of% hg']⟩

/-- The morphism `reflection W Z κ : Z ⟶ reflectionObj W Z κ` exhibits `reflectionObj W Z κ`
as the image of `Z` by the left adjoint of the inclusion `W.isLocal.ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95357aa8e7d66e804c95843a1c9f7969b2b05cca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
