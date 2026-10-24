# Orthonormal.sum_inner_products_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93cf82ab-031b-4af0-3883-db86e31553bc",
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
  "slug": "orthonormal-sum-inner-products-le--acf2a7c9dc667486be117c73",
  "source": {
    "blob": "4c22139138eb648768f026facb5298a12688bf38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 445,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acf2a7c9dc667486be117c733d81958ada49823c778d1bc34b90e51e78fe2049",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93cf82ab-031b-4af0-3883-db86e31553bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–463.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c22139138eb648768f026facb5298a12688bf38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
