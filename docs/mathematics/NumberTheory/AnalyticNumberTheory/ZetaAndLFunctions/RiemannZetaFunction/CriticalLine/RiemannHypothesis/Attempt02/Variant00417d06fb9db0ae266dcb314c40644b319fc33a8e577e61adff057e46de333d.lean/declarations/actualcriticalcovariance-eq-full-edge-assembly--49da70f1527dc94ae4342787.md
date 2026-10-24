# actualCriticalCovariance_eq_full_edge_assembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29280a45-4935-1cca-d31f-87fe82bec60e",
  "kind": "theorem",
  "lexical_name": "actualCriticalCovariance_eq_full_edge_assembly",
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
  "slug": "actualcriticalcovariance-eq-full-edge-assembly--49da70f1527dc94ae4342787",
  "source": {
    "blob": "89bdb8d382cbab605b722ab2d310f9cc9558e90e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant00417d06fb9db0ae266dcb314c40644b319fc33a8e577e61adff057e46de333d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49da70f1527dc94ae43427873b53464abd19708ba958f9bb09d19fd785046e05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant00417d06fb9db0ae266dcb314c40644b319fc33a8e577e61adff057e46de333d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29280a45-4935-1cca-d31f-87fe82bec60e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalCovariance_eq_full_edge_assembly {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = actualPreEdgeMovingWork A +
      actualUpperEdgeContinuousDrift A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have ha : Real.log (7 : ℝ) ≤ 2 * A - 1 := by linarith
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (moving_density_intervalIntegrable hA le_rfl ha (by linarith : 2 * A - 1 ≤ 2 * A))
    (moving_density_intervalIntegrable hA ha (by linarith : 2 * A - 1 ≤ 2 * A) le_rfl)
  have hfull : actualMovingCriticalIncrementCovariance A =
      actualPreEdgeMovingWork A + actualUpperEdgeMovingWork A := by
    unfold actualMovingCriticalIncrementCovariance actualPreEdgeMovingWork
      actualUpperEdgeMovingWork
    rw [hs]
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [actualCriticalErrorCovariance_eq_moving_increment (by linarith : 1 ≤ A), hfull,
    actualUpperEdgeMovingWork_eq_drift_add_jumps hA]
  ring

/-- The actual complete compensation exceeds the original covariance by this drift budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant00417d06fb9db0ae266dcb314c40644b319fc33a8e577e61adff057e46de333d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant00417d06fb9db0ae266dcb314c40644b319fc33a8e577e61adff057e46de333d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bdb8d382cbab605b722ab2d310f9cc9558e90e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
