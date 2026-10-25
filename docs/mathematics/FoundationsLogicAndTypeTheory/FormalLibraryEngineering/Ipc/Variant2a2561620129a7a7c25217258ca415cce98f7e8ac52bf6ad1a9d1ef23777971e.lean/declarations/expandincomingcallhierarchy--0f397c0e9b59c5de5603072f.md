# expandIncomingCallHierarchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268863d5a3d1ec72d8d0b6ec5e4440523a99305723d461b27b40535e14ae5788",
  "kind": "def",
  "lexical_name": "expandIncomingCallHierarchy",
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
  "slug": "expandincomingcallhierarchy--0f397c0e9b59c5de5603072f",
  "source": {
    "blob": "3e16086d5ea9dd3bc1f7479e4241c09c5ef78204",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f397c0e9b59c5de5603072fd026aa81267a29207991555ee02a019bfb581048",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268863d5a3d1ec72d8d0b6ec5e4440523a99305723d461b27b40535e14ae5788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandIncomingCallHierarchy (requestNo : Nat) (uri : DocumentUri) (pos : Lsp.Position) : IpcM (Array CallHierarchy × Nat) := do
  writeRequest {
    id := requestNo
    method := "textDocument/prepareCallHierarchy"
    param := {
      textDocument := { uri }
      position := pos
      : CallHierarchyPrepareParams
    }
  }
  let r ← readResponseAs requestNo (Option (Array CallHierarchyItem))
  let mut requestNo := requestNo + 1
  let roots := r.result.getD #[]
  let mut hierarchies := #[]
  for root in roots do
    let (hierarchy, rootRequestNo) ← go requestNo root #[] {}
    requestNo := rootRequestNo
    hierarchies := hierarchies.push hierarchy
  return (hierarchies, requestNo)
where
  go (requestNo : Nat) (item : CallHierarchyItem) (fromRanges : Array Range) (visited : Std.TreeSet String) : IpcM (CallHierarchy × Nat) := do
    if visited.contains item.name then
      return ({ item, fromRanges := #[], children := #[] }, requestNo)
    writeRequest {
      id := requestNo
      method := "callHierarchy/incomingCalls"
      param := {
        item
        : CallHierarchyIncomingCallsParams
      }
    }
    let r ← readResponseAs requestNo (Option (Array CallHierarchyIncomingCall))
    let visited : Std.TreeSet String := visited.insert item.name
    let mut requestNo := requestNo + 1
    let children := r.result.getD #[]
    let mut childHierarchies := #[]
    for c in children do
      let (childHierarchy, childRequestNo) ← go requestNo c.from c.fromRanges visited
      childHierarchies := childHierarchies.push childHierarchy
      requestNo := childRequestNo
    return ({ item, fromRanges, children := childHierarchies }, requestNo)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e16086d5ea9dd3bc1f7479e4241c09c5ef78204` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
