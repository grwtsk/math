# commShiftPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a9bb63b7022251bee09839739b27946888dde6bd97354c444dd59b011b7d902",
  "kind": "instance",
  "lexical_name": "commShiftPullback",
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
  "slug": "commshiftpullback--7f139e0322f39abc057994a8",
  "source": {
    "blob": "677561904d108a2da2ed944f2ddaed335d0a9d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 163,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f139e0322f39abc057994a82db8cd7c9df188d96d139a2942b575c8a52fecc1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a9bb63b7022251bee09839739b27946888dde6bd97354c444dd59b011b7d902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance commShiftPullback : (PullbackShift.functor φ F).CommShift A where
  iso a := isoWhiskerRight (pullbackShiftIso C φ a (φ a) rfl) F ≪≫
    F.commShiftIso (φ a) ≪≫ isoWhiskerLeft _  (pullbackShiftIso D φ a (φ a) rfl).symm
  zero := by
    ext
    dsimp
    simp only [F.commShiftIso_zero' (A := B) (φ 0) (by rw [map_zero]), CommShift.isoZero'_hom_app,
      assoc, CommShift.isoZero_hom_app, pullbackShiftFunctorZero'_hom_app, map_comp,
      pullbackShiftFunctorZero'_inv_app]
    rfl
  add _ _ := by
    ext
    simp only [PullbackShift.functor, comp_obj, Iso.trans_hom, isoWhiskerRight_hom,
      isoWhiskerLeft_hom, Iso.symm_hom, NatTrans.comp_app, whiskerRight_app, whiskerLeft_app,
      CommShift.isoAdd_hom_app, map_comp, assoc]
    rw [F.commShiftIso_add' (φ.map_add _ _).symm,
      ← shiftFunctorAdd'_eq_shiftFunctorAdd, ← shiftFunctorAdd'_eq_shiftFunctorAdd,
      pullbackShiftFunctorAdd'_hom_app φ _ _ _ _ rfl _ _ _ rfl rfl rfl,
      pullbackShiftFunctorAdd'_inv_app φ _ _ _ _ rfl _ _ _ rfl rfl rfl]
    simp only [CommShift.isoAdd'_hom_app, assoc, map_comp, NatTrans.naturality_assoc,
      Iso.inv_hom_id_app_assoc]
    slice_rhs 9 10 => rw [← map_comp, Iso.inv_hom_id_app, map_id]
    simp only [comp_obj, id_comp]
    rw [← Functor.comp_map F (shiftFunctor D _), ← (F.commShiftIso _).hom.naturality_assoc]
    slice_rhs 4 5 => rw [← map_comp, (pullbackShiftIso C φ _ _ rfl).hom.naturality, map_comp]
    slice_rhs 3 4 => rw [← map_comp, Iso.inv_hom_id_app, map_id]
    simp only [comp_obj, id_comp, comp_map, assoc]
    slice_rhs 3 4 => rw [← map_comp, ← map_comp, Iso.inv_hom_id_app, map_id, map_id]
    rw [id_comp, assoc, assoc]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant8ac2ed8b9afd9079653799c452a36ad5308dd6829651cf014ec6242603d640d2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `677561904d108a2da2ed944f2ddaed335d0a9d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
