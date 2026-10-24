# actual_bridge_fixed_coordinate_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7a882c5-9066-33d5-2f9d-00732abb0a58",
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
  "slug": "actual-bridge-fixed-coordinate-tendsto--860fe63d304054bc7e8b3e20",
  "source": {
    "blob": "26591905f3600c784ae785087d7401bfd7139351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:860fe63d304054bc7e8b3e20adea8aa35d1e7a6013a2c31e32cf6d24acb31aab",
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

Occurrence: `result:e7a882c5-9066-33d5-2f9d-00732abb0a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–148.

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

end ContinuousResearch.ActualCumulativeIntercept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCumulativeInterceptAttempt04/Variant17251ea6ad3ef0b90098bf07fa136f3349a4520f0bc8539e9dd0cbd03da4c5aa.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26591905f3600c784ae785087d7401bfd7139351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
