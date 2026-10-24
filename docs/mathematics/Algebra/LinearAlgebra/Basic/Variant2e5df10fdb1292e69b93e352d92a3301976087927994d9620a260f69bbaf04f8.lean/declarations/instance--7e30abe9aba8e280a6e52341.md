# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95ce0a045affc6dc64200bccbcb464e1670acd0c17ee7dac69207a0d0d6a4c6e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7e30abe9aba8e280a6e52341",
  "source": {
    "blob": "9fce9765fe9863e5b5e774c90f8aa9f2d9309110",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e30abe9aba8e280a6e52341b24f1161a200fc81591dad927469a26d426bb6e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95ce0a045affc6dc64200bccbcb464e1670acd0c17ee7dac69207a0d0d6a4c6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AddCommGroup (M →ₚₗ[R] N) where
  zsmul n f := (n : R) • f
  zsmul_zero' f   := by simp only [Int.cast_zero, zero_smul]
  zsmul_succ' n f := by simp only [Int.ofNat_eq_coe, Nat.cast_succ, Int.cast_add, Int.cast_natCast,
    Int.cast_one, add_smul, _root_.one_smul]
  zsmul_neg' n f  := by
    ext S _ _ m
    rw [neg_def]
    simp only [Int.cast_negSucc, Nat.cast_add, Nat.cast_one, neg_add_rev, _root_.add_smul,
      add_def_apply, smul_def_apply, Nat.succ_eq_add_one, Int.cast_add, Int.cast_natCast,
      Int.cast_one, _root_.one_smul, add_def, smul_def, Pi.smul_apply, Pi.add_apply, smul_add,
      smul_smul, neg_mul, one_mul]
    rw [add_comm]
  neg_add_cancel f  := by
    ext S _ _ m
    simp only [add_def_apply, neg_def, Pi.smul_apply, zero_def, Pi.zero_apply]
    nth_rewrite 2 [← _root_.one_smul (M := R) (b := f.toFun' S m)]
    rw [← _root_.add_smul]
    simp only [neg_add_cancel, _root_.zero_smul]
  add_comm f g    := by ext; simp only [add_def, add_comm]

end CommRing

end Module

section ground

variable {R : Type u} [CommSemiring R] {M : Type*} [AddCommMonoid M] [Module R M]
  {N : Type*} [AddCommMonoid N] [Module R N]
variable (f : M →ₚₗ[R] N)

/-- The map `M → N` associated with a `f : M →ₚₗ[R] N` (essentially, `f.toFun' R`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fce9765fe9863e5b5e774c90f8aa9f2d9309110` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
