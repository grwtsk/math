# expandModuleHierarchyImports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4112c6ef9875baced953bb73ce4fd938bb84755a306d9a465c402ab977a4848e",
  "kind": "def",
  "lexical_name": "expandModuleHierarchyImports",
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
  "slug": "expandmodulehierarchyimports--38ca4bbae5ad6b5eb5d8612b",
  "source": {
    "blob": "716b453f6da84a27cf9ff498f12100e60962db41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38ca4bbae5ad6b5eb5d8612bedc6d8c1ac7e01c44c2b198063548d5b13411fe0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4112c6ef9875baced953bb73ce4fd938bb84755a306d9a465c402ab977a4848e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandModuleHierarchyImports (requestNo : Nat) (uri : DocumentUri) : IpcM (Option ModuleHierarchy × Nat) := do
  writeRequest {
    id := requestNo
    method := "$/lean/prepareModuleHierarchy"
    param := {
      textDocument := { uri }
      : LeanPrepareModuleHierarchyParams
    }
  }
  let r ← readResponseAs requestNo (Option LeanModule)
  let mut requestNo := requestNo + 1
  let some root := r.result
    | return (none, requestNo)
  let root := {
    module := root
    kind := { isAll := false, isPrivate := false, metaKind := .full }
  }
  let (hierarchy, rootRequestNo) ← go requestNo root {}
  requestNo := rootRequestNo
  return (hierarchy, requestNo)
where
  go (requestNo : Nat) (item : LeanImport) (visited : Std.TreeSet String) : IpcM (ModuleHierarchy × Nat) := do
    if visited.contains item.module.name then
      return ({ item, children := #[] }, requestNo)
    writeRequest {
      id := requestNo
      method := "$/lean/moduleHierarchy/imports"
      param := {
        module := item.module
        : LeanModuleHierarchyImportsParams
      }
    }
    let r ← readResponseAs requestNo (Array LeanImport)
    let visited : Std.TreeSet String := visited.insert item.module.name
    let mut requestNo := requestNo + 1
    let children := r.result
    let mut childHierarchies := #[]
    for c in children do
      let (childHierarchy, childRequestNo) ← go requestNo c visited
      childHierarchies := childHierarchies.push childHierarchy
      requestNo := childRequestNo
    return ({ item, children := childHierarchies }, requestNo)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `716b453f6da84a27cf9ff498f12100e60962db41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
