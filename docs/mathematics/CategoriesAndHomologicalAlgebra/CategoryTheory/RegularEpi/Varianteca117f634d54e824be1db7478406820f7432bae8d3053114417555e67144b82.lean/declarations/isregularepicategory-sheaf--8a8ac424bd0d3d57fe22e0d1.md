# isRegularEpiCategory_sheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d0e3cea-fada-911b-33da-d79d7a597b56",
  "kind": "lemma",
  "lexical_name": "isRegularEpiCategory_sheaf",
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
  "slug": "isregularepicategory-sheaf--8a8ac424bd0d3d57fe22e0d1",
  "source": {
    "blob": "7332ad4893c984d7d783380d567bbb90d3d0ccb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Varianteca117f634d54e824be1db7478406820f7432bae8d3053114417555e67144b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a8ac424bd0d3d57fe22e0d134e13ca1a4f874593514d2f3063da475cbe9b564",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Varianteca117f634d54e824be1db7478406820f7432bae8d3053114417555e67144b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d0e3cea-fada-911b-33da-d79d7a597b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRegularEpiCategory_sheaf (J : GrothendieckTopology C)
    [HasPullbacks D] [HasPushouts D] [IsRegularEpiCategory D]
    (h : ∀ {F G : Sheaf J D} (f : F ⟶ G) [Epi f], ∃ (I : Cᵒᵖ ⥤ D) (p : F.obj ⟶ I) (i : I ⟶ G.obj),
      Epi p ∧ Mono i ∧ p ≫ i = f.hom)
    [HasSheafify J D] [Balanced (Sheaf J D)] : IsRegularEpiCategory (Sheaf J D) where
  regularEpiOfEpi {F G} f _ := by
    -- Factor `f` on the level of presheaves as an epimorphism `p` followed by a monomorphism `i`.
    obtain ⟨I, p, i, hp, hi, hpi⟩ := h f
    -- The sheafification of `f.hom` is `f` pre- and postcomposed with isomorphisms.
    have h₁ : (presheafToSheaf J D).map f.hom =
          (sheafificationAdjunction J D).counit.app F ≫ f ≫
          inv ((sheafificationAdjunction J D).counit.app G) := by
        simpa [← Category.assoc] using (sheafificationAdjunction J D).counit_naturality f
    have h₂ : f = inv ((sheafificationAdjunction J D).counit.app F) ≫
        (presheafToSheaf J D).map f.hom ≫ (sheafificationAdjunction J D).counit.app G := by
      simp [h₁]
    -- The sheafification of `f.val` is still an epimorphism
    have : Epi ((presheafToSheaf J D).map f.hom) := by
      rw [h₁]
      infer_instance
    -- The sheafification of `i` is an epimorphism, because the sheafification of `p ≫ i = f.val`
    -- is an epimorphism.
    have : Epi ((presheafToSheaf J D).map i) := by
      rw [← hpi, Functor.map_comp] at this
      exact epi_of_epi ((presheafToSheaf J D).map p) _
    -- Since the sheafification of `i` is both a monomorphism and an epimorphism, it is an
    -- isomorphism.
    have : IsIso ((presheafToSheaf J D).map i) :=
      Balanced.isIso_of_mono_of_epi _
    -- The next five lines show that it suffices to show that the sheafification of `p` is a
    -- regular epimorphism.
    rw [h₂, isRegularEpi_iff_effectiveEpi]
    suffices EffectiveEpi ((presheafToSheaf J D).map f.hom) by infer_instance
    rw [← hpi, Functor.map_comp]
    suffices EffectiveEpi ((presheafToSheaf J D).map p) by infer_instance
    rw [← isRegularEpi_iff_effectiveEpi]
    -- The underlying presheaf of the kernel pair of `f` is a kernel pair for `p`, and since
    -- sheafification preserves colimits, `p` exhibits its target `I` as a coequalizer of this
    -- kernel pair. The result follows.
    exact ⟨⟨{
      W := (presheafToSheaf J D).obj (pullback f f).obj
      left := (presheafToSheaf J D).map (pullback.fst f f).hom
      right := (presheafToSheaf J D).map (pullback.snd f f).hom
      w := by
        rw [← Functor.map_comp, ← Functor.map_comp]
        congr 1
        rw [← cancel_mono i]
        simp [hpi, ← ObjectProperty.FullSubcategory.comp_hom, pullback.condition]
      isColimit := by
        have := IsRegularEpiCategory.regularEpiOfEpi p
        exact isColimitCoforkMapOfIsColimit (presheafToSheaf J D) _
          (isColimitCoforkOfEffectiveEpi p _
            (PullbackCone.isLimitOfFactors f.hom f.hom i _ _ hpi hpi _
              ((isLimitPullbackConeMapOfIsLimit (sheafToPresheaf _ _) _
                (pullbackIsPullback f f))))) }⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Varianteca117f634d54e824be1db7478406820f7432bae8d3053114417555e67144b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularEpi/Varianteca117f634d54e824be1db7478406820f7432bae8d3053114417555e67144b82.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7332ad4893c984d7d783380d567bbb90d3d0ccb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
