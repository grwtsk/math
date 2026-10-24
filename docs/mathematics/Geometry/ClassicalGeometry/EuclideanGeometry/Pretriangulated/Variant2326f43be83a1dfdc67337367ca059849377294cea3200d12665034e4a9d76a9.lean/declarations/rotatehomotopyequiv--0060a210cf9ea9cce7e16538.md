# rotateHomotopyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1efa5d75e50f07ced565d78b901ce584d33c9f8643019faaa13e8aa3b567b67a",
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
  "slug": "rotatehomotopyequiv--0060a210cf9ea9cce7e16538",
  "source": {
    "blob": "a06c9cca3b97c36cf8cefde35d3c03e20debe312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 216,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0060a210cf9ea9cce7e165385f4c963fcb88cfcef3529366a7d208f268242824",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1efa5d75e50f07ced565d78b901ce584d33c9f8643019faaa13e8aa3b567b67a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–244.

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
    simp [lift_desc_f _ _ _ _ _ _ _ _ _ rfl,
      (inl φ).leftShift_v 1 0 _ _ n _ (n + 1) (by simp only [add_neg_cancel_right])])
  homotopyInvHomId := (Cochain.equivHomotopy _ _).symm
    ⟨-(snd (inr φ)).comp ((snd φ).comp (inl (inr φ)) (zero_add (-1))) (zero_add (-1)), by
      ext n
      simp [ext_to_iff _ _ (n + 1) rfl, ext_from_iff _ (n + 1) _ rfl,
        δ_zero_cochain_comp _ _ _ (neg_add_cancel 1),
        (inl φ).leftShift_v 1 0 (neg_add_cancel 1) n n (add_zero n) (n + 1) (by lia),
        (Cochain.ofHom φ).leftShift_v 1 1 (zero_add 1) n (n + 1) rfl (n + 1) (by lia),
        Cochain.comp_v _ _ (add_neg_cancel 1) n (n + 1) n rfl (by lia)]⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Auxiliary definition for `rotateTrianglehIso`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variant2326f43be83a1dfdc67337367ca059849377294cea3200d12665034e4a9d76a9.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06c9cca3b97c36cf8cefde35d3c03e20debe312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
