# shiftTriangleIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb232a0580c8bdf75708208e7f22b946d25b9d12c9e21b4063d0f259c77dad8f",
  "kind": "def",
  "lexical_name": "shiftTriangleIso",
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
  "slug": "shifttriangleiso--b274e2cc55c54812384cb275",
  "source": {
    "blob": "bc050365104f805a2e7317d5de19bef4ac791cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 362,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b274e2cc55c54812384cb27566fe2a777a3a48832cdcf21635ba9978b9c1512b",
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

Occurrence: `declaration:cb232a0580c8bdf75708208e7f22b946d25b9d12c9e21b4063d0f259c77dad8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def shiftTriangleIso (n : ℤ) :
    (Triangle.shiftFunctor _ n).obj (triangle φ) ≅ triangle (φ⟦n⟧') := by
  refine Triangle.isoMk _ _ (Iso.refl _) (n.negOnePow • Iso.refl _) (shiftIso φ n) ?_ ?_ ?_
  · dsimp
    simp only [Linear.comp_units_smul, comp_id, id_comp, smul_smul,
      Int.units_mul_self, one_smul]
  · ext p
    dsimp
    simp only [Units.smul_def, shiftIso, Int.reduceNeg, Linear.smul_comp, id_comp,
      ext_to_iff _ _ (p + 1) rfl, shiftFunctor_obj_X', assoc, lift_f_fst_v, Cocycle.coe_smul,
      Cocycle.shift_coe, Cochain.smul_v, Cochain.shift_v', Linear.comp_smul, inr_f_fst_v,
      smul_zero, lift_f_snd_v, inr_f_snd_v, and_true]
  · ext p
    dsimp
    simp only [triangle, Triangle.mk_mor₃, Cocycle.homOf_f, Cocycle.rightShift_coe,
      Cocycle.coe_neg, Cochain.rightShift_neg, Cochain.neg_v, shiftFunctor_obj_X',
      (fst φ).1.rightShift_v 1 0 (zero_add 1) (p + n) (p + n) (add_zero (p + n)) (p + 1 + n)
        (by omega),
      shiftFunctor_obj_X, shiftFunctorObjXIso, shiftFunctorComm_hom_app_f, Preadditive.neg_comp,
      assoc, Iso.inv_hom_id, comp_id, smul_neg, Units.smul_def, shiftIso, Int.reduceNeg,
      (fst (φ⟦n⟧')).1.rightShift_v 1 0 (zero_add 1) p p (add_zero p) (p + 1) rfl,
      HomologicalComplex.XIsoOfEq_rfl, Iso.refl_inv, Preadditive.comp_neg, lift_f_fst_v,
      Cocycle.coe_smul, Cocycle.shift_coe, Cochain.smul_v, Cochain.shift_v']

/-- The canonical isomorphism `(triangleh φ)⟦n⟧ ≅ triangleh (φ⟦n⟧')`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc050365104f805a2e7317d5de19bef4ac791cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
