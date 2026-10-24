# actualUpperEdgeMovingWork_eq_drift_add_jumps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97a8b3b6-80a5-7e71-6746-7ecf35925798",
  "kind": "theorem",
  "lexical_name": "actualUpperEdgeMovingWork_eq_drift_add_jumps",
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
  "slug": "actualupperedgemovingwork-eq-drift-add-jumps--540ba8f8707954f3588f3ae6",
  "source": {
    "blob": "a358ac3c059fafcd9a9f7ce63e2d718c2d1eb132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant94a0c434bbdb3fbf050988c6763ee20d9f46139b97602ba5f535f49cad5ca6c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:540ba8f8707954f3588f3ae6db42d6e98305f4c3987d0fd1d2b935cc06be202e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant94a0c434bbdb3fbf050988c6763ee20d9f46139b97602ba5f535f49cad5ca6c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97a8b3b6-80a5-7e71-6746-7ecf35925798`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperEdgeMovingWork_eq_drift_add_jumps {A : ℝ} (hA : 91 ≤ A) :
    actualUpperEdgeMovingWork A =
      actualUpperEdgeContinuousDrift A + actualUpperEdgePrimeJumpCompensation A := by
  have hi : IntervalIntegrable (fun t : ℝ => (2 * A - t) *
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2)))
      volume (2 * A - 1) (2 * A) :=
    (continuous_const.sub continuous_id).intervalIntegrable.mul_continuousOn
      (critical_kernel_continuous A (by linarith)).continuousOn
  unfold actualUpperEdgeMovingWork actualUpperEdgeContinuousDrift
    actualUpperEdgePrimeJumpCompensation
  rw [← sub_eq_add_neg, ← intervalIntegral.integral_sub hi
    (actualUpperEdgePrimeJump_intervalIntegrable hA)]
  apply intervalIntegral.integral_congr
  intro t _
  unfold actualClosedMangoldtIncrement
  ring

/-- The actual closed Mangoldt jump correction is nonnegative on this negative kernel sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant94a0c434bbdb3fbf050988c6763ee20d9f46139b97602ba5f535f49cad5ca6c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt05/Variant94a0c434bbdb3fbf050988c6763ee20d9f46139b97602ba5f535f49cad5ca6c6.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a358ac3c059fafcd9a9f7ce63e2d718c2d1eb132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
