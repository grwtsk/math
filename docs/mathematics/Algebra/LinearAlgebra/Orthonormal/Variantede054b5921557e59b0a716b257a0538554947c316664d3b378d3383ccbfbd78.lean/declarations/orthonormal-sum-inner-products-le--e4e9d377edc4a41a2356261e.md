# Orthonormal.sum_inner_products_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48279d93f303ec50f88d434946d25f0f905135de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 437,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03f200ce-7bcb-39c9-0a3e-08e22dcf3903",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ab16be-24a4-6e13-5b9b-6f7d17ea9163",
  "kind": "theorem",
  "lexical_name": "Orthonormal.sum_inner_products_le",
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
  "slug": "orthonormal-sum-inner-products-le--e4e9d377edc4a41a2356261e",
  "source": {
    "blob": "48279d93f303ec50f88d434946d25f0f905135de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 437,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4e9d377edc4a41a2356261e1fef0e269c0b6e3615f0302520678330dc0cf3d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ab16be-24a4-6e13-5b9b-6f7d17ea9163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orthonormal.sum_inner_products_le {s : Finset ι} (hv : Orthonormal 𝕜 v) :
    ∑ i ∈ s, ‖⟪v i, x⟫‖ ^ 2 ≤ ‖x‖ ^ 2 := by
  have h₂ :
    (∑ i ∈ s, ∑ j ∈ s, ⟪v i, x⟫ * ⟪x, v j⟫ * ⟪v j, v i⟫) = (∑ k ∈ s, ⟪v k, x⟫ * ⟪x, v k⟫ : 𝕜) := by
    exact hv.inner_left_right_finset
  have h₃ : ∀ z : 𝕜, re (z * conj z) = ‖z‖ ^ 2 := by
    intro z
    simp only [mul_conj]
    norm_cast
  suffices hbf : ‖x - ∑ i ∈ s, ⟪v i, x⟫ • v i‖ ^ 2 = ‖x‖ ^ 2 - ∑ i ∈ s, ‖⟪v i, x⟫‖ ^ 2 by
    rw [← sub_nonneg, ← hbf]
    simp only [norm_nonneg, pow_nonneg]
  rw [@norm_sub_sq 𝕜, sub_add]
  simp only [@InnerProductSpace.norm_sq_eq_re_inner 𝕜 E, inner_sum, sum_inner]
  simp only [inner_smul_right, two_mul, inner_smul_left, inner_conj_symm, ← mul_assoc, h₂,
    add_sub_cancel_right, sub_right_inj]
  simp only [map_sum, ← inner_conj_symm x, ← h₃]

/-- Bessel's inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48279d93f303ec50f88d434946d25f0f905135de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
