# GradedAlgebra.liftι_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07432161-47ac-d6e9-5d56-df8b73ebdf2d",
  "kind": "theorem",
  "lexical_name": "GradedAlgebra.liftι_eq",
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
  "slug": "gradedalgebra-lift-eq--ead6874a95433aa83948a947",
  "source": {
    "blob": "3a52dd089658f4773940905192d31e8751bd6ba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead6874a95433aa83948a947f69b596c24467178b1e0dc7f86e7ced1b1895e09",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07432161-47ac-d6e9-5d56-df8b73ebdf2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GradedAlgebra.liftι_eq (i : ℕ)
    (x : (LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i :
      Submodule R (ExteriorAlgebra R M))) :
    GradedAlgebra.liftι R M x =
    DirectSum.of (fun i =>
      ↥(LinearMap.range (ι R : M →ₗ[R] ExteriorAlgebra R M) ^ i :
      Submodule R (ExteriorAlgebra R M))) i x := by
  cases' x with x hx
  dsimp only [Subtype.coe_mk, DirectSum.lof_eq_of]
  -- Porting note: original statement was
  --  refine Submodule.pow_induction_on_left' _ (fun r => ?_) (fun x y i hx hy ihx ihy => ?_)
  --    (fun m hm i x hx ih => ?_) hx
  -- but it created invalid goals
  induction hx using Submodule.pow_induction_on_left' with
  | hr => simp_rw [AlgHom.commutes, DirectSum.algebraMap_apply]; rfl
  | hadd _ _ _ _ _ ihx ihy => simp_rw [AlgHom.map_add, ihx, ihy, ← map_add]; rfl
  | hmul _ hm _ _ _ ih =>
      obtain ⟨_, rfl⟩ := hm
      simp_rw [AlgHom.map_mul, ih, GradedAlgebra.liftι, lift_ι_apply, GradedAlgebra.ι_apply R M,
        DirectSum.of_mul_of]
      exact DirectSum.of_eq_of_gradedMonoid_eq (Sigma.subtype_ext (add_comm _ _) rfl)
#align exterior_algebra.graded_algebra.lift_ι_eq ExteriorAlgebra.GradedAlgebra.liftι_eq

set_option maxHeartbeats 400000 in
/-- The exterior algebra is graded by the powers of the submodule `(ExteriorAlgebra.ι R).range`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a52dd089658f4773940905192d31e8751bd6ba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
