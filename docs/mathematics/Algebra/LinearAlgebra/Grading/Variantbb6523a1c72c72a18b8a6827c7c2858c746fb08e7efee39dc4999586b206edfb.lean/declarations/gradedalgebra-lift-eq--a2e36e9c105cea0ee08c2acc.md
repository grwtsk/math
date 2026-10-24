# GradedAlgebra.liftι_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd828d25515e0bb866615e1c613ce24feff669cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ee95266-7ddf-80b8-5256-af3fd80b1b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88dfbafe-60f7-48ea-bba5-009937d6d6cb",
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
  "slug": "gradedalgebra-lift-eq--a2e36e9c105cea0ee08c2acc",
  "source": {
    "blob": "cd828d25515e0bb866615e1c613ce24feff669cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e36e9c105cea0ee08c2acc3f5eaefbeee5293c72609213797e8927d2bea5e3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88dfbafe-60f7-48ea-bba5-009937d6d6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantbb6523a1c72c72a18b8a6827c7c2858c746fb08e7efee39dc4999586b206edfb.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd828d25515e0bb866615e1c613ce24feff669cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
