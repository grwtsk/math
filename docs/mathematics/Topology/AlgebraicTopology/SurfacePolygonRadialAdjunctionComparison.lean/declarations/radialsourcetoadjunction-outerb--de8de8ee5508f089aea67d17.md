# radialSourceToAdjunction_outerB

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63f3f37b-16be-d1d9-91b7-cef35c950ae5",
  "kind": "theorem",
  "lexical_name": "radialSourceToAdjunction_outerB",
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
  "slug": "radialsourcetoadjunction-outerb--de8de8ee5508f089aea67d17",
  "source": {
    "blob": "f1627e0134c5211e63c626a366b5ba373fe66994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de8de8ee5508f089aea67d17e62c23e0b1065bf7f67718a2e80afcb14b3b1444",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f3f37b-16be-d1d9-91b7-cef35c950ae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialSourceToAdjunction_outerB (k : ℕ)
    (h : Handle k) (t : unitInterval) :
    radialSourceToAdjunction k (((h, 1), t), 1) =
      radialSourceToAdjunction k
        (((h, 3), unitInterval.symm t), 1) := by
  rw [radialSourceToAdjunction_outer, radialSourceToAdjunction_outer]
  exact congrArg (originalSkeletonMap k)
    (opposite_b_edge_maps_agree k h t)

/-- All seven original gluing generator families map to equality in
the attached disk. This is a genuine relation-preservation theorem,
not an assumed comparison relation or a fabricated inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1627e0134c5211e63c626a366b5ba373fe66994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
