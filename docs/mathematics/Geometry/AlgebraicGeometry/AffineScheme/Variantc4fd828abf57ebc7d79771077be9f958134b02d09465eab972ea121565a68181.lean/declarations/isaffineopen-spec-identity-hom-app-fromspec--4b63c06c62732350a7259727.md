# IsAffineOpen.SpecΓIdentity_hom_app_fromSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f27f4639-9525-41f5-d7b6-c9aee8d013c3",
  "kind": "theorem",
  "lexical_name": "IsAffineOpen.SpecΓIdentity_hom_app_fromSpec",
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
  "slug": "isaffineopen-spec-identity-hom-app-fromspec--4b63c06c62732350a7259727",
  "source": {
    "blob": "7419be8a90ea807aa3d0f0926d47c4493835a7a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 309,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b63c06c62732350a7259727556ff502f1edf1713e2b15505f1b7bc05d497860",
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

Occurrence: `result:f27f4639-9525-41f5-d7b6-c9aee8d013c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAffineOpen.SpecΓIdentity_hom_app_fromSpec {X : Scheme} {U : Opens X}
    (hU : IsAffineOpen U) :
    SpecΓIdentity.hom.app (X.presheaf.obj <| op U) ≫ hU.fromSpec.1.c.app (op U) =
      (Scheme.Spec.obj _).presheaf.map (eqToHom hU.fromSpec_base_preimage).op := by
  haveI : IsAffine _ := hU
  have e₁ := SpecΓIdentity.hom.naturality (X.presheaf.map (eqToHom U.openEmbedding_obj_top).op)
  rw [← IsIso.comp_inv_eq] at e₁
  have e₂ := ΓSpec.adjunction_unit_app_app_top (X.restrict U.openEmbedding)
  erw [← e₂] at e₁
  simp only [Functor.id_map, Quiver.Hom.unop_op, Functor.comp_map, ← Functor.map_inv, ← op_inv,
    LocallyRingedSpace.Γ_map, Category.assoc, Functor.rightOp_map, inv_eqToHom] at e₁
  delta IsAffineOpen.fromSpec Scheme.isoSpec
  rw [Scheme.comp_val_c_app, Scheme.comp_val_c_app, ← e₁]
  simp_rw [Category.assoc]
  erw [← X.presheaf.map_comp_assoc]
  rw [← op_comp]
  have e₃ :
    U.openEmbedding.isOpenMap.adjunction.counit.app U ≫ eqToHom U.openEmbedding_obj_top.symm =
      U.openEmbedding.isOpenMap.functor.map (eqToHom U.inclusion_map_eq_top) :=
    Subsingleton.elim _ _
  -- Porting note : `e₄` needs two more explicit inputs
  have e₄ := (asIso (ΓSpec.adjunction.unit.app
    (X.restrict U.openEmbedding))).inv.1.c.naturality_assoc
  dsimp at e₄
  replace e₄ := @e₄ (op ⊤) (op <| (Opens.map U.inclusion).obj U)
    (eqToHom U.inclusion_map_eq_top).op
  erw [e₃, e₄, ← Scheme.comp_val_c_app_assoc, IsIso.inv_hom_id]
  simp only [eqToHom_map, eqToHom_op, Scheme.Spec_map_presheaf_map_eqToHom, eqToHom_unop, unop_op]
  erw [Scheme.Spec_map_presheaf_map_eqToHom, Category.id_comp]
  simp only [eqToHom_trans]
#align algebraic_geometry.is_affine_open.Spec_Γ_identity_hom_app_from_Spec AlgebraicGeometry.IsAffineOpen.SpecΓIdentity_hom_app_fromSpec

@[elementwise]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7419be8a90ea807aa3d0f0926d47c4493835a7a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
