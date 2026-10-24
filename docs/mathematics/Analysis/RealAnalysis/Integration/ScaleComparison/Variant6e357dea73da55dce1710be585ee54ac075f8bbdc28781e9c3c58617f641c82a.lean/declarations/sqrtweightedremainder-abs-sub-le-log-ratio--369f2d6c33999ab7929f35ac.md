# sqrtWeightedRemainder_abs_sub_le_log_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b123b8e1-eb64-c7cf-57f0-9346c3db159b",
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
  "slug": "sqrtweightedremainder-abs-sub-le-log-ratio--369f2d6c33999ab7929f35ac",
  "source": {
    "blob": "f16a4d7b8718bd1035ee13e143e263c3809508b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369f2d6c33999ab7929f35ac0c57dc5376b3e0e7033437bbc22e707c3c12e517",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b123b8e1-eb64-c7cf-57f0-9346c3db159b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–116.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a4d7b8718bd1035ee13e143e263c3809508b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
