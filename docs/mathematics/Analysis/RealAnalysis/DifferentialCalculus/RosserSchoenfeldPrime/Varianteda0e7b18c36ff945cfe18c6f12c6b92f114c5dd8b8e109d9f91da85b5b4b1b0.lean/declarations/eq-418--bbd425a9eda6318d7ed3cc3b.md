# eq_418

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17283170-1993-ffdf-8a9c-85340840b19a",
  "kind": "theorem",
  "lexical_name": "eq_418",
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
  "slug": "eq-418--bbd425a9eda6318d7ed3cc3b",
  "source": {
    "blob": "a5bbda4de7955429ab43110d8409ee59338e06c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 752,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbd425a9eda6318d7ed3cc3bd3a736ed6496f909bc7c92be61769425b85eee93",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17283170-1993-ffdf-8a9c-85340840b19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_418 {x : ℝ} (hx : 2 ≤ x) :
    ∑ p ∈ filter Prime (Iic ⌊x⌋₊), 1 / (p : ℝ) = θ x / (x * log x) +
    ∫ y in 2..x, θ y * (1 + log y) / (y ^ 2 * log y ^ 2) := by
  have : ∀ t ∈ Set.Icc 2 x, DifferentiableAt ℝ (fun y : ℝ ↦ 1 / y) t :=
    fun y hy => (by fun_prop (disch := grind))
  have integrable : IntervalIntegrable (fun t ↦ deriv (fun y ↦ 1 / y / Real.log y) t) volume 2 x := by
    apply IntervalIntegrable.congr (f := (fun y ↦ -(1 + Real.log y) / (y ^ 2 * Real.log y ^ 2)))
    · intro y hy
      have := deriv_fun_inv'' (y.hasDerivAt_mul_log (by grind)).differentiableAt
        (mul_ne_zero_iff.2 ⟨by grind, by linarith [Real.log_pos (by grind : 1 < y)]⟩)
      simp only [div_div, fun t : ℝ => one_div (t * log t), this,
        deriv_mul_log (by grind : y ≠ 0)]
      ring
    · refine  ContinuousOn.intervalIntegrable fun t ht ↦ ContinuousAt.continuousWithinAt ?_
      rw [Set.uIcc_of_le hx] at ht
      apply ContinuousAt.div (by fun_prop (disch := grind)) (by fun_prop (disch := grind))
      simp; grind
  rw [eq_413 (f := fun x => 1 / x) hx this integrable, mul_comm_div, one_mul, div_div, sub_eq_add_neg,
    ← intervalIntegral.integral_neg, add_left_cancel_iff]
  refine intervalIntegral.integral_congr fun y hy => ?_
  have hy := Set.uIcc_of_le hx ▸ hy
  have := deriv_fun_inv'' (y.hasDerivAt_mul_log (by grind)).differentiableAt
    (mul_ne_zero_iff.2 ⟨by grind, by linarith [Real.log_pos (by grind : 1 < y)]⟩)
  simp only [neg_mul_eq_mul_neg, mul_div_assoc, mul_left_cancel_iff_of_pos
    (theta_pos hy.1), div_div, fun t : ℝ => one_div (t * log t), this,
    deriv_mul_log (by grind : y ≠ 0)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Varianteda0e7b18c36ff945cfe18c6f12c6b92f114c5dd8b8e109d9f91da85b5b4b1b0.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5bbda4de7955429ab43110d8409ee59338e06c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
