# gradedComm_gradedMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9cf2f9f3-cee7-c9f4-712f-287306ce5990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87b54677-13a6-1abe-476c-78e470528510",
  "kind": "theorem",
  "lexical_name": "gradedComm_gradedMul",
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
  "slug": "gradedcomm-gradedmul--3df6c05b222b421e190f6fc1",
  "source": {
    "blob": "59b892f70e82e6acceb4f84faf0f2939dbd6c004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3df6c05b222b421e190f6fc11bc930e7ba33e499d2a3cfee6c03e27441dd5cb4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b54677-13a6-1abe-476c-78e470528510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gradedComm_gradedMul (x y : DirectSum _ 𝒜 ⊗[R] DirectSum _ ℬ) :
    gradedComm R 𝒜 ℬ (gradedMul R 𝒜 ℬ x y)
      = gradedMul R ℬ 𝒜 (gradedComm R 𝒜 ℬ x) (gradedComm R 𝒜 ℬ y) := by
  suffices (gradedMul R 𝒜 ℬ).compr₂ (gradedComm R 𝒜 ℬ).toLinearMap
      = (gradedMul R ℬ 𝒜 ∘ₗ (gradedComm R 𝒜 ℬ).toLinearMap).compl₂
        (gradedComm R 𝒜 ℬ).toLinearMap from
    LinearMap.congr_fun₂ this x y
  ext i₁ a₁ j₁ b₁ i₂ a₂ j₂ b₂
  dsimp
  rw [gradedComm_of_tmul_of, gradedComm_of_tmul_of, tmul_of_gradedMul_of_tmul]
  -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specialize `map_smul` to avoid timeouts.
  simp_rw [Units.smul_def, ← Int.cast_smul_eq_zsmul R, LinearEquiv.map_smul, map_smul,
    LinearMap.smul_apply]
  simp_rw [Int.cast_smul_eq_zsmul R, ← Units.smul_def, DirectSum.lof_eq_of, DirectSum.of_mul_of,
    ← DirectSum.lof_eq_of R, gradedComm_of_tmul_of, tmul_of_gradedMul_of_tmul, smul_smul,
    DirectSum.lof_eq_of, ← DirectSum.of_mul_of, ← DirectSum.lof_eq_of R]
  simp_rw [← uzpow_add, mul_add, add_mul, mul_comm i₁ j₂]
  congr 1
  abel_nf
  rw [two_nsmul, uzpow_add, uzpow_add, Int.units_mul_self, one_mul]

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/External/Variant4ceb9745208f5a8a24587b86a5be3c88c4e262ed88a7039bd75dbd4d9b4571e0.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b892f70e82e6acceb4f84faf0f2939dbd6c004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
