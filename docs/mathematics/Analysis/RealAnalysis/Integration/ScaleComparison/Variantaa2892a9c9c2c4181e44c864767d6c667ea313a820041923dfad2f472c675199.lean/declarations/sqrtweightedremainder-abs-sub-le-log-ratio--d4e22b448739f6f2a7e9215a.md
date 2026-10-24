# sqrtWeightedRemainder_abs_sub_le_log_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdf58056-0150-f3fa-3c73-5c33bd3b399a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f11068da-605b-ecbf-1d13-6bd09aa44510",
  "kind": "theorem",
  "lexical_name": "sqrtWeightedRemainder_abs_sub_le_log_ratio",
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
  "slug": "sqrtweightedremainder-abs-sub-le-log-ratio--d4e22b448739f6f2a7e9215a",
  "source": {
    "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e22b448739f6f2a7e9215a2fb4bd3dede6cee2eb898ee4bfd3d15ad1cafcc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11068da-605b-ecbf-1d13-6bd09aa44510`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrtWeightedRemainder_abs_sub_le_log_ratio (A a b : ℝ)
    (hA : 1 ≤ A) (ha : 1 ≤ a) (hab : a ≤ b) :
    |sqrtWeightedRemainder A b - sqrtWeightedRemainder A a| ≤
      scaleComparisonCoefficient A * Real.log (b / a) := by
  have ha0 : 0 < a := by linarith
  have hb0 : 0 < b := ha0.trans_le hab
  have hi : IntervalIntegrable (fun q : ℝ ↦ scaleComparisonCoefficient A / q)
      volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply continuousOn_const.div continuousOn_id
    intro q hq
    rw [uIcc_of_le hab] at hq
    exact ne_of_gt (ha0.trans_le hq.1)
  rw [← sqrtWeightedRemainder_integral_derivative A a b hA ha hab, ← Real.norm_eq_abs]
  calc
    _ ≤ ∫ q in a..b, scaleComparisonCoefficient A / q := by
      apply intervalIntegral.norm_integral_le_of_norm_le hab _ hi
      apply Eventually.of_forall
      intro q hq
      rw [Real.norm_eq_abs]
      exact sqrtWeightedRemainder_derivative_abs_le A q hA (ha.trans hq.1.le)
    _ = _ := by
      simp_rw [div_eq_mul_inv]
      rw [intervalIntegral.integral_const_mul, integral_inv_of_pos ha0 hb0]
      rfl

/-- A genuine logarithmic scale comparison for the unchanged real source remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `265ac85d58c925c8a4202ea06de1c7f5e5dab49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
