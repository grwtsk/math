# isometry_iff_nndist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8270ed70-4844-4bf3-7c68-d0e2159a9b2c",
  "kind": "theorem",
  "lexical_name": "isometry_iff_nndist_eq",
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
  "slug": "isometry-iff-nndist-eq--0e68e245ca47e18e69159da2",
  "source": {
    "blob": "3e058994a6656ec01a327f7a26a2a08c6ff24d19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 49,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e68e245ca47e18e69159da231e2a282873135118e6cee708e2c9bd2bbea292f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8270ed70-4844-4bf3-7c68-d0e2159a9b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isometry_iff_nndist_eq [PseudoMetricSpace α] [PseudoMetricSpace β] {f : α → β} :
    Isometry f ↔ ∀ x y, nndist (f x) (f y) = nndist x y := by
  simp only [Isometry, edist_nndist, ENNReal.coe_eq_coe]
#align isometry_iff_nndist_eq isometry_iff_nndist_eq

/-- On pseudometric spaces, a map is an isometry if and only if it preserves distances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e058994a6656ec01a327f7a26a2a08c6ff24d19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
