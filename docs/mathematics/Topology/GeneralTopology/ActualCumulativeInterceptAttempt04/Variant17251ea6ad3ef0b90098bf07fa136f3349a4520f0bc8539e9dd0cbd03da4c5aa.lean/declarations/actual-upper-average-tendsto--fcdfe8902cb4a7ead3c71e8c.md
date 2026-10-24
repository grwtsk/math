# actual_upper_average_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86612b42-b6db-9cd4-d759-afa293bb7329",
  "kind": "theorem",
  "lexical_name": "actual_upper_average_tendsto",
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
  "slug": "actual-upper-average-tendsto--fcdfe8902cb4a7ead3c71e8c",
  "source": {
    "blob": "26591905f3600c784ae785087d7401bfd7139351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcdfe8902cb4a7ead3c71e8c8e658b8567680f5acad7bbe917e1c2fe26c7c6f9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86612b42-b6db-9cd4-d759-afa293bb7329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_average_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun A : ℝ => criticalDiscrepancyPrimitive (2*A)/(2*A))
      atTop (𝓝 actualAffineSlope) := by
  have hA : Tendsto (fun A : ℝ => 2*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by norm_num : (0:ℝ)<2)
  have h := ((actual_primitive_affine_intercept hI).comp hA).div_atTop hA
  have hc : Tendsto (fun _ : ℝ => actualAffineSlope) atTop (𝓝 actualAffineSlope) := tendsto_const_nhds
  have hz := hc.add h
  simp only [add_zero] at hz
  apply hz.congr'
  filter_upwards [eventually_gt_atTop (0:ℝ)] with A hpos
  have hn : 2*A ≠ 0 := ne_of_gt (by linarith : 0<2*A)
  field_simp
  ring

/-- Fixed physical coordinate bridge limit; no A-dependent endpoint-relative rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26591905f3600c784ae785087d7401bfd7139351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
