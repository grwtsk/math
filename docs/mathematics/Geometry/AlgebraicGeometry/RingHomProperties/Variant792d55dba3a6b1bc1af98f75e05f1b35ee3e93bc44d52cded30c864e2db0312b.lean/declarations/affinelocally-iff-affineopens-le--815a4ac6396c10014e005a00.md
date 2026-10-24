# affineLocally_iff_affineOpens_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d1e739d-d83e-0718-e2f5-0cd503137c86",
  "kind": "theorem",
  "lexical_name": "affineLocally_iff_affineOpens_le",
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
  "slug": "affinelocally-iff-affineopens-le--815a4ac6396c10014e005a00",
  "source": {
    "blob": "653ea3160ced1b0792ac93326eb237d91538f8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 211,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:815a4ac6396c10014e005a0086cc98d50f40f15b5edc4f781ec22327a70274c8",
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

Occurrence: `result:2d1e739d-d83e-0718-e2f5-0cd503137c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineLocally_iff_affineOpens_le (hP : RingHom.RespectsIso @P) {X Y : Scheme} (f : X ⟶ Y) :
    affineLocally (@P) f ↔
    ∀ (U : Y.affineOpens) (V : X.affineOpens) (e : V.1 ≤ (Opens.map f.1.base).obj U.1),
      P (Scheme.Hom.appLe f e) := by
  apply forall_congr'
  intro U
  delta sourceAffineLocally
  simp_rw [op_comp, Scheme.Γ.map_comp, Γ_map_morphismRestrict, Category.assoc, Scheme.Γ_map_op,
    hP.cancel_left_isIso]
  constructor
  · intro H V e
    let U' := (Opens.map f.val.base).obj U.1
    have e' : U'.openEmbedding.isOpenMap.functor.obj ((Opens.map U'.inclusion).obj V.1) = V.1 := by
      ext1; refine' Set.image_preimage_eq_inter_range.trans (Set.inter_eq_left_iff_subset.mpr _)
      erw [Subtype.range_val]
      convert e
    have := H ⟨(Opens.map (X.ofRestrict U'.openEmbedding).1.base).obj V.1, ?_⟩
    erw [← X.presheaf.map_comp] at this
    rw [← hP.cancel_right_isIso _ (X.presheaf.map (eqToHom _)), Category.assoc, ←
      X.presheaf.map_comp]
    convert this using 1
    · -- Porting note: makes instance metavariable like in Lean 3
      apply
        (@isAffineOpen_iff_of_isOpenImmersion _ _ (@Scheme.ofRestrict _ X U'.inclusion _) ?_ _).mp
      -- Porting note: was convert V.2
      erw [e']
      apply V.2
      infer_instance
    · dsimp only [Functor.op, unop_op]; rw [Opens.openEmbedding_obj_top]
      congr 1; apply e'.symm
  · intro H V
    specialize H ⟨_, V.2.imageIsOpenImmersion (X.ofRestrict _)⟩ (Subtype.coe_image_subset _ _)
    erw [← X.presheaf.map_comp]
    rw [← hP.cancel_right_isIso _ (X.presheaf.map (eqToHom _)), Category.assoc, ←
      X.presheaf.map_comp]
    convert H
    · dsimp only [Functor.op, unop_op]; rw [Opens.openEmbedding_obj_top]
#align algebraic_geometry.affine_locally_iff_affine_opens_le AlgebraicGeometry.affineLocally_iff_affineOpens_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant792d55dba3a6b1bc1af98f75e05f1b35ee3e93bc44d52cded30c864e2db0312b.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ea3160ced1b0792ac93326eb237d91538f8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
