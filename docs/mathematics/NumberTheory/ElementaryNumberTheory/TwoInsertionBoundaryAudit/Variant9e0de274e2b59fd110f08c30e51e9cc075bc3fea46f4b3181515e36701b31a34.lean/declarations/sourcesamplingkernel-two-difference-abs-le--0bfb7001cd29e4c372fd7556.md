# sourceSamplingKernel_two_difference_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5baf7f2512cbbc739d764c03e884e1ef9b34f8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c071369-9e83-b601-c368-a9b37262c0ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88c9f9d6-bf6a-70f5-4fd4-4d0a2292ab5c",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_two_difference_abs_le",
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
  "slug": "sourcesamplingkernel-two-difference-abs-le--0bfb7001cd29e4c372fd7556",
  "source": {
    "blob": "e5baf7f2512cbbc739d764c03e884e1ef9b34f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 217,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bfb7001cd29e4c372fd7556edcdeb2a6f364edeb0314aacaa29875eb534b608",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88c9f9d6-bf6a-70f5-4fd4-4d0a2292ab5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_two_difference_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |sourceSamplingKernel A x - sourceSamplingKernel A (2 * x)| ≤
      (4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))) / Real.sqrt x := by
  let D : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hdiff : ∀ y ∈ Set.Icc x (2 * x), DifferentiableAt ℝ (sourceSamplingKernel A) y := by
    intro y hy
    exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A y hA
      (hx.trans_le hy.1)).differentiableAt
  have hbound : ∀ y ∈ Set.Icc x (2 * x),
      ‖deriv (sourceSamplingKernel A) y‖ ≤ D / (x * Real.sqrt x) := by
    intro y hy
    rw [Real.norm_eq_abs]
    have hs := SourceSamplingDerivative.sourceSamplingKernel_derivative_abs_le
      A y hA (hx.trans_le hy.1)
    change |deriv (sourceSamplingKernel A) y| ≤ D / (y * Real.sqrt y) at hs
    exact hs.trans (div_le_div_of_nonneg_left hD
      (mul_pos hx (Real.sqrt_pos.mpr hx))
      (mul_le_mul hy.1 (Real.sqrt_le_sqrt hy.1) (Real.sqrt_nonneg x)
        (hx.trans_le hy.1).le))
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le hdiff hbound (convex_Icc x (2 * x))
    (show x ∈ Set.Icc x (2 * x) by constructor <;> linarith)
    (show 2 * x ∈ Set.Icc x (2 * x) by constructor <;> linarith)
  rw [Real.norm_eq_abs, Real.norm_eq_abs, show 2 * x - x = x by ring, abs_of_pos hx] at hv
  calc
    _ = |sourceSamplingKernel A (2 * x) - sourceSamplingKernel A x| := abs_sub_comm _ _
    _ ≤ D / (x * Real.sqrt x) * x := hv
    _ = _ := by
      change D / (x * Real.sqrt x) * x = D / Real.sqrt x
      field_simp

/-- The rank-one Möbius sum also retains the odd upper and half-size cutoffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e0de274e2b59fd110f08c30e51e9cc075bc3fea46f4b3181515e36701b31a34.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5baf7f2512cbbc739d764c03e884e1ef9b34f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
