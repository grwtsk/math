# actualCriticalCovariance_eq_full_edge_assembly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd44bb1-386e-2c5b-9615-a6b5e6628c97",
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
  "slug": "actualcriticalcovariance-eq-full-edge-assembly--da8a6d871c9cfe81ba8be02d",
  "source": {
    "blob": "58ac2bb122279794fca5c86263cb03fc6867eef9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant91e6ff786c6812c946955aa6c06f5e363c7bedc40bb34df61274d63c89079789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da8a6d871c9cfe81ba8be02dddd7cbb7f5fa10adfe4c71e6ad37fe5e1cc66c4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant91e6ff786c6812c946955aa6c06f5e363c7bedc40bb34df61274d63c89079789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd44bb1-386e-2c5b-9615-a6b5e6628c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant91e6ff786c6812c946955aa6c06f5e363c7bedc40bb34df61274d63c89079789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant91e6ff786c6812c946955aa6c06f5e363c7bedc40bb34df61274d63c89079789.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ac2bb122279794fca5c86263cb03fc6867eef9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
