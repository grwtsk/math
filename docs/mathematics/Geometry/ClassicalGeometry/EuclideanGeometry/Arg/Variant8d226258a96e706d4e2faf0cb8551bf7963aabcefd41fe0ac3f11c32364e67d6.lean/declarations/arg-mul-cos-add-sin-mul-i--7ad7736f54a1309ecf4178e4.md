# arg_mul_cos_add_sin_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cff29918-04de-d3ec-e396-0fc1c3ab3796",
  "kind": "theorem",
  "lexical_name": "arg_mul_cos_add_sin_mul_I",
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
  "slug": "arg-mul-cos-add-sin-mul-i--7ad7736f54a1309ecf4178e4",
  "source": {
    "blob": "54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ad7736f54a1309ecf4178e48c9d039443681395f900dded848451b61e50ab0b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cff29918-04de-d3ec-e396-0fc1c3ab3796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_mul_cos_add_sin_mul_I {r : ℝ} (hr : 0 < r) {θ : ℝ} (hθ : θ ∈ Set.Ioc (-π) π) :
    arg (r * (cos θ + sin θ * I)) = θ := by
  simp only [arg, norm_mul, norm_cos_add_sin_mul_I, Complex.norm_of_nonneg hr.le, mul_one]
  simp only [re_ofReal_mul, im_ofReal_mul, neg_im, ← ofReal_cos, ← ofReal_sin, ←
    mk_eq_add_mul_I, neg_div, mul_div_cancel_left₀ _ hr.ne', mul_nonneg_iff_right_nonneg_of_pos hr]
  by_cases h₁ : θ ∈ Set.Icc (-(π / 2)) (π / 2)
  · rw [ite_eq_left]
    exacts [Real.arcsin_sin' h₁, Real.cos_nonneg_of_mem_Icc h₁]
  · rw [Set.mem_Icc, not_and_or, not_le, not_le] at h₁
    rcases h₁ with h₁ | h₁
    · replace hθ := hθ.1
      have hcos : Real.cos θ < 0 := by
        rw [← neg_pos, ← Real.cos_add_pi]
        refine Real.cos_pos_of_mem_Ioo ⟨?_, ?_⟩ <;> linarith
      have hsin : Real.sin θ < 0 := Real.sin_neg_of_neg_of_neg_pi_lt (by linarith) hθ
      rw [ite_eq_right, ite_eq_right, ← Real.sin_add_pi, Real.arcsin_sin,
        add_sub_cancel_right] <;> [linarith; linarith; exact hsin.not_ge; exact hcos.not_ge]
    · replace hθ := hθ.2
      have hcos : Real.cos θ < 0 := Real.cos_neg_of_pi_div_two_lt_of_lt h₁ (by linarith)
      have hsin : 0 ≤ Real.sin θ := Real.sin_nonneg_of_mem_Icc ⟨by linarith, hθ⟩
      rw [ite_eq_right, ite_eq_left, ← Real.sin_sub_pi, Real.arcsin_sin,
        sub_add_cancel] <;> [linarith; linarith; exact hsin; exact hcos.not_ge]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8d226258a96e706d4e2faf0cb8551bf7963aabcefd41fe0ac3f11c32364e67d6.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54614f8ee43d6cb4e07ab6babc90cb5afdb1dc01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
