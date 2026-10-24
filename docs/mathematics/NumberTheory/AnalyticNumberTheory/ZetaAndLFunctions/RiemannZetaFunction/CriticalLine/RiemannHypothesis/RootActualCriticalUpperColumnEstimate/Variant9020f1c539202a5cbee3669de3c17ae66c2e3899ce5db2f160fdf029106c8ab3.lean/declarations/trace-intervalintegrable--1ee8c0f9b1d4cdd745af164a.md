# trace_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaea0533-6309-88db-e890-943ea93bab8f",
  "kind": "theorem",
  "lexical_name": "trace_intervalIntegrable",
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
  "slug": "trace-intervalintegrable--1ee8c0f9b1d4cdd745af164a",
  "source": {
    "blob": "825458aca5f058634deb874b1f6f877d2667f1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant9020f1c539202a5cbee3669de3c17ae66c2e3899ce5db2f160fdf029106c8ab3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee8c0f9b1d4cdd745af164abb5ba86fb5822abdc7a1293d08202eae09a1e864",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant9020f1c539202a5cbee3669de3c17ae66c2e3899ce5db2f160fdf029106c8ab3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaea0533-6309-88db-e890-943ea93bab8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem trace_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualTwistedTimeDensity A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ht := (upper_column_time_orders hA).1.trans (upper_column_time_orders hA).2
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  have h1 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 1
    (by norm_num)
  have h3 := (actual_correlation_contDiff_four A (by linarith : 0 < A)).continuous_iteratedDeriv 3
    (by norm_num)
  have hc : Continuous (fun t => actualTwistedTimeDensity A t s) := by
    unfold actualTwistedTimeDensity
    fun_prop
  exact (hp.intervalIntegrable_of_Icc ht).mul_continuousOn hc.continuousOn

/-- The true upper-column trace equals its actual short support interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant9020f1c539202a5cbee3669de3c17ae66c2e3899ce5db2f160fdf029106c8ab3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variant9020f1c539202a5cbee3669de3c17ae66c2e3899ce5db2f160fdf029106c8ab3.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `825458aca5f058634deb874b1f6f877d2667f1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
