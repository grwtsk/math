# targetAffineLocallyOfOpenCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11672627-d33c-fb69-e50c-46bbb74ad976",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:152ea5e6-6557-955c-704c-184382557d2d",
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
  "slug": "targetaffinelocallyofopencover--2e484673a49df6d62a39f079",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 169,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e484673a49df6d62a39f07901b2f2fecce279ff38bc8c816a127032296436f2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152ea5e6-6557-955c-704c-184382557d2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–232.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
