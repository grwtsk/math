# sourceAffineLocally_of_source_openCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e32883c-4203-ea56-6deb-bed0f7d9d960",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a0381cf-8cd4-76f4-f044-e009d5b954ff",
  "kind": "theorem",
  "lexical_name": "sourceAffineLocally_of_source_openCover",
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
  "slug": "sourceaffinelocally-of-source-opencover--34d9c4461ce067f580b33bd6",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 349,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34d9c4461ce067f580b33bd6e165df0be16ae409c970a16d200608cabbed9ba6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0381cf-8cd4-76f4-f044-e009d5b954ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceAffineLocally_of_source_openCover {X Y : Scheme} (f : X ⟶ Y) [IsAffine Y]
    (𝒰 : X.OpenCover) [∀ i, IsAffine (𝒰.obj i)] (H : ∀ i, P (Scheme.Γ.map (𝒰.map i ≫ f).op)) :
    sourceAffineLocally (@P) f := by
  let S i := (⟨⟨Set.range (𝒰.map i).1.base, (𝒰.IsOpen i).base_open.open_range⟩,
    rangeIsAffineOpenOfOpenImmersion (𝒰.map i)⟩ : X.affineOpens)
  intro U
  -- Porting note: here is what we are eliminating into Lean
  apply of_affine_open_cover
    (P := fun V => P (Scheme.Γ.map (X.ofRestrict (Opens.openEmbedding V.val) ≫ f).op)) U
  pick_goal 5
  · exact Set.range S
  · intro U r H
    -- Porting note: failing on instance synthesis for an (unspecified) meta variable
    -- made φ explicit and forced to use dsimp in the proof
    convert hP.StableUnderComposition
      (S := Scheme.Γ.obj (Opposite.op (X.restrict <| Opens.openEmbedding U.val)))
      (T := Scheme.Γ.obj (Opposite.op (X.restrict <| Opens.openEmbedding (X.basicOpen r))))
      ?_ ?_ H ?_ using 1
    swap
    · refine' X.presheaf.map
          (@homOfLE _ _ ((IsOpenMap.functor _).obj _) ((IsOpenMap.functor _).obj _) _).op
      rw [unop_op, unop_op, Opens.openEmbedding_obj_top, Opens.openEmbedding_obj_top]
      exact X.basicOpen_le _
    · rw [op_comp, op_comp, Functor.map_comp, Functor.map_comp]
      refine' (Eq.trans _ (Category.assoc (obj := CommRingCat) _ _ _).symm : _)
      congr 1
      dsimp
      refine' Eq.trans _ (X.presheaf.map_comp _ _)
      change X.presheaf.map _ = _
      congr!
    -- Porting note: need to pass Algebra through explicitly
    convert @HoldsForLocalizationAway _ hP _
      (Scheme.Γ.obj (Opposite.op (X.restrict (X.basicOpen r).openEmbedding))) _ _ ?_
      (X.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op r) ?_
    · exact RingHom.algebraMap_toAlgebra
        (R := Scheme.Γ.obj <| Opposite.op <| X.restrict (U.1.openEmbedding))
        (S :=
          Scheme.Γ.obj (Opposite.op <| X.restrict (X.affineBasicOpen r).1.openEmbedding)) _|>.symm
    · dsimp [Scheme.Γ]
      have := U.2
      rw [← U.1.openEmbedding_obj_top] at this
      -- Porting note: the second argument of `IsLocalization.Away` is a type, and we want
      -- to generate an equality, so using `typeEqs := true` to force allowing type equalities.
      convert (config := {typeEqs := true, transparency := .default})
          isLocalization_basicOpen this _ using 5
      all_goals rw [Opens.openEmbedding_obj_top]; exact (Scheme.basicOpen_res_eq _ _ _).symm
  · introv hs hs'
    exact sourceAffineLocally_of_source_open_cover_aux hP.respectsIso hP.2 _ _ _ hs hs'
  · rw [Set.eq_univ_iff_forall]
    intro x
    rw [Set.mem_iUnion]
    exact ⟨⟨_, 𝒰.f x, rfl⟩, 𝒰.Covers x⟩
  · rintro ⟨_, i, rfl⟩
    specialize H i
    rw [← hP.respectsIso.cancel_right_isIso _
        (Scheme.Γ.map
          (IsOpenImmersion.isoOfRangeEq (𝒰.map i) (X.ofRestrict (S i).1.openEmbedding)
                Subtype.range_coe.symm).inv.op)] at H
    rwa [← Scheme.Γ.map_comp, ← op_comp, IsOpenImmersion.isoOfRangeEq_inv,
      IsOpenImmersion.lift_fac_assoc] at H
#align ring_hom.property_is_local.source_affine_locally_of_source_open_cover RingHom.PropertyIsLocal.sourceAffineLocally_of_source_openCover

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
