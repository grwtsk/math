# ofBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a5060b438e8b77b876f50c0433a9a2fc3b02934520f382240e4b76bd15e20b8",
  "kind": "def",
  "lexical_name": "ofBilinear",
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
  "slug": "ofbilinear--e74a7073e6e85cc96ec6a3bc",
  "source": {
    "blob": "b2112d15e3d39e20b417b0b4fa5d018dbc6268ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e74a7073e6e85cc96ec6a3bc81ab0a175240773cdd90563cf335bfef53b0172b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a5060b438e8b77b876f50c0433a9a2fc3b02934520f382240e4b76bd15e20b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBilinear [IsReflexive R M] (B : M →ₗ[R] M →ₗ[R] R) (hNB : LinearMap.Nondegenerate B)
    (hSB : LinearMap.IsSymm B) (h2 : IsRegular (2 : R)) :
    RootPairing {x : M | IsReflective B x} R M (Dual R M) where
  toLinearMap := Dual.eval R M
  root := Embedding.subtype fun x ↦ IsReflective B x
  coroot :=
    { toFun := fun x => IsReflective.coroot B x.2
      inj' := by
        intro x y hxy
        simp only [mem_ofPred_eq] at hxy -- x* = y*
        have h1 : ∀ z, IsReflective.coroot B x.2 z = IsReflective.coroot B y.2 z :=
          fun z => congrFun (congrArg DFunLike.coe hxy) z
        have h2x : ∀ z, B x x * IsReflective.coroot B x.2 z =
            B x x * IsReflective.coroot B y.2 z :=
          fun z => congrArg (HMul.hMul ((B x) x)) (h1 z)
        have h2y : ∀ z, B y y * IsReflective.coroot B x.2 z =
            B y y * IsReflective.coroot B y.2 z :=
          fun z => congrArg (HMul.hMul ((B y) y)) (h1 z)
        simp_rw [apply_self_mul_coroot_apply B x.2] at h2x -- 2(x,z) = (x,x)y*(z)
        simp_rw [apply_self_mul_coroot_apply B y.2] at h2y -- (y,y)x*(z) = 2(y,z)
        have h2xy : B x x = B y y := by
          refine h2.1 ?_
          dsimp only
          specialize h2x y
          rw [coroot_apply_self] at h2x
          specialize h2y x
          rw [coroot_apply_self] at h2y
          rw [mul_comm, ← h2x, ← hSB.eq, RingHom.id_apply, ← h2y, mul_comm]
        rw [Subtype.ext_iff, ← sub_eq_zero]
        refine hNB.1 _ (fun z => ?_)
        rw [map_sub, LinearMap.sub_apply, sub_eq_zero]
        refine h2.1 ?_
        dsimp only
        rw [h2x z, ← h2y z, hxy, h2xy] }
  root_coroot_two x := coroot_apply_self B x.2
  reflectionPerm x :=
    { toFun := fun y => ⟨(Module.reflection (coroot_apply_self B x.2) y),
        reflective_reflection B hSB x.2 y.2⟩
      invFun := fun y => ⟨(Module.reflection (coroot_apply_self B x.2) y),
        reflective_reflection B hSB x.2 y.2⟩
      left_inv := by
        intro y
        simp [involutive_reflection (coroot_apply_self B x.2) y]
      right_inv := by
        intro y
        simp [involutive_reflection (coroot_apply_self B x.2) y] }
  reflectionPerm_root := by
    simp [coe_ofPred, Module.reflection_apply]
  reflectionPerm_coroot x y := by
    simp only [coe_ofPred, mem_ofPred_eq, Embedding.coeFn_mk, Embedding.subtype_apply,
      Dual.eval_apply, Equiv.coe_fn_mk]
    ext z
    simp only [sub_apply, smul_apply, smul_eq_mul]
    refine y.2.1.1 ?_
    simp only [mem_ofPred_eq, mul_sub, apply_self_mul_coroot_apply B y.2, ← mul_assoc]
    rw [← isOrthogonal_reflection B x.2 hSB y y, apply_self_mul_coroot_apply, ← hSB.eq z,
      ← hSB.eq z, RingHom.id_apply, RingHom.id_apply, Module.reflection_apply, map_sub,
      mul_sub, sub_eq_sub_iff_comm, sub_left_inj]
    refine x.2.1.1 ?_
    simp only [mem_ofPred_eq, map_smul, smul_eq_mul]
    rw [← mul_assoc _ _ (B z x), ← mul_assoc _ _ (B z x), mul_left_comm,
      apply_self_mul_coroot_apply B x.2, mul_left_comm (B x x), apply_self_mul_coroot_apply B x.2,
      ← hSB.eq x y, RingHom.id_apply, ← hSB.eq x z, RingHom.id_apply]
    ring

end RootPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant4aee639a5a4b1c795a59797a117b004428cd9dbe1e5372528fa31c5523e7ec70.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2112d15e3d39e20b417b0b4fa5d018dbc6268ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
