# handleCallHierarchyIncomingCalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8a08e68f0ba66db985671b628553990a81643853e9129f144af88e5ea0ec8e2",
  "kind": "def",
  "lexical_name": "handleCallHierarchyIncomingCalls",
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
  "slug": "handlecallhierarchyincomingcalls--0c48cac29ca64034a3c2a986",
  "source": {
    "blob": "dedb28154c483633b49a12d1689938209c1531c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1098,
    "line": 1050,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c48cac29ca64034a3c2a986f7e7f8f325c6bf754673e42b7df49f6a5d5cd0ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8a08e68f0ba66db985671b628553990a81643853e9129f144af88e5ea0ec8e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1050–1098.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleCallHierarchyIncomingCalls (p : CallHierarchyIncomingCallsParams)
    : ReaderT ReferenceRequestContext IO (Array CallHierarchyIncomingCall) := do
  let some itemData := CallHierarchyItemData.fromItem? p.item
    | return #[]

  let references := (← read).references
  let identRefs := references.referringTo (.const itemData.module.toString itemData.name.toString) false

  let incomingCalls ← identRefs.mapM fun ⟨location, refModule, parentDecl?⟩ => do

    let ⟨parentDeclNameString, parentDeclRange, parentDeclSelectionRange⟩ :=
      match parentDecl? with
      | some parentDecl => parentDecl
      | none => ⟨"[anonymous]", location.range, location.range⟩

    let parentDeclName := parentDeclNameString.toName

    -- Remove private header from name
    let label := Lean.privateToUserName? parentDeclName |>.getD parentDeclName

    return {
      «from» := {
        name           := label.toString
        kind           := SymbolKind.constant
        uri            := location.uri
        range          := parentDeclRange
        selectionRange := parentDeclSelectionRange
        data?          := toJson {
          module := refModule
          name   := parentDeclName
          : CallHierarchyItemData
        }
      }
      fromRanges := #[location.range]
    }

  return collapseSameIncomingCalls incomingCalls |>.qsort (·.«from».name < ·.«from».name)

where

  collapseSameIncomingCalls (incomingCalls : Array CallHierarchyIncomingCall)
      : Array CallHierarchyIncomingCall :=
    let grouped := incomingCalls.groupByKey (·.«from»)
    let collapsed := grouped.toArray.map fun ⟨_, group⟩ => {
      «from» := group[0]!.«from»
      fromRanges := group.flatMap (·.fromRanges)
    }
    collapsed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean#L1050).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dedb28154c483633b49a12d1689938209c1531c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
