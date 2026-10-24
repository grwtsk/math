# comm₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae7bd88c-4ff2-b046-ed02-44d142fd4381",
  "kind": "lemma",
  "lexical_name": "comm₁",
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
  "slug": "comm--ae5bab7781ce5f3d7df1eee3",
  "source": {
    "blob": "240dfa2833b3693dc737122596f78c6f10c9f2c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae5bab7781ce5f3d7df1eee3cc3639b194206e11b72516f8ccb147516257b7d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae7bd88c-4ff2-b046-ed02-44d142fd4381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comm₁ (j : J) :
    (mapBifunctorMap f₁ f₂ F c).f j =
    (mapBifunctor K₁ K₂ F c).d j (c.next j) ≫
          mapBifunctorMapHomotopy.hom₁ h₁ f₂ F c (c.next j) j +
        mapBifunctorMapHomotopy.hom₁ h₁ f₂ F c j (c.prev j) ≫
          (mapBifunctor L₁ L₂ F c).d (c.prev j) j +
      (mapBifunctorMap f₁' f₂ F c).f j := by
  ext i₁ i₂ h
  simp? [HomologicalComplex₂.total_d, h₁.comm i₁, dFrom, fromNext, toPrev, dTo] says
    simp only [ι_mapBifunctorMap, h₁.comm i₁, dNext_eq_dFrom_fromNext, dFrom, fromNext,
      AddMonoidHom.mk'_apply, prevD_eq_toPrev_dTo, toPrev, dTo, Functor.map_add,
      Functor.map_comp, NatTrans.app_add, NatTrans.comp_app,
      Preadditive.add_comp, assoc, HomologicalComplex₂.total_d,
      Functor.mapBifunctorHomologicalComplex_obj_obj_toGradedObject, Preadditive.comp_add,
      HomologicalComplex₂.ι_D₁_assoc,
      HomologicalComplex₂.ι_D₂_assoc, add_left_inj]
  have : ∀ {X Y : D} (a b c d e f : X ⟶ Y), a = c → b = e → f = -d →
      a + b = c + d + (e + f) := by rintro X Y a b _ d _ _ rfl rfl rfl; abel
  apply this
  · by_cases h₃ : c₁.Rel i₁ (c₁.next i₁)
    · rw [HomologicalComplex₂.d₁_eq _ _ h₃ _ _ (by rw [← h, ComplexShape.next_π₁ c₂ c h₃]),
        Functor.mapBifunctorHomologicalComplex_obj_obj_d_f, Linear.units_smul_comp, assoc,
        ιMapBifunctor_hom₁ _ _ _ _ i₁ _ _ _ _ _ (c₁.prev_eq' h₃),
        Linear.comp_units_smul, smul_smul, Int.units_mul_self, one_smul,
        ιMapBifunctorOrZero_eq]
    · rw [K₁.shape _ _ h₃, Functor.map_zero, zero_app, zero_comp,
        HomologicalComplex₂.d₁_eq_zero _ _ _ _ _ h₃, zero_comp]
  · rw [ιMapBifunctor_hom₁_assoc _ _ _ _ _ _ _ _ _ _ rfl]
    by_cases h₃ : c₁.Rel (c₁.prev i₁) i₁
    · rw [ιMapBifunctorOrZero_eq _ _ _ _ _ _ _ (by rw [← ComplexShape.prev_π₁ c₂ c h₃, h]),
        Linear.units_smul_comp, assoc, assoc, HomologicalComplex₂.ι_D₁,
        HomologicalComplex₂.d₁_eq _ _ h₃ _ _ h, Linear.comp_units_smul,
        Linear.comp_units_smul, smul_smul, Int.units_mul_self, one_smul,
        Functor.mapBifunctorHomologicalComplex_obj_obj_d_f, NatTrans.naturality_assoc]
    · rw [h₁.zero _ _ h₃, Functor.map_zero, zero_app, zero_comp, zero_comp, smul_zero, zero_comp]
  · rw [ιMapBifunctor_hom₁_assoc _ _ _ _ _ _ _ _ _ _ rfl]
    by_cases h₃ : c₁.Rel (c₁.prev i₁) i₁
    · rw [Linear.units_smul_comp, assoc, assoc,
        ιMapBifunctorOrZero_eq _ _ _ _ _ _ _ (by rw [← ComplexShape.prev_π₁ c₂ c h₃, h]),
        HomologicalComplex₂.ι_D₂]
      by_cases h₄ : c₂.Rel i₂ (c₂.next i₂)
      · exact comm₁_aux h₁ f₂ F c h₃ h₄ j h
      · rw [HomologicalComplex₂.d₂_eq_zero _ _ _ _ _ h₄, comp_zero, comp_zero, smul_zero,
          HomologicalComplex₂.d₂_eq_zero _ _ _ _ _ h₄, zero_comp, neg_zero]
    · rw [h₁.zero _ _ h₃, Functor.map_zero, zero_app, zero_comp,
        smul_zero, zero_comp, zero_eq_neg]
      by_cases h₄ : c₂.Rel i₂ (c₂.next i₂)
      · by_cases h₅ : c.Rel j (c.next j)
        · rw [HomologicalComplex₂.d₂_eq _ _ _ h₄ _ (by rw [← ComplexShape.next_π₂ c₁ c i₁ h₄, h]),
            Linear.units_smul_comp, assoc, Functor.mapBifunctorHomologicalComplex_obj_obj_X_d,
            ιMapBifunctor_hom₁ _ _ _ _ _ _ _ _ _ _ rfl, h₁.zero _ _ h₃,
            Functor.map_zero, zero_app, zero_comp, smul_zero, comp_zero, smul_zero]
        · rw [zero₁ _ _ _ _ _ _ h₅, comp_zero]
      · rw [HomologicalComplex₂.d₂_eq_zero _ _ _ _ _ h₄, zero_comp]

end mapBifunctorMapHomotopy

open mapBifunctorMapHomotopy in
/-- The homotopy between `mapBifunctorMap f₁ f₂ F c` and `mapBifunctorMap f₁' f₂ F c` that
is induced by a homotopy between `f₁` and `f₁'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240dfa2833b3693dc737122596f78c6f10c9f2c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
