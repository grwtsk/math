# attachChart_preserves_targets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7efe47f-07ce-6786-e560-7be65de665fc",
  "kind": "theorem",
  "lexical_name": "attachChart_preserves_targets",
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
  "slug": "attachchart-preserves-targets--e174e2d5cd5c7cff2a12f38c",
  "source": {
    "blob": "2a1f36623963069de48ee616c31dc3d1f51e1f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e174e2d5cd5c7cff2a12f38c86735523e7fbbe437be01bc74ed4c12a67e9c918",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7efe47f-07ce-6786-e560-7be65de665fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attachChart_preserves_targets (atlas : FiniteAtlas catalog theory)
    (chart : PaperChart catalog theory) {Y : Sort*} (target : V → Y)
    (oldContract : atlas.selection.toGraph.TargetInvariant target)
    (chartContract : chart.selection.toGraph.TargetInvariant target) {x y : V}
    (h : (attachChart atlas chart).selection.toGraph.SameLeaf x y) : target x = target y :=
  (attachChart atlas chart).selection.toGraph.leaf_transport_preserves_targets target
    (atlas.selection.union_target_invariant chart.selection target oldContract chartContract) h

/-- Final facts, selected nodes and selected bridges are each order independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variantf5d62754e0b8c1c96604f3bdfa9b21026196416720c73f53450cbe69f908c993.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a1f36623963069de48ee616c31dc3d1f51e1f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
