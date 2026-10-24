# dist_add_dist_of_mem_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc7cfdec-235b-70a0-6a25-6d96fcb02c4a",
  "kind": "theorem",
  "lexical_name": "dist_add_dist_of_mem_segment",
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
  "slug": "dist-add-dist-of-mem-segment--b2ad29faa0ddc67e3f6ca8cb",
  "source": {
    "blob": "a45f5d5a2e2e3619e4e9b61cdc7576986db2e474",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2ad29faa0ddc67e3f6ca8cb69abaf5062649681462dd52e6552cebddca5fd64",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc7cfdec-235b-70a0-6a25-6d96fcb02c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_add_dist_of_mem_segment {x y z : E} (h : y ∈ [x -[ℝ] z]) :
    dist x y + dist y z = dist x z :=
  (mem_segment_iff_wbtw.1 h).dist_add_dist

end SeminormedAddCommGroup

section NormedAddCommGroup
variable [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E] {s : Set E} {x : E}

/-- We can intercalate a simplex between a point and one of its neighborhoods. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Convex/Variantad2b5dc4359e0d275f190f938524a15633c03a2e7e01ee74e51d4e91e569715c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45f5d5a2e2e3619e4e9b61cdc7576986db2e474` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
