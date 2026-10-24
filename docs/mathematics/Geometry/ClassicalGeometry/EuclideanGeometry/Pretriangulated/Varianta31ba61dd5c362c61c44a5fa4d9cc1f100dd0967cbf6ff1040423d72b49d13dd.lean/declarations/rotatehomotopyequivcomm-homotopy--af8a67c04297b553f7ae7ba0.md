# rotateHomotopyEquivComm₂Homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:207d17b7bc039c290fcec80f8a937a1babcb49dd082ba106b548c753978c5b28",
  "kind": "def",
  "lexical_name": "rotateHomotopyEquivComm₂Homotopy",
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
  "slug": "rotatehomotopyequivcomm-homotopy--af8a67c04297b553f7ae7ba0",
  "source": {
    "blob": "f717c56b307f453a9753554abd9725284f07413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 249,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af8a67c04297b553f7ae7ba01e950513d977ee542efab1e490815d4f339ce36b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:207d17b7bc039c290fcec80f8a937a1babcb49dd082ba106b548c753978c5b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rotateHomotopyEquivComm₂Homotopy :
  Homotopy ((triangle φ).mor₃ ≫ (rotateHomotopyEquiv φ).hom)
    (inr (CochainComplex.mappingCone.inr φ)) := (Cochain.equivHomotopy _ _).symm
      ⟨-(snd φ).comp (inl (inr φ)) (zero_add (-1)), by
        ext p
        dsimp [rotateHomotopyEquiv]
        -- the following list of lemmas has been obtained by doing
        -- simp? [ext_from_iff _ _ _ rfl, ext_to_iff _ _ _ rfl,
        --  (inl φ).leftShift_v 1 0 (neg_add_cancel 1) p p (add_zero p) (p + 1) (by omega),
        --  δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
        --  Cochain.comp_v _ _ (add_neg_cancel 1) p (p + 1) p rfl (by omega),
        --  (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) p (p + 1) rfl (p + 1) (by omega)]⟩
        simp only [Int.reduceNeg, Cochain.ofHom_comp, ofHom_lift, Cocycle.coe_neg,
          Cocycle.leftShift_coe, Cocycle.ofHom_coe, Cochain.comp_zero_cochain_v,
          shiftFunctor_obj_X', Cochain.ofHom_v, δ_neg, δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
          δ_inl, Int.negOnePow_neg, Int.negOnePow_one, δ_snd, Cochain.neg_comp,
          Cochain.comp_assoc_of_second_is_zero_cochain, smul_neg, Units.neg_smul, one_smul, neg_neg,
          neg_add_rev, Cochain.add_v, Cochain.neg_v,
          Cochain.comp_v _ _ (add_neg_cancel 1) p (p + 1) p rfl (by omega),
          Cochain.zero_cochain_comp_v, ext_from_iff _ _ _ rfl, inl_v_triangle_mor₃_f_assoc,
          triangle_obj₁, shiftFunctor_obj_X, shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl,
          Iso.refl_inv, Preadditive.neg_comp, id_comp, Preadditive.comp_add, Preadditive.comp_neg,
          inl_v_fst_v_assoc, inl_v_snd_v_assoc, zero_comp, neg_zero, add_zero, ext_to_iff _ _ _ rfl,
          liftCochain_v_fst_v,
          (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) p (p + 1) rfl (p + 1) (by omega), mul_one,
          sub_self, mul_zero, Int.zero_ediv, Iso.refl_hom, Preadditive.add_comp, assoc, inl_v_fst_v,
          comp_id, inr_f_fst_v, comp_zero, liftCochain_v_snd_v,
          (inl φ).leftShift_v 1 0 (neg_add_cancel 1) p p (add_zero p) (p + 1) (by omega),
          Int.negOnePow_zero, inl_v_snd_v, inr_f_snd_v, zero_add, and_self,
          inr_f_triangle_mor₃_f_assoc, inr_f_fst_v_assoc, inr_f_snd_v_assoc, neg_add_cancel]⟩

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f717c56b307f453a9753554abd9725284f07413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
