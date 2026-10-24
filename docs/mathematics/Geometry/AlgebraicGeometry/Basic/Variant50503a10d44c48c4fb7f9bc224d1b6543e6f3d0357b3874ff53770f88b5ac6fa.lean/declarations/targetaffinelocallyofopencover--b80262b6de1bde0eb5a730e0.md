# targetAffineLocallyOfOpenCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56f0948c-c088-8693-587b-4a5a1f92d82f",
  "kind": "theorem",
  "lexical_name": "targetAffineLocallyOfOpenCover",
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
  "slug": "targetaffinelocallyofopencover--b80262b6de1bde0eb5a730e0",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 177,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b80262b6de1bde0eb5a730e0cec03cf61fc1ae1d536c72b532400914625f604f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56f0948c-c088-8693-587b-4a5a1f92d82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetAffineLocallyOfOpenCover {P : AffineTargetMorphismProperty} (hP : P.IsLocal)
    {X Y : Scheme} (f : X ⟶ Y) (𝒰 : Y.OpenCover) [∀ i, IsAffine (𝒰.obj i)]
    (h𝒰 : ∀ i, P (pullback.snd : (𝒰.pullbackCover f).obj i ⟶ 𝒰.obj i)) :
    targetAffineLocally P f := by
  classical
  let S i := (⟨⟨Set.range (𝒰.map i).1.base, (𝒰.IsOpen i).base_open.open_range⟩,
    rangeIsAffineOpenOfOpenImmersion (𝒰.map i)⟩ : Y.affineOpens)
  intro U
  apply of_affine_open_cover (P := _) U (Set.range S)
  · intro U r h
    haveI : IsAffine _ := U.2
    have := hP.2 (f ∣_ U.1)
    replace this := this (Y.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op r) h
    -- Porting note : the following 2 instances was not necessary
    haveI i1 : IsAffine (Y.restrict (Scheme.affineBasicOpen Y r).1.openEmbedding) :=
      (Scheme.affineBasicOpen Y r).2
    haveI i2 : IsAffine
      ((Y.restrict U.1.openEmbedding).restrict
        ((Y.restrict U.1.openEmbedding).basicOpen <|
          (Y.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op r)).openEmbedding) :=
      IsAffineOpen.basicOpenIsAffine (X := Y.restrict U.1.openEmbedding) (topIsAffineOpen _) _
    rw [← P.toProperty_apply] at this ⊢
    exact (hP.1.arrow_mk_iso_iff (morphismRestrictRestrictBasicOpen f _ r)).mp this
  · intro U s hs H
    haveI : IsAffine _ := U.2
    apply hP.3 (f ∣_ U.1) (s.image (Y.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op))
    · apply_fun Ideal.comap (Y.presheaf.map (eqToHom U.1.openEmbedding_obj_top.symm).op) at hs
      rw [Ideal.comap_top] at hs
      rw [← hs]
      simp only [eqToHom_op, eqToHom_map, Finset.coe_image]
      have : ∀ {R S : CommRingCat} (e : S = R) (s : Set S),
          Ideal.span (eqToHom e '' s) = Ideal.comap (eqToHom e.symm) (Ideal.span s) := by
        intro _ _ e _
        subst e
        simp only [eqToHom_refl, id_apply, Set.image_id']
        -- Porting note : Lean didn't see `𝟙 _` is just ring hom id
        exact (Ideal.comap_id _).symm
      apply this
    · rintro ⟨r, hr⟩
      obtain ⟨r, hr', rfl⟩ := Finset.mem_image.mp hr
      specialize H ⟨r, hr'⟩
      -- Porting note : the following 2 instances was not necessary
      haveI i1 : IsAffine (Y.restrict (Scheme.affineBasicOpen Y r).1.openEmbedding) :=
        (Scheme.affineBasicOpen Y r).2
      haveI i2 : IsAffine
        ((Y.restrict U.1.openEmbedding).restrict
          ((Y.restrict U.1.openEmbedding).basicOpen <|
            (Y.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op r)).openEmbedding) :=
        IsAffineOpen.basicOpenIsAffine (X := Y.restrict U.1.openEmbedding) (topIsAffineOpen _) _
      rw [← P.toProperty_apply] at H ⊢
      exact (hP.1.arrow_mk_iso_iff (morphismRestrictRestrictBasicOpen f _ r)).mpr H
  · rw [Set.eq_univ_iff_forall]
    simp only [Set.mem_iUnion]
    intro x
    exact ⟨⟨_, ⟨𝒰.f x, rfl⟩⟩, 𝒰.Covers x⟩
  · rintro ⟨_, i, rfl⟩
    specialize h𝒰 i
    -- Porting note : the next instance was not necessary
    haveI i1 : IsAffine (Y.restrict (S i).1.openEmbedding) := (S i).2
    rw [← P.toProperty_apply] at h𝒰 ⊢
    exact (hP.1.arrow_mk_iso_iff (morphismRestrictOpensRange f _)).mpr h𝒰
#align algebraic_geometry.target_affine_locally_of_open_cover AlgebraicGeometry.targetAffineLocallyOfOpenCover

open List in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
