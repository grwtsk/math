# GradedAlgebra.lift_ι_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3558f2b162920cd80d79725aa6d3a8fb5d72bacf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a0a27ff-8d52-3f16-44b6-0bbbe8e1d428",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d8ba25e-f0d8-2c51-91d2-ca4e6118575e",
  "kind": "theorem",
  "lexical_name": "GradedAlgebra.lift_ι_eq",
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
  "slug": "gradedalgebra-lift-eq--818bb4aada25412ba2b3711d",
  "source": {
    "blob": "3558f2b162920cd80d79725aa6d3a8fb5d72bacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:818bb4aada25412ba2b3711da024202b0e9ab1396b15ee7d235745ecebdeb4a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8ba25e-f0d8-2c51-91d2-ca4e6118575e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GradedAlgebra.lift_ι_eq (i' : ZMod 2) (x' : evenOdd Q i') :
    -- porting note: added a second `by apply`
    lift Q ⟨by apply GradedAlgebra.ι Q, by apply GradedAlgebra.ι_sq_scalar Q⟩ x' =
      DirectSum.of (fun i => evenOdd Q i) i' x' := by
  cases' x' with x' hx'
  dsimp only [Subtype.coe_mk, DirectSum.lof_eq_of]
  induction hx' using Submodule.iSup_induction' with
  | hp i x hx =>
    obtain ⟨i, rfl⟩ := i
    -- porting note: `dsimp only [Subtype.coe_mk] at hx` doesn't work, use `change` instead
    change x ∈ LinearMap.range (ι Q) ^ i at hx
    induction hx using Submodule.pow_induction_on_left' with
    | hr r =>
      rw [AlgHom.commutes, DirectSum.algebraMap_apply]; rfl
    | hadd x y i hx hy ihx ihy =>
      rw [AlgHom.map_add, ihx, ihy, ← map_add]
      rfl
    | hmul m hm i x hx ih =>
      obtain ⟨_, rfl⟩ := hm
      rw [AlgHom.map_mul, ih, lift_ι_apply, GradedAlgebra.ι_apply Q, DirectSum.of_mul_of]
      refine' DirectSum.of_eq_of_gradedMonoid_eq (Sigma.subtype_ext _ _) <;>
        dsimp only [GradedMonoid.mk, Subtype.coe_mk]
      · rw [Nat.succ_eq_add_one, add_comm, Nat.cast_add, Nat.cast_one]
      rfl
  | h0 =>
    rw [AlgHom.map_zero]
    apply Eq.symm
    apply DFinsupp.single_eq_zero.mpr; rfl
  | hadd x y hx hy ihx ihy =>
    rw [AlgHom.map_add, ihx, ihy, ← map_add]; rfl
#align clifford_algebra.graded_algebra.lift_ι_eq CliffordAlgebra.GradedAlgebra.lift_ι_eq

set_option maxHeartbeats 300000 in
/-- The clifford algebra is graded by the even and odd parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3558f2b162920cd80d79725aa6d3a8fb5d72bacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
