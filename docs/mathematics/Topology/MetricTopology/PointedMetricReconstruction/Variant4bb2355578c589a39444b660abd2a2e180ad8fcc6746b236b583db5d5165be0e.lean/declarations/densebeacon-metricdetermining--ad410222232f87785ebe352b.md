# denseBeacon_metricDetermining

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:631122b3-d9fd-40b6-e966-e5e3e3fb58cf",
  "kind": "theorem",
  "lexical_name": "denseBeacon_metricDetermining",
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
  "slug": "densebeacon-metricdetermining--ad410222232f87785ebe352b",
  "source": {
    "blob": "7c0d092d1e5b1eb9a39727a3bda40bfbf1fa7d85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 147,
    "path": "GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad410222232f87785ebe352b94105a70de59ebfd590b4913f7ce1d01ad9a5557",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631122b3-d9fd-40b6-e966-e5e3e3fb58cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseBeacon_metricDetermining
    (beacon : D → X) (dense : DenseRange beacon) :
    MetricDetermining beacon := by
  intro left right
  constructor
  · exact fun index ↦ probeGap_le_distance beacon left right index
  · intro ε εpositive
    obtain ⟨index, nearLeft⟩ :=
      dense.exists_dist_lt left (half_pos εpositive)
    refine ⟨index, ?_⟩
    have leftNear :
        dist left (beacon index) < ε / 2 := by
      simpa [dist_comm] using nearLeft
    have triangle :
        dist left right ≤
          dist left (beacon index) + dist (beacon index) right :=
      dist_triangle left (beacon index) right
    have absoluteLower :
        dist right (beacon index) - dist left (beacon index) ≤
          probeGap beacon left right index := by
      have signed :=
        neg_le_abs (dist left (beacon index) - dist right (beacon index))
      simpa [probeGap] using signed
    rw [dist_comm (beacon index) right] at triangle
    linarith

/--
Existence evidence for a distance profile indexed by a possibly smaller
beacon family.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c0d092d1e5b1eb9a39727a3bda40bfbf1fa7d85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
