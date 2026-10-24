# toChartedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17012c1b78200d06ea234b6a1ba106adae75b7d1a86910a21c9c0f6a7418642e",
  "kind": "def",
  "lexical_name": "toChartedSpace",
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
  "slug": "tochartedspace--fd92e2d2e2fd4ad58a10419d",
  "source": {
    "blob": "44a556dc586e598f467c7fe57c0da87ee2b18238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 705,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd92e2d2e2fd4ad58a10419dd94b22827348aa41188918a82633d5ec1549bb42",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17012c1b78200d06ea234b6a1ba106adae75b7d1a86910a21c9c0f6a7418642e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toChartedSpace : @ChartedSpace H _ M c.toTopologicalSpace :=
  { __ := c.toTopologicalSpace
    atlas := ⋃ (e : PartialEquiv M H) (he : e ∈ c.atlas), {c.openPartialHomeomorph e he}
    chartAt := fun x ↦ c.openPartialHomeomorph (c.chartAt x) (c.chart_mem_atlas x)
    mem_chart_source := fun x ↦ c.mem_chart_source x
    chart_mem_atlas := fun x ↦ by
      simp only [mem_iUnion, mem_singleton_iff]
      exact ⟨c.chartAt x, c.chart_mem_atlas x, rfl⟩}

end ChartedSpaceCore
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant8139e412d5ca3904171c7a7d9706a557e8dd602fdedea87c968397cb56993058.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a556dc586e598f467c7fe57c0da87ee2b18238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
