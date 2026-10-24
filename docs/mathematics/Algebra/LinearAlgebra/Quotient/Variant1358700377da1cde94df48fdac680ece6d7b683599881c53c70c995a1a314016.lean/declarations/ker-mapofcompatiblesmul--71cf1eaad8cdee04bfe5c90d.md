# ker_mapOfCompatibleSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6175db5-9369-00c2-f0b6-4101c68a3b8f",
  "kind": "lemma",
  "lexical_name": "ker_mapOfCompatibleSMul",
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
  "slug": "ker-mapofcompatiblesmul--71cf1eaad8cdee04bfe5c90d",
  "source": {
    "blob": "5f1a42cce43dd6937d69090248fd98f12407178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 309,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71cf1eaad8cdee04bfe5c90d43861191b7d74e30c604e207ced5898025d9e3e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6175db5-9369-00c2-f0b6-4101c68a3b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_mapOfCompatibleSMul :
    (mapOfCompatibleSMul A R A M N).ker =
      Submodule.span A {(a • m) ⊗ₜ[R] n - m ⊗ₜ[R] (a • n) | (a : A) (m : M) (n : N)} := by
  refine (Submodule.span_eq_of_le (mapOfCompatibleSMul A R A M N).ker ?_ ?_).symm
  · rintro - ⟨a, m, n, rfl⟩
    simp [smul_tmul]
  · let S := Submodule.span A {(a • m) ⊗ₜ[R] n - m ⊗ₜ[R] (a • n) | (a : A) (m : M) (n : N)}
    let F : M ⊗[A] N →ₗ[A] (M ⊗[R] N) ⧸ S := TensorProduct.lift ({
      toFun m := {
        toFun n := S.mkQ (m ⊗ₜ[R] n)
        map_add' _ _ := by simp [tmul_add]
        map_smul' a n := by
          rw [Submodule.mkQ_apply, Submodule.mkQ_apply, ← Submodule.Quotient.mk_smul, eq_comm,
            Submodule.Quotient.eq, RingHom.id_apply]
          exact Submodule.subset_span ⟨a, m, n, rfl⟩ }
      map_add' _ _ := by ext _; simp [add_tmul]
      map_smul' _ _ := by simp; rfl })
    have h : F ∘ₗ mapOfCompatibleSMul A R A M N = S.mkQ := by ext; simp [S, F]
    change (mapOfCompatibleSMul A R A M N).ker ≤ S
    rw [← Submodule.ker_mkQ S, ← h]
    exact (mapOfCompatibleSMul A R A M N).ker_le_ker_comp F

end TensorProduct.AlgebraTensorModule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant1358700377da1cde94df48fdac680ece6d7b683599881c53c70c995a1a314016.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f1a42cce43dd6937d69090248fd98f12407178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
