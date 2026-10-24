# actual_retained_spatial_strip_abs_le_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1495b47-a02d-42b3-f976-6a5260a38308",
  "kind": "theorem",
  "lexical_name": "actual_retained_spatial_strip_abs_le_margin",
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
  "slug": "actual-retained-spatial-strip-abs-le-margin--90c716dcb879ba172b8b8f1e",
  "source": {
    "blob": "d2c3dccc7dd90a391990229a7ebd708747257d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 543,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90c716dcb879ba172b8b8f1eedebaa6b692b68f97c7753d8803352595b4446fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1495b47-a02d-42b3-f976-6a5260a38308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_retained_spatial_strip_abs_le_margin {A : ℝ} (hA : 1 ≤ A) :
    |∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v| ≤
      45 * (Real.log 4 + 4 + Real.log 2) := by
  have hm : MeasurableSet (actualWorkLeftStrip A) := measurableSet_Icc.diff measurableSet_Icc
  have he := setIntegral_congr_fun (μ := (volume : Measure ℝ)) hm
    (fun v hv => actual_density_eq_low_density_on_left_strip hA hv)
  rw [he]
  exact actual_low_mixed_restricted_abs_le_margin hA (actualWorkLeftStrip A)

/-- The independent global balance and the actual signed spatial remainder reconstruct T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantf8ce794682ab94a7c2299fb8dc3a80e8979e5706c59e86dd9000eccf18dc78f5.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2c3dccc7dd90a391990229a7ebd708747257d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
