# tarjanDFS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4be80d70be2a9d3e5fe5756dfd9be15c8e4dc81d7f459a9591b6266d839b179",
  "kind": "def",
  "lexical_name": "tarjanDFS",
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
  "slug": "tarjandfs--c54eabed1f22814b72c4ad2b",
  "source": {
    "blob": "f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c54eabed1f22814b72c4ad2be75fa90ba0d2be250ab016c6f7712f4797ebb8b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4be80d70be2a9d3e5fe5756dfd9be15c8e4dc81d7f459a9591b6266d839b179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def tarjanDFS (g : Graph) (v : Nat) : StateM TarjanState Unit := do
  modify fun s => {
    visited := s.visited.set! v true,
    id := s.id.set! v s.time,
    lowlink := s.lowlink.set! v s.time,
    stack := s.stack.push v,
    onStack := s.onStack.set! v true,
    time := s.time + 1
  }

  for edge in g[v]! do
    let u := edge.dst
    if !(← get).visited[u]! then
      tarjanDFS g u
      modify fun s => {s with
        lowlink := s.lowlink.set! v (min s.lowlink[v]! s.lowlink[u]!),
      }
    else if (← get).onStack[u]! then
      modify fun s => {s with
        lowlink := s.lowlink.set! v (min s.lowlink[v]! s.id[u]!),
      }

  if (← get).id[v]! = (← get).lowlink[v]! then
    let mut w := 0
    while true do
      w := (← get).stack.back!
      modify fun s => {s with
        stack := s.stack.pop
        onStack := s.onStack.set! w false
        lowlink := s.lowlink.set! w s.lowlink[v]!
      }
      if w = v then
        break

/-- Implementation of `findSCCs` in the `StateM TarjanState` monad. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
