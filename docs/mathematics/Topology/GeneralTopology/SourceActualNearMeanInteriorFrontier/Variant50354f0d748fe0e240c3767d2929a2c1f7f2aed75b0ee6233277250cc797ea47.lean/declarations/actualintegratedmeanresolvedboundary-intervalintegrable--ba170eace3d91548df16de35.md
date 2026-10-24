# actualIntegratedMeanResolvedBoundary_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32335bf3-256e-ece4-bf40-8cfa77ab7612",
  "kind": "theorem",
  "lexical_name": "actualIntegratedMeanResolvedBoundary_intervalIntegrable",
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
  "slug": "actualintegratedmeanresolvedboundary-intervalintegrable--ba170eace3d91548df16de35",
  "source": {
    "blob": "2b43185030ebfa47a95a16f34a0b02bd74fc02c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba170eace3d91548df16de3512c0703b6ccc6c1fe7122fed5862afc499bb0077",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32335bf3-256e-ece4-bf40-8cfa77ab7612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualIntegratedMeanResolvedBoundary_intervalIntegrable {A : ℝ}
    (hA : 25600 ≤ A) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualMeanResolvedColumnBoundary A t) volume
        (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have hc := actual_correlation_contDiff_four A (by linarith : 0 < A)
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h2 := hc.continuous_iteratedDeriv 2 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have hB : Continuous (actualMeanResolvedColumnBoundary A) := by
    unfold actualMeanResolvedColumnBoundary actualPeriodicAdjustedColumnBoundary
      actualRetainedMeanSourcePrimitive actualTwistedTimeDensity
    fun_prop
  exact (hB.intervalIntegrable _ _).continuousOn_mul
    (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ (time_order hA)).continuousOn

/-- The full original adjusted interior keeps the near expression and the genuine far work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearMeanInteriorFrontier/Variant50354f0d748fe0e240c3767d2929a2c1f7f2aed75b0ee6233277250cc797ea47.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b43185030ebfa47a95a16f34a0b02bd74fc02c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
