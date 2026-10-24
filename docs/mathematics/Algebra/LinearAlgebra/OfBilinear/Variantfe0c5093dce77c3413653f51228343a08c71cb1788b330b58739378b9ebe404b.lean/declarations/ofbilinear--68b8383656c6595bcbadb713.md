# ofBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7114ef391098b6162a4ebe07bb4991cd4cca307782289b802718139b967e9c75",
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
  "slug": "ofbilinear--68b8383656c6595bcbadb713",
  "source": {
    "blob": "b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68b8383656c6595bcbadb71356089dee8802df132c64d9c0e0e54ac6651b08cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7114ef391098b6162a4ebe07bb4991cd4cca307782289b802718139b967e9c75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofBilinear [IsReflexive R M] (B : M →ₗ[R] M →ₗ[R] R) (hNB : LinearMap.Nondegenerate B)
    (hSB : LinearMap.IsSymm B) (h2 : IsRegular (2 : R)) :
    RootPairing {x : M | IsReflective B x} R M (Dual R M) where
  toPerfectPairing := (IsReflexive.toPerfectPairingDual (R := R) (M := M)).flip
  root := Embedding.subtype fun x ↦ IsReflective B x
  coroot :=
    { toFun := fun x => IsReflective.coroot B x.2
      inj' := by
        intro x y hxy
        simp only [mem_setOf_eq] at hxy -- x* = y*
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
          rw [mul_comm, ← h2x, ← hSB, RingHom.id_apply, ← h2y, mul_comm]
        rw [Subtype.ext_iff_val, ← sub_eq_zero]
        refine hNB.1 _ (fun z => ?_)
        rw [map_sub, LinearMap.sub_apply, sub_eq_zero]
        refine h2.1 ?_
        dsimp only
        rw [h2x z, ← h2y z, hxy, h2xy] }
  root_coroot_two x := by
    dsimp only [coe_setOf, Embedding.coe_subtype, PerfectPairing.toLinearMap_apply, mem_setOf_eq,
      id_eq, eq_mp_eq_cast, RingHom.id_apply, eq_mpr_eq_cast, cast_eq, LinearMap.sub_apply,
      Embedding.coeFn_mk, PerfectPairing.flip_apply_apply]
    exact coroot_apply_self B x.2
  reflection_perm x :=
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
  reflection_perm_root x y := by
    simp [Module.reflection_apply]
  reflection_perm_coroot x y := by
    simp only [coe_setOf, mem_setOf_eq, Embedding.coeFn_mk, Embedding.coe_subtype,
      PerfectPairing.flip_apply_apply, IsReflexive.toPerfectPairingDual_apply, Equiv.coe_fn_mk]
    ext z
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul]
    refine y.2.1.1 ?_
    simp only [mem_setOf_eq, PerfectPairing.flip_apply_apply, mul_sub,
      apply_self_mul_coroot_apply B y.2, ← mul_assoc]
    rw [← isOrthogonal_reflection B x.2 hSB y y, apply_self_mul_coroot_apply, ← hSB z, ← hSB z,
      RingHom.id_apply, RingHom.id_apply, Module.reflection_apply, map_sub,
      mul_sub, sub_eq_sub_iff_comm, sub_left_inj]
    refine x.2.1.1 ?_
    simp only [mem_setOf_eq, map_smul, smul_eq_mul]
    rw [← mul_assoc _ _ (B z x), ← mul_assoc _ _ (B z x), mul_left_comm,
      apply_self_mul_coroot_apply B x.2, mul_left_comm (B x x), apply_self_mul_coroot_apply B x.2,
      ← hSB x y, RingHom.id_apply, ← hSB x z, RingHom.id_apply]
    ring

end RootPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantfe0c5093dce77c3413653f51228343a08c71cb1788b330b58739378b9ebe404b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c2f10c88cfa8f9e7e55cd5f6df2b7249394907` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
