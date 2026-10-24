# IsAffineOpen.basicOpenIsAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6442ab0-6b24-54fb-2ec7-6bf734d13219",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.basicOpenIsAffine",
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
  "slug": "isaffineopen-basicopenisaffine--79de3478f43b9f3797c507ad",
  "source": {
    "blob": "7419be8a90ea807aa3d0f0926d47c4493835a7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 349,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79de3478f43b9f3797c507adbac9d0126268f763ef2d14d8ff9d46e9d5e85dca",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6442ab0-6b24-54fb-2ec7-6bf734d13219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.basicOpenIsAffine {X : Scheme} {U : Opens X} (hU : IsAffineOpen U)
    (f : X.presheaf.obj (op U)) : IsAffineOpen (X.basicOpen f) := by
  -- Porting note : this instance needs to be manually added, though no explicit argument is
  -- provided.
  have o1 : IsOpenImmersion <|
    Scheme.Spec.map
      (CommRingCat.ofHom (algebraMap ((X.presheaf.obj <| op U)) (Localization.Away f))).op ≫
    hU.fromSpec
  · exact PresheafedSpace.IsOpenImmersion.comp (hf := inferInstance) (hg := inferInstance)
  convert
    rangeIsAffineOpenOfOpenImmersion
      (Scheme.Spec.map
          (CommRingCat.ofHom (algebraMap (X.presheaf.obj (op U)) (Localization.Away f))).op ≫
        hU.fromSpec)
  ext1
  have :
    hU.fromSpec.val.base '' (hU.fromSpec.val.base ⁻¹' (X.basicOpen f : Set X)) =
      (X.basicOpen f : Set X) := by
    rw [Set.image_preimage_eq_inter_range, Set.inter_eq_left_iff_subset, hU.fromSpec_range]
    exact Scheme.basicOpen_le _ _
  rw [Scheme.Hom.opensRange_coe, Scheme.comp_val_base, ← this, coe_comp, Set.range_comp]
  -- Porting note : `congr 1` did not work
  apply congr_arg (_ '' ·)
  refine' (Opens.coe_inj.mpr <| Scheme.preimage_basicOpen hU.fromSpec f).trans _
  refine' Eq.trans _ (PrimeSpectrum.localization_away_comap_range (Localization.Away f) f).symm
  congr 1
  have : (Opens.map hU.fromSpec.val.base).obj U = ⊤ := by
    ext1
    change hU.fromSpec.1.base ⁻¹' (U : Set X) = Set.univ
    rw [← hU.fromSpec_range, ← Set.image_univ]
    exact Set.preimage_image_eq _ PresheafedSpace.IsOpenImmersion.base_open.inj
  refine' Eq.trans _ (Opens.coe_inj.mpr <| basicOpen_eq_of_affine f)
  have lm : ∀ s, (Opens.map hU.fromSpec.val.base).obj U ⊓ s = s := fun s => this.symm ▸ top_inf_eq
  refine' Opens.coe_inj.mpr <| Eq.trans _ (lm _)
  refine'
    Eq.trans _
      ((Scheme.Spec.obj <| op <| X.presheaf.obj <| op U).basicOpen_res _ (eqToHom this).op)
  -- Porting note : changed `rw` to `erw`
  erw [← comp_apply]
  congr 2
  rw [Iso.eq_inv_comp]
  erw [hU.SpecΓIdentity_hom_app_fromSpec]
#align algebraic_geometry.is_affine_open.basic_open_is_affine AlgebraicGeometry.IsAffineOpen.basicOpenIsAffine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7419be8a90ea807aa3d0f0926d47c4493835a7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
