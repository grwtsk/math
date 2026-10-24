# rotateHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6de2ec150a1a2f7cc83366c6c2560f7f5201079df6cac4e73aedb29533699b9f",
  "kind": "def",
  "lexical_name": "rotateHomotopyEquiv",
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
  "slug": "rotatehomotopyequiv--041defaa748147a3760e57a4",
  "source": {
    "blob": "bc050365104f805a2e7317d5de19bef4ac791cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 199,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:041defaa748147a3760e57a403772f06a744d02d9e9c7bc8871f0f6edf725613",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6de2ec150a1a2f7cc83366c6c2560f7f5201079df6cac4e73aedb29533699b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rotateHomotopyEquiv :
    HomotopyEquiv (K⟦(1 : ℤ)⟧) (mappingCone (inr φ)) where
  hom := lift (inr φ) (-(Cocycle.ofHom φ).leftShift 1 1 (zero_add 1))
    (-(inl φ).leftShift 1 0 (neg_add_cancel 1)) (by
      -- the following list of lemmas has been obtained by doing
      -- simp? [Cochain.δ_leftShift _ 1 0 1 (neg_add_cancel 1) 0 (zero_add 1)]
      simp only [Int.reduceNeg, δ_neg,
        Cochain.δ_leftShift _ 1 0 1 (neg_add_cancel 1) 0 (zero_add 1),
        Int.negOnePow_one, δ_inl, Cochain.ofHom_comp, Cochain.leftShift_comp_zero_cochain,
        Units.neg_smul, one_smul, neg_neg, Cocycle.coe_neg, Cocycle.leftShift_coe,
        Cocycle.ofHom_coe, Cochain.neg_comp, add_neg_cancel])
  inv := desc (inr φ) 0 (triangle φ).mor₃
    (by simp only [δ_zero, inr_triangleδ, Cochain.ofHom_zero])
  homotopyHomInvId := Homotopy.ofEq (by
    ext n
    -- the following list of lemmas has been obtained by doing
    -- simp? [lift_desc_f _ _ _ _ _ _ _ _ _ rfl,
    --   (inl φ).leftShift_v 1 0 _ _ n _ (n + 1) (by simp only [add_neg_cancel_right])]
    simp only [shiftFunctor_obj_X', Int.reduceNeg, HomologicalComplex.comp_f,
      lift_desc_f _ _ _ _ _ _ _ _ _ rfl, Cocycle.coe_neg, Cocycle.leftShift_coe,
      Cocycle.ofHom_coe, Cochain.neg_v, Cochain.zero_v,
      comp_zero, (inl φ).leftShift_v 1 0 _ _ n _ (n + 1) (by simp only [add_neg_cancel_right]),
      shiftFunctor_obj_X, mul_zero, sub_self, Int.zero_ediv, add_zero, Int.negOnePow_zero,
      shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl, Iso.refl_hom, id_comp, one_smul,
      Preadditive.neg_comp, inl_v_triangle_mor₃_f, Iso.refl_inv, neg_neg, zero_add,
      HomologicalComplex.id_f])
  homotopyInvHomId := (Cochain.equivHomotopy _ _).symm
    ⟨-(snd (inr φ)).comp ((snd φ).comp (inl (inr φ)) (zero_add (-1))) (zero_add (-1)), by
      ext n
      -- the following list of lemmas has been obtained by doing
      -- simp? [ext_to_iff _ _ (n + 1) rfl, ext_from_iff _ (n + 1) _ rfl,
      --   δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
      --   (inl φ).leftShift_v 1 0 (neg_add_cancel 1) n n (add_zero n) (n + 1) (by omega),
      --   (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) n (n + 1) rfl (n + 1) (by omega),
      --   Cochain.comp_v _ _ (add_neg_cancel 1) n (n + 1) n rfl (by omega)]
      simp only [Int.reduceNeg, Cochain.ofHom_comp, ofHom_desc, ofHom_lift, Cocycle.coe_neg,
        Cocycle.leftShift_coe, Cocycle.ofHom_coe, Cochain.comp_zero_cochain_v,
        shiftFunctor_obj_X', δ_neg, δ_zero_cochain_comp _ _ _ (neg_add_cancel 1), δ_inl,
        Int.negOnePow_neg, Int.negOnePow_one, δ_snd, Cochain.neg_comp,
        Cochain.comp_assoc_of_second_is_zero_cochain, smul_neg, Units.neg_smul, one_smul,
        neg_neg, Cochain.comp_add, inr_snd_assoc, neg_add_rev, Cochain.add_v, Cochain.neg_v,
        Cochain.comp_v _ _ (add_neg_cancel 1) n (n + 1) n rfl (by omega),
        Cochain.zero_cochain_comp_v, Cochain.ofHom_v, HomologicalComplex.id_f,
        ext_to_iff _ _ (n + 1) rfl, assoc, liftCochain_v_fst_v,
        (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) n (n + 1) rfl (n + 1) (by omega),
        shiftFunctor_obj_X, mul_one, sub_self, mul_zero, Int.zero_ediv, add_zero,
        shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl, Iso.refl_hom, id_comp,
        Preadditive.add_comp, Preadditive.neg_comp, inl_v_fst_v, comp_id, inr_f_fst_v, comp_zero,
        neg_zero, neg_add_cancel_comm, ext_from_iff _ (n + 1) _ rfl, inl_v_descCochain_v_assoc,
        Cochain.zero_v, zero_comp, Preadditive.comp_neg, inl_v_snd_v_assoc,
        inr_f_descCochain_v_assoc, inr_f_snd_v_assoc, inl_v_triangle_mor₃_f_assoc, triangle_obj₁,
        Iso.refl_inv, inl_v_fst_v_assoc, inr_f_triangle_mor₃_f_assoc, inr_f_fst_v_assoc, and_self,
        liftCochain_v_snd_v,
        (inl φ).leftShift_v 1 0 (neg_add_cancel 1) n n (add_zero n) (n + 1) (by omega),
        Int.negOnePow_zero, inl_v_snd_v, inr_f_snd_v, zero_add, inl_v_descCochain_v,
        inr_f_descCochain_v, inl_v_triangle_mor₃_f, inr_f_triangle_mor₃_f, neg_add_cancel]⟩

/-- Auxiliary definition for `rotateTrianglehIso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc050365104f805a2e7317d5de19bef4ac791cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
