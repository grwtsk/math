# inner_sum_smul_sum_smul_of_sum_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75fe58e04595f8cd9d46ff4b93f6c998b105064b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d90d870-fcd9-20f8-2d7b-31068d623701",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce97b9a7-d98e-fc19-aa23-2f43ecab6c77",
  "kind": "theorem",
  "lexical_name": "inner_sum_smul_sum_smul_of_sum_eq_zero",
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
  "slug": "inner-sum-smul-sum-smul-of-sum-eq-zero--6b42a7bf3efba57182229a6d",
  "source": {
    "blob": "75fe58e04595f8cd9d46ff4b93f6c998b105064b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 601,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b42a7bf3efba57182229a6da77fa29d3a79f27283cab7610575f426eb7e2b09",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce97b9a7-d98e-fc19-aa23-2f43ecab6c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_sum_smul_sum_smul_of_sum_eq_zero {ι₁ : Type*} {s₁ : Finset ι₁} {w₁ : ι₁ → ℝ}
    (v₁ : ι₁ → F) (h₁ : ∑ i ∈ s₁, w₁ i = 0) {ι₂ : Type*} {s₂ : Finset ι₂} {w₂ : ι₂ → ℝ}
    (v₂ : ι₂ → F) (h₂ : ∑ i ∈ s₂, w₂ i = 0) :
    ⟪∑ i₁ ∈ s₁, w₁ i₁ • v₁ i₁, ∑ i₂ ∈ s₂, w₂ i₂ • v₂ i₂⟫_ℝ =
      (-∑ i₁ ∈ s₁, ∑ i₂ ∈ s₂, w₁ i₁ * w₂ i₂ * (‖v₁ i₁ - v₂ i₂‖ * ‖v₁ i₁ - v₂ i₂‖)) / 2 := by
  simp_rw [sum_inner, inner_sum, real_inner_smul_left, real_inner_smul_right,
    real_inner_eq_norm_mul_self_add_norm_mul_self_sub_norm_sub_mul_self_div_two, ← div_sub_div_same,
    ← div_add_div_same, mul_sub_left_distrib, left_distrib, Finset.sum_sub_distrib,
    Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.sum_mul, h₁, h₂, zero_mul,
    mul_zero, Finset.sum_const_zero, zero_add, zero_sub, Finset.mul_sum, neg_div,
    Finset.sum_div, mul_div_assoc, mul_assoc]

end Norm_Seminormed

section Norm

open scoped InnerProductSpace

variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [NormedAddCommGroup F] [InnerProductSpace ℝ F]
variable {ι : Type*}

local notation "⟪" x ", " y "⟫" => inner 𝕜 x y

/-- Formula for the distance between the images of two nonzero points under an inversion with center
zero. See also `EuclideanGeometry.dist_inversion_inversion` for inversions around a general
point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variantaf21b90f6f40fb7bcde72d9fff55619a2f6f7b3eda8ad04998b07ba9e14c7831.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75fe58e04595f8cd9d46ff4b93f6c998b105064b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
