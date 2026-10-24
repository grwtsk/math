# ContinuousMap.isUltrametricDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82dac8fd6772c89a9d7f3843465a550dec12bae45b3d8d8d669358fd68e4fddd",
  "kind": "instance",
  "lexical_name": "ContinuousMap.isUltrametricDist",
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
  "slug": "continuousmap-isultrametricdist--e976dbe8a5f331e7dee015b7",
  "source": {
    "blob": "3bd407e9baa5f95ca61dd12433940e085b0dc588",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousMaps/Variant257f67d7a684211e1deddc48fb313a6e2dcb9d09a1c9aaccbcaa1d70cf2832bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e976dbe8a5f331e7dee015b7cd1d36a0041d9249e83381f370d0fbe8de8d00d6",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousMaps/Variant257f67d7a684211e1deddc48fb313a6e2dcb9d09a1c9aaccbcaa1d70cf2832bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82dac8fd6772c89a9d7f3843465a550dec12bae45b3d8d8d669358fd68e4fddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousMap.isUltrametricDist {X Y : Type*}
    [TopologicalSpace X] [CompactSpace X] [MetricSpace Y] [IsUltrametricDist Y] :
    IsUltrametricDist C(X, Y) := by
  constructor
  intro f g h
  rw [ContinuousMap.dist_le (by positivity)]
  refine fun x ↦ (dist_triangle_max (f x) (g x) (h x)).trans (max_le_max ?_ ?_) <;>
  exact ContinuousMap.dist_apply_le_dist x
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousMaps/Variant257f67d7a684211e1deddc48fb313a6e2dcb9d09a1c9aaccbcaa1d70cf2832bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousMaps/Variant257f67d7a684211e1deddc48fb313a6e2dcb9d09a1c9aaccbcaa1d70cf2832bd.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd407e9baa5f95ca61dd12433940e085b0dc588` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
