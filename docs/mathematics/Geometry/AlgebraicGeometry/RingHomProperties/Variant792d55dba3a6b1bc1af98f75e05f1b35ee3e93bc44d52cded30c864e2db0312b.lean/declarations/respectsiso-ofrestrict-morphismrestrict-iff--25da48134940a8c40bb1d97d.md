# RespectsIso.ofRestrict_morphismRestrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cac3f4db-26c0-43eb-e576-c8df962b795b",
  "kind": "theorem",
  "lexical_name": "RespectsIso.ofRestrict_morphismRestrict_iff",
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
  "slug": "respectsiso-ofrestrict-morphismrestrict-iff--25da48134940a8c40bb1d97d",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 92,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25da48134940a8c40bb1d97da44f7b3ee84e51350beeafe274059f4afe5fe3f7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac3f4db-26c0-43eb-e576-c8df962b795b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RespectsIso.ofRestrict_morphismRestrict_iff (hP : RingHom.RespectsIso @P) {X Y : Scheme}
    [IsAffine Y] (f : X ⟶ Y) (r : Y.presheaf.obj (Opposite.op ⊤)) (U : Opens X.carrier)
    (hU : IsAffineOpen U) {V : Opens _}
    (e : V = (Opens.map (X.ofRestrict ((Opens.map f.1.base).obj _).openEmbedding).1.base).obj U) :
    P (Scheme.Γ.map ((X.restrict ((Opens.map f.1.base).obj _).openEmbedding).ofRestrict
      V.openEmbedding ≫ f ∣_ Y.basicOpen r).op) ↔
    P (Localization.awayMap (Scheme.Γ.map (X.ofRestrict U.openEmbedding ≫ f).op) r) := by
  subst e
  letI a1 : Algebra (Scheme.Γ.obj (Opposite.op Y))
    (Scheme.Γ.obj (Opposite.op (Y.restrict (Y.basicOpen r).openEmbedding))) := ΓRestrictAlgebra _
  let U' := ((Opens.map (X.ofRestrict ((Opens.map f.val.base).obj
    (Y.basicOpen r)).openEmbedding).val.base).obj U).openEmbedding
  letI a2 : Algebra (Scheme.Γ.obj (Opposite.op (X.restrict U.openEmbedding)))
    (Scheme.Γ.obj <| Opposite.op <|
      (X.restrict ((Opens.map f.val.base).obj (Y.basicOpen r)).openEmbedding).restrict U') := by
    apply RingHom.toAlgebra
    refine X.presheaf.map
      (@homOfLE _ _ ((IsOpenMap.functor _).obj _) ((IsOpenMap.functor _).obj _) ?_).op
    rw [← SetLike.coe_subset_coe, Functor.op_obj]
    dsimp [Opens.inclusion]
    simp only [Set.image_univ, Set.image_subset_iff, Subtype.range_val]
    rw [ContinuousMap.coe_mk, Subtype.range_val, ContinuousMap.coe_mk, ContinuousMap.coe_mk,
      Subtype.range_val]
    rfl
  have i1 := AlgebraicGeometry.Γ_restrict_isLocalization Y r
  have i2 : IsLocalization.Away ((Scheme.Γ.map (X.ofRestrict U.openEmbedding ≫ f).op) r)
    (Scheme.Γ.obj <| Opposite.op <|
      (X.restrict ((Opens.map f.val.base).obj (Y.basicOpen r)).openEmbedding).restrict U') := by
    rw [← U.openEmbedding_obj_top] at hU
    dsimp [Scheme.Γ_obj_op, Scheme.Γ_map_op, Scheme.restrict]
    apply AlgebraicGeometry.isLocalization_of_eq_basicOpen _ hU
    rw [Opens.openEmbedding_obj_top, Opens.functor_obj_map_obj]
    convert (X.basicOpen_res (Scheme.Γ.map f.op r) (homOfLE le_top).op).symm using 1
    rw [Opens.openEmbedding_obj_top, Opens.openEmbedding_obj_top, inf_comm, Scheme.Γ_map_op]
    -- Porting note : changed `rw` to `erw`
    erw [← Scheme.preimage_basicOpen]
  -- Porting note : have to add many explicit variables
  have := @RespectsIso.is_localization_away_iff (hP := hP) (R := Scheme.Γ.obj <| Opposite.op Y)
    (S := Scheme.Γ.obj (Opposite.op (X.restrict U.openEmbedding)))
    (R' := Scheme.Γ.obj (Opposite.op (Y.restrict (Y.basicOpen r).openEmbedding)))
    (S' := Scheme.Γ.obj <| Opposite.op <|
      (X.restrict ((Opens.map f.val.base).obj (Y.basicOpen r)).openEmbedding).restrict U')
    _ _ _ _ _ _ (Scheme.Γ.map (X.ofRestrict U.openEmbedding ≫ f).op) r
  rw [this, iff_iff_eq]
  congr 1
  apply IsLocalization.ringHom_ext (R := Scheme.Γ.obj (Opposite.op Y)) (Submonoid.powers r) _
  rw [IsLocalization.Away.map, IsLocalization.map_comp, RingHom.algebraMap_toAlgebra]
  rw [op_comp, op_comp, Functor.map_comp, Functor.map_comp]
  change _ = comp (X.presheaf.map _) _
  refine' (@Category.assoc CommRingCat _ _ _ _ _ _ _ _).symm.trans _
  refine' Eq.trans _ (@Category.assoc CommRingCat _ _ _ _ _ _ _ _)
  dsimp only [Scheme.Γ_map, Quiver.Hom.unop_op]
  rw [morphismRestrict_c_app, Category.assoc, Category.assoc, Category.assoc]
  erw [f.1.c.naturality_assoc, ← X.presheaf.map_comp, ← X.presheaf.map_comp, ← X.presheaf.map_comp]
  congr 1
#align ring_hom.respects_iso.of_restrict_morphism_restrict_iff RingHom.RespectsIso.ofRestrict_morphismRestrict_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
