# sourceAffineLocally_of_source_open_cover_aux

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
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1305d1ce-99ef-0cdb-8834-9242c392a90f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dcb6049-07c2-319a-8a34-b4abf44dfc56",
  "kind": "theorem",
  "lexical_name": "sourceAffineLocally_of_source_open_cover_aux",
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
  "slug": "sourceaffinelocally-of-source-open-cover-aux--4be73f6cba92a1985cda1521",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 287,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4be73f6cba92a1985cda1521044bb1eab19f249c0338cb95abd40d5dd2b1e93d",
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

Occurrence: `result:2dcb6049-07c2-319a-8a34-b4abf44dfc56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceAffineLocally_of_source_open_cover_aux (h₁ : RingHom.RespectsIso @P)
    (h₃ : RingHom.OfLocalizationSpanTarget @P) {X Y : Scheme} (f : X ⟶ Y) (U : X.affineOpens)
    (s : Set (X.presheaf.obj (op U.1))) (hs : Ideal.span s = ⊤)
    (hs' : ∀ r : s, P (Scheme.Γ.map (X.ofRestrict (X.basicOpen r.1).openEmbedding ≫ f).op)) :
    P (Scheme.Γ.map (X.ofRestrict U.1.openEmbedding ≫ f).op) := by
  apply_fun Ideal.map (X.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op) at hs
  rw [Ideal.map_span, Ideal.map_top] at hs
  apply h₃ _ _ hs
  rintro ⟨s, r, hr, hs⟩
  have := (@Localization.algEquiv _ _ _ _ _ _
    (@AlgebraicGeometry.Γ_restrict_isLocalization _ U.2 s)).toRingEquiv.toCommRingCatIso
  refine (h₁.cancel_right_isIso _ (@Localization.algEquiv _ _ _ _ _ _
    (@AlgebraicGeometry.Γ_restrict_isLocalization _ U.2 s)).toRingEquiv.toCommRingCatIso.hom).mp ?_
  subst hs
  rw [CommRingCat.comp_eq_ring_hom_comp, ← RingHom.comp_assoc]
  -- Porting note: here is where it gets bad; previously `erw [IsLocalization.map_comp]`
  -- ask Lean to synthesize instances and it runs away
  -- we also have to pass in one `Localization` instance now (and not before)
  erw [@IsLocalization.map_comp _ _ _ _ _ (_)
    (Scheme.Γ.obj (Opposite.op (X.restrict U.1.openEmbedding))) _ (_) _
    (Submonoid.powers (X.presheaf.map (eqToHom U.1.openEmbedding_obj_top).op r))
    ((Scheme.Γ.obj (Opposite.op ((X.restrict U.1.openEmbedding).restrict
    ((X.restrict U.1.openEmbedding).basicOpen (X.presheaf.map
      (eqToHom U.1.openEmbedding_obj_top).op r)).openEmbedding)))) _ (le_of_eq rfl) (_)
    (@AlgebraicGeometry.Γ_restrict_isLocalization _ U.2 _)]
  erw [RingHom.comp_id]
  rw [RingHom.algebraMap_toAlgebra, op_comp, Functor.map_comp, ←CommRingCat.comp_eq_ring_hom_comp,
    Scheme.Γ_map_op, Scheme.Γ_map_op, Scheme.Γ_map_op, Category.assoc]
  erw [← X.presheaf.map_comp]
  rw [← h₁.cancel_right_isIso _ (X.presheaf.map (eqToHom _))]
  convert hs' ⟨r, hr⟩ using 1
  · erw [Category.assoc]
    rw [← X.presheaf.map_comp, op_comp, Scheme.Γ.map_comp, Scheme.Γ_map_op, Scheme.Γ_map_op]
    congr!
    all_goals
    · dsimp [Functor.op]
      conv_lhs => rw [Opens.openEmbedding_obj_top]
      conv_rhs => rw [Opens.openEmbedding_obj_top]
      erw [Scheme.image_basicOpen (X.ofRestrict U.1.openEmbedding)]
      erw [PresheafedSpace.IsOpenImmersion.ofRestrict_invApp_apply]
      rw [Scheme.basicOpen_res_eq]
#align algebraic_geometry.source_affine_locally_of_source_open_cover_aux AlgebraicGeometry.sourceAffineLocally_of_source_open_cover_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
