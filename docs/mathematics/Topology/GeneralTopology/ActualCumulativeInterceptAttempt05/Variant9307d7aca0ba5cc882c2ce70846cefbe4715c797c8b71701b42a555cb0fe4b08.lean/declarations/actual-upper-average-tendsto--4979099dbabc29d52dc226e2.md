# actual_upper_average_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7b3c82-f2a2-373b-fc96-da8714aa1b70",
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
  "slug": "actual-upper-average-tendsto--4979099dbabc29d52dc226e2",
  "source": {
    "blob": "59467cd97f43b4e98e3d339b18904d33b838e496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4979099dbabc29d52dc226e2cd5873b58a00172f085003b5c2764f3f5210b11b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7b3c82-f2a2-373b-fc96-da8714aa1b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–135.

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
  dsimp only [Function.comp_def]
  field_simp [hn]
  ring

/-- Fixed physical coordinate bridge limit; no A-dependent endpoint-relative rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59467cd97f43b4e98e3d339b18904d33b838e496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
