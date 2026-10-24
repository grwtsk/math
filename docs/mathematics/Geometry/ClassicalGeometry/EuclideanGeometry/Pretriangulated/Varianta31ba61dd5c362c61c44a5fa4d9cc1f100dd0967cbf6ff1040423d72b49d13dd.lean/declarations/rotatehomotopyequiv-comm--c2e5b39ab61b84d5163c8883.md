# rotateHomotopyEquiv_comm₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f717c56b307f453a9753554abd9725284f07413a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20885f5f-c0bb-5f89-cfb0-d3bfbce5e6d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:535eccbc-d357-7045-1ed3-1d956bdb83c7",
  "kind": "lemma",
  "lexical_name": "rotateHomotopyEquiv_comm₃",
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
  "slug": "rotatehomotopyequiv-comm--c2e5b39ab61b84d5163c8883",
  "source": {
    "blob": "f717c56b307f453a9753554abd9725284f07413a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 289,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e5b39ab61b84d5163c8883d9e401d77a07bff7d1dadfc70d0b17b09852a5f5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:535eccbc-d357-7045-1ed3-1d956bdb83c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rotateHomotopyEquiv_comm₃ :
    (rotateHomotopyEquiv φ).hom ≫ (triangle (inr φ)).mor₃ = -φ⟦1⟧' := by
  ext p
  dsimp [rotateHomotopyEquiv]
  -- the following list of lemmas has been obtained by doing
  -- simp? [lift_f _ _ _ _ _ (p + 1) rfl,
  --   (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) p (p + 1) rfl (p + 1) (by omega)]
  simp only [Int.reduceNeg, lift_f _ _ _ _ _ (p + 1) rfl, shiftFunctor_obj_X', Cocycle.coe_neg,
    Cocycle.leftShift_coe, Cocycle.ofHom_coe, Cochain.neg_v,
    (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) p (p + 1) rfl (p + 1) (by omega),
    shiftFunctor_obj_X, mul_one, sub_self, mul_zero, Int.zero_ediv, add_zero, Int.negOnePow_one,
    shiftFunctorObjXIso, HomologicalComplex.XIsoOfEq_rfl, Iso.refl_hom, Cochain.ofHom_v, id_comp,
    Units.neg_smul, one_smul, neg_neg, Preadditive.neg_comp, Preadditive.add_comp, assoc,
    inl_v_triangle_mor₃_f, Iso.refl_inv, Preadditive.comp_neg, comp_id, inr_f_triangle_mor₃_f,
    comp_zero, neg_zero]

/-- The canonical isomorphism of triangles `(triangleh φ).rotate ≅ (triangleh (inr φ))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Varianta31ba61dd5c362c61c44a5fa4d9cc1f100dd0967cbf6ff1040423d72b49d13dd.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f717c56b307f453a9753554abd9725284f07413a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
