# localRingHom_comp_stalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:504e8ef5-7d1d-3b76-e479-15f209a3e629",
  "kind": "theorem",
  "lexical_name": "localRingHom_comp_stalkIso",
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
  "slug": "localringhom-comp-stalkiso--c29ef39709b8e2ac235f50a4",
  "source": {
    "blob": "f5f37f58f3c6526946161b8be95e4e339a2fa164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 131,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c29ef39709b8e2ac235f50a430aa4f2a5d09edc95390fa1a57d3247abd7cbc05",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:504e8ef5-7d1d-3b76-e479-15f209a3e629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elementwise] theorem localRingHom_comp_stalkIso (p : ProjectiveSpectrum ℬ) :
    (stalkIso 𝒜 (ProjectiveSpectrum.comap f hf p)).hom ≫
      CommRingCat.ofHom (localRingHom f _ _ rfl) ≫
        (stalkIso ℬ p).inv =
      (sheafedSpaceMap f hf).hom.stalkMap p := by
  rw [← Iso.eq_inv_comp, Iso.comp_inv_eq]
  ext : 1
  simp only [CommRingCat.hom_ofHom, stalkIso, RingEquiv.toCommRingCatIso_inv,
    RingEquiv.toCommRingCatIso_hom, CommRingCat.hom_comp]
  ext x : 2
  obtain ⟨c, rfl⟩ := x.mk_surjective
  simp only [val_localRingHom, val_mk, RingHom.comp_apply]
  simp only [GradedRingHom.toRingHom_eq_toRingHom, Localization.localRingHom_mk,
    GradedRingHom.coe_toRingHom]
  -- I sincerely apologise for your eyes.
  erw [stalkIso'_symm_mk]
  erw [PresheafedSpace.stalkMap_germ_apply]
  erw [germ_map_sectionInBasicOpen]
  erw [stalkIso'_germ]
  simp

set_option backward.isDefEq.respectTransparency false in
/-- Functoriality of `Proj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Functor/Variantf47d0983ae53097c8356f4ee457a40f46eaef24ee1c241011ae751ae375a651a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5f37f58f3c6526946161b8be95e4e339a2fa164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
