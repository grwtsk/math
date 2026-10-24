# SpecMapRestrictBasicOpenIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2ab6b37fadac154c3fa7c19430111c4dfc202daf149be3bfe5143b39b5a465d",
  "kind": "def",
  "lexical_name": "SpecMapRestrictBasicOpenIso",
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
  "slug": "specmaprestrictbasicopeniso--9e344784254f856ccf263765",
  "source": {
    "blob": "c7680e28662a38691282f29c9258387d17f22a59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 845,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e344784254f856ccf2637656ae3dac60c7640b50152c91f8a9a028d9524fdfb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2ab6b37fadac154c3fa7c19430111c4dfc202daf149be3bfe5143b39b5a465d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpecMapRestrictBasicOpenIso {R S : CommRingCat} (f : R ⟶ S) (r : R) :
    Arrow.mk (Spec.map f ∣_ (PrimeSpectrum.basicOpen r)) ≅
      Arrow.mk (Spec.map <| CommRingCat.ofHom (Localization.awayMap f.hom r)) := by
  letI e₁ : Localization.Away r ≃ₐ[R] Γ(Spec R, basicOpen r) :=
    IsLocalization.algEquiv (Submonoid.powers r) _ _
  letI e₂ : Localization.Away (f.hom r) ≃ₐ[S] Γ(Spec S, basicOpen (f.hom r)) :=
    IsLocalization.algEquiv (Submonoid.powers (f.hom r)) _ _
  refine Arrow.isoMk ?_ ?_ ?_
  · exact (Spec (.of S)).isoOfEq (comap_basicOpen _ _) ≪≫
      (IsAffineOpen.Spec_basicOpen (f.hom r)).isoSpec ≪≫ Scheme.Spec.mapIso e₂.toCommRingCatIso.op
  · exact (IsAffineOpen.Spec_basicOpen r).isoSpec ≪≫ Scheme.Spec.mapIso e₁.toCommRingCatIso.op
  · have := AlgebraicGeometry.IsOpenImmersion.of_isLocalization
      (S := (Localization.Away r)) r
    rw [← cancel_mono (Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away r))))]
    simp only [Arrow.mk_left, Arrow.mk_right, Functor.id_obj, Scheme.isoOfEq_rfl, Iso.refl_trans,
      Iso.trans_hom, Functor.mapIso_hom, Iso.op_hom, Scheme.Spec_map, Quiver.Hom.unop_op,
      Arrow.mk_hom, Category.assoc, ← Spec.map_comp]
    conv =>
      congr
      · enter [2, 1]; tactic =>
        show _ =
          (f ≫ (Scheme.ΓSpecIso S).inv ≫ (Spec S).presheaf.map (homOfLE le_top).op)
        ext
        simp only [Localization.awayMap, IsLocalization.Away.map, AlgEquiv.toRingEquiv_eq_coe,
          RingEquiv.toCommRingCatIso_hom, AlgEquiv.toRingEquiv_toRingHom, CommRingCat.hom_comp,
          CommRingCat.hom_ofHom, RingHom.comp_apply, IsLocalization.map_eq, RingHom.coe_coe,
          AlgEquiv.commutes, IsAffineOpen.algebraMap_Spec_obj]
      · enter [2, 2, 1]; tactic =>
        show _ = (Scheme.ΓSpecIso R).inv ≫ (Spec R).presheaf.map (homOfLE le_top).op
        ext
        simp only [AlgEquiv.toRingEquiv_eq_coe, RingEquiv.toCommRingCatIso_hom,
          AlgEquiv.toRingEquiv_toRingHom, CommRingCat.hom_comp, CommRingCat.hom_ofHom,
          RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, AlgEquiv.commutes,
          IsAffineOpen.algebraMap_Spec_obj, homOfLE_leOfHom]
    simp only [IsAffineOpen.isoSpec_hom, homOfLE_leOfHom, Spec.map_comp, Category.assoc,
      Scheme.Opens.toSpecΓ_SpecMap_map_assoc, Scheme.Opens.toSpecΓ_top, Scheme.homOfLE_ι_assoc,
      morphismRestrict_ι_assoc]
    simp only [← SpecMap_ΓSpecIso_hom, ← Spec.map_comp, Category.assoc, Iso.inv_hom_id,
      Category.comp_id, Category.id_comp]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantdeaea05c287f622890c978215792d5e38090dbc20cba26ee894f82fa5c901e0f.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7680e28662a38691282f29c9258387d17f22a59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
