# TarjanState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6acb40fc636d471a043f3df8d9eb605893f60b07ac97082002a820a6a36ef4e1",
  "kind": "structure",
  "lexical_name": "TarjanState",
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
  "slug": "tarjanstate--34c5b4934c0e551e290ce618",
  "source": {
    "blob": "f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34c5b4934c0e551e290ce618184990e4a9beb085c06aaa84d4ab1be2f9cc77ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6acb40fc636d471a043f3df8d9eb605893f60b07ac97082002a820a6a36ef4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TarjanState extends DFSState where
  /-- `id[v]` is the index of the vertex `v` in the DFS traversal. -/
  id : Array Nat
  /-- `lowlink[v]` is the smallest index of any node on the stack that is reachable from `v`
  through `v`'s DFS subtree. -/
  lowlink : Array Nat
  /-- The stack of visited vertices used in Tarjan's algorithm. -/
  stack : Array Nat
  /-- `onStack[v] = true` iff `v` is in `stack`. The structure is used to check it efficiently. -/
  onStack : Array Bool
  /-- A time counter that increments each time the algorithm visits an unvisited vertex. -/
  time : Nat

/-- The Tarjan's algorithm.
See [Wikipedia](https://en.wikipedia.org/wiki/Tarjan%27s_strongly_connected_components_algorithm). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
