# isLocal_reflectionObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e3d0df7-fc35-37d5-6391-2423d73ab9a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01d5963d-cac2-f049-4ad9-8ff1191f5b28",
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
  "slug": "islocal-reflectionobj--6239fa98a05fbc68c41ee7f6",
  "source": {
    "blob": "ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 408,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6239fa98a05fbc68c41ee7f6eef0902723ce85106f9d084e4337bdeac30eaf26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01d5963d-cac2-f049-4ad9-8ff1191f5b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–436.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variant24f2873509127c322e54b93168e39fbb43422bbf0b0155dd1f5e3605c04ef25b.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9bce497b5c63d82235f2ef55a1ca6c90f2dca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
