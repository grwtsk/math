# ConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06660188ed49237fe069583cfc94c7ce51463eb4891aa891d3a15c345ae7f5dc",
  "kind": "class",
  "lexical_name": "ConnectedSpace",
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
  "slug": "connectedspace--d1fc0faf48c11dd6abace8f6",
  "source": {
    "blob": "5fa17d82b172a666f3d23997cd0dc5251cd09238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 713,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1fc0faf48c11dd6abace8f6e95c35f3adad2759e5e9449751d1529b758a135d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06660188ed49237fe069583cfc94c7ce51463eb4891aa891d3a15c345ae7f5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ConnectedSpace (α : Type u) [TopologicalSpace α] : Prop extends PreconnectedSpace α where
  /-- A connected space is nonempty. -/
  toNonempty : Nonempty α

attribute [instance 50] ConnectedSpace.toNonempty  -- see Note [lower instance priority]

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa17d82b172a666f3d23997cd0dc5251cd09238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
