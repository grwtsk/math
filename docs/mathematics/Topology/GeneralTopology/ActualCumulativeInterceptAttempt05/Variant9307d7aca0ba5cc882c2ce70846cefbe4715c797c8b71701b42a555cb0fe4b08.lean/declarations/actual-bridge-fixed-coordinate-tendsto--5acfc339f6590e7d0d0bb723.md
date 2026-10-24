# actual_bridge_fixed_coordinate_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee61a413-3373-d4ef-4b3f-0c2a03f87f0e",
  "kind": "theorem",
  "lexical_name": "actual_bridge_fixed_coordinate_tendsto",
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
  "slug": "actual-bridge-fixed-coordinate-tendsto--5acfc339f6590e7d0d0bb723",
  "source": {
    "blob": "59467cd97f43b4e98e3d339b18904d33b838e496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5acfc339f6590e7d0d0bb7238a17680eee372d25104a143e630dfd6f055ffa01",
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

Occurrence: `result:ee61a413-3373-d4ef-4b3f-0c2a03f87f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bridge_fixed_coordinate_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => criticalDiscrepancyBridge A u) atTop
      (𝓝 (criticalDiscrepancyPrimitive u - actualAffineSlope*u)) := by
  have hc : Tendsto (fun _ : ℝ => criticalDiscrepancyPrimitive u) atTop
      (𝓝 (criticalDiscrepancyPrimitive u)) := tendsto_const_nhds
  have h := hc.sub ((actual_upper_average_tendsto hI).const_mul u)
  have he (A : ℝ) : criticalDiscrepancyPrimitive u -
    u*(criticalDiscrepancyPrimitive (2*A)/(2*A)) = criticalDiscrepancyBridge A u := by
    unfold criticalDiscrepancyBridge
    ring
  simpa only [mul_comm actualAffineSlope u] using h.congr he

/-- Exact affine-subtracted bridge dictionary, with its nonzero scale guard. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt05/Variant9307d7aca0ba5cc882c2ce70846cefbe4715c797c8b71701b42a555cb0fe4b08.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59467cd97f43b4e98e3d339b18904d33b838e496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
