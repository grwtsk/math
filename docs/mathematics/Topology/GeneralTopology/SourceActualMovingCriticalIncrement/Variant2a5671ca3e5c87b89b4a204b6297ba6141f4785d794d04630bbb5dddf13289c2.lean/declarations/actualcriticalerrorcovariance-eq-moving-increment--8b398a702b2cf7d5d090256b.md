# actualCriticalErrorCovariance_eq_moving_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd5e839-5af9-c715-e37f-d226a982666f",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_eq_moving_increment",
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
  "slug": "actualcriticalerrorcovariance-eq-moving-increment--8b398a702b2cf7d5d090256b",
  "source": {
    "blob": "eb3cc4357f2d1c77a452e62c556f416c66115688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b398a702b2cf7d5d090256b1b384ff8f70f84555d6fb09369ca37a5c8875d2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd5e839-5af9-c715-e37f-d226a982666f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_eq_moving_increment {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalErrorCovariance A =
      actualMovingCriticalIncrementCovariance A - actualMovingCriticalHead A := by
  have hp : 0 < A := by linarith
  have ha : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have hab : Real.log (7 : ℝ) ≤ 2 * A := by
    have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 5
    norm_num [Finset.sum_range_succ] at he
    have hlog : Real.log (7 : ℝ) ≤ 2 :=
      (Real.log_le_iff_le_exp (by norm_num)).2 (by linarith)
    linarith
  have hk : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))
      volume (Real.log 7) (2 * A) :=
    (kernel_continuous A hp).intervalIntegrable _ _
  have hi := (centered_error_intervalIntegrable ha hab).mul_continuousOn
    (kernel_continuous A hp).continuousOn
  have he : actualMovingCriticalIncrementCovariance A =
      actualCriticalErrorCovariance A - actualCenteredMangoldtLogError (2 * A) *
        (∫ t in Real.log 7..2 * A, Real.exp (t / 2) *
          (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
    have he0 : actualCriticalErrorCovariance A =
        ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
          (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
            deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) := by
      unfold actualCriticalErrorCovariance actualCriticalErrorDensity
      apply intervalIntegral.integral_congr
      intro t _
      ring
    rw [he0, ← intervalIntegral.integral_const_mul]
    rw [← intervalIntegral.integral_sub hi (hk.const_mul _)]
    unfold actualMovingCriticalIncrementCovariance
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hab] at ht
    dsimp only
    rw [← actualCenteredError_increment_eq_closed ht.2]
    ring
  rw [actualCriticalKernel_mass hA] at he
  unfold actualMovingCriticalHead
  linarith

/-- The only moving constant payment has an explicit actual error budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualMovingCriticalIncrement/Variant2a5671ca3e5c87b89b4a204b6297ba6141f4785d794d04630bbb5dddf13289c2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3cc4357f2d1c77a452e62c556f416c66115688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
