# AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25c34df2-913c-a07e-8504-1beac9a423b6",
  "kind": "theorem",
  "lexical_name": "AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal",
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
  "slug": "affinetargetmorphismproperty-islocal-targetaffinelocallyislocal--ec40695b62ba0d8d621c62e8",
  "source": {
    "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 356,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec40695b62ba0d8d621c62e8b67d41cd8a06cd04110ad5ccd98e22354ca7fec8",
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

Occurrence: `result:25c34df2-913c-a07e-8504-1beac9a423b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal
    {P : AffineTargetMorphismProperty} (hP : P.IsLocal) :
    PropertyIsLocalAtTarget (targetAffineLocally P) := by
  constructor
  · exact targetAffineLocally_respectsIso hP.1
  · intro X Y f U H V
    rw [← P.toProperty_apply (i := V.2), hP.1.arrow_mk_iso_iff (morphismRestrictRestrict f _ _)]
    convert H ⟨_, IsAffineOpen.imageIsOpenImmersion V.2 (Y.ofRestrict _)⟩
    rw [← P.toProperty_apply (i := IsAffineOpen.imageIsOpenImmersion V.2 (Y.ofRestrict _))]
  · rintro X Y f 𝒰 h𝒰
    -- Porting note : rewrite `[(hP.affine_openCover_TFAE f).out 0 1` directly complains about
    -- metavariables
    have h01 := (hP.affine_openCover_TFAE f).out 0 1
    rw [h01]
    refine' ⟨𝒰.bind fun _ => Scheme.affineCover _, _, _⟩
    · intro i; dsimp [Scheme.OpenCover.bind]; infer_instance
    · intro i
      specialize h𝒰 i.1
      -- Porting note : rewrite `[(hP.affine_openCover_TFAE pullback.snd).out 0 1` directly
      -- complains about metavariables
      have h02 := (hP.affine_openCover_TFAE (pullback.snd : pullback f (𝒰.map i.fst) ⟶ _)).out 0 2
      rw [h02] at h𝒰
      specialize h𝒰 (Scheme.affineCover _) i.2
      let e : pullback f ((𝒰.obj i.fst).affineCover.map i.snd ≫ 𝒰.map i.fst) ⟶
          pullback (pullback.snd : pullback f (𝒰.map i.fst) ⟶ _)
            ((𝒰.obj i.fst).affineCover.map i.snd) := by
        refine' (pullbackSymmetry _ _).hom ≫ _
        refine' (pullbackRightPullbackFstIso _ _ _).inv ≫ _
        refine' (pullbackSymmetry _ _).hom ≫ _
        refine' pullback.map _ _ _ _ (pullbackSymmetry _ _).hom (𝟙 _) (𝟙 _) _ _ <;>
        simp only [Category.comp_id, Category.id_comp, pullbackSymmetry_hom_comp_snd]
      rw [← affine_cancel_left_isIso hP.1 e] at h𝒰
      convert h𝒰 using 1
      simp
#align algebraic_geometry.affine_target_morphism_property.is_local.target_affine_locally_is_local AlgebraicGeometry.AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal

open List in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
