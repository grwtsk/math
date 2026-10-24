# Reachable.dist_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a17ccd4-52d9-cba3-b636-ddb25745f971",
  "kind": "theorem",
  "lexical_name": "Reachable.dist_anti",
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
  "slug": "reachable-dist-anti--922643da83e9d553f3726110",
  "source": {
    "blob": "af4579105ccbb581e1d072662630b704c007c8af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 292,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922643da83e9d553f372611020916f3064b37d05cc7ac477c363a1e5961ba78f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a17ccd4-52d9-cba3-b636-ddb25745f971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Reachable.dist_anti {G' : SimpleGraph V} (h : G ≤ G') (hr : G.Reachable u v) :
    G'.dist u v ≤ G.dist u v := by
  obtain ⟨_, hw⟩ := hr.exists_walk_length_eq_dist
  rw [← hw, ← Walk.length_map (.ofLE h)]
  apply dist_le

/-- This bundles and abstracts some facts about the first three vertices of a shortest walk
of length at least two: the first and third nodes are different and not connected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af4579105ccbb581e1d072662630b704c007c8af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
