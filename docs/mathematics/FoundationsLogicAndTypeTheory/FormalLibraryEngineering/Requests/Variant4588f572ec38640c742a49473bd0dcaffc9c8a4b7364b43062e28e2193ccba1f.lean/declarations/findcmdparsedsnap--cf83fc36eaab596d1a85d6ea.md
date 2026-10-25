# findCmdParsedSnap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58b6796d1b7cf15acc57c6477bd4555bbffb3c001aab725ca8971c8ae7fd6a90",
  "kind": "def",
  "lexical_name": "findCmdParsedSnap",
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
  "slug": "findcmdparsedsnap--cf83fc36eaab596d1a85d6ea",
  "source": {
    "blob": "ac4760b9f6d58a14edcc06cff2ffa079ca067d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf83fc36eaab596d1a85d6eaf0865ed769213e69253f324b97f2089ec0951198",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58b6796d1b7cf15acc57c6477bd4555bbffb3c001aab725ca8971c8ae7fd6a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findCmdParsedSnap (doc : EditableDocument) (hoverPos : String.Pos.Raw)
    : ServerTask (Option CommandParsedSnapshot) := Id.run do
  let some headerParsed := doc.initSnap.result?
    | .pure none
  headerParsed.processedSnap.task.asServerTask.bindCheap fun headerProcessed => Id.run do
    let some headerSuccess := headerProcessed.result?
      | return .pure none
    let firstCmdSnapTask : ServerTask CommandParsedSnapshot := headerSuccess.firstCmdSnap.task
    firstCmdSnapTask.bindCheap go
where
  go (cmdParsed : CommandParsedSnapshot) : ServerTask (Option CommandParsedSnapshot) := Id.run do
    if containsHoverPos cmdParsed then
      return .pure (some cmdParsed)
    if isAfterHoverPos cmdParsed then
      -- This should never happen in principle
      -- (commands + trailing ws are consecutive and there is no unassigned space between them),
      -- but it's always good to eliminate one additional assumption.
      return .pure none
    match cmdParsed.nextCmdSnap? with
    | some next =>
      next.task.asServerTask.bindCheap go
    | none => .pure none

  containsHoverPos (cmdParsed : CommandParsedSnapshot) : Bool := Id.run do
    let some range := cmdParsed.stx.getRangeWithTrailing? (canonicalOnly := true)
      | return false
    return doc.meta.text.rangeContainsHoverPos range hoverPos (includeStop := false)

  isAfterHoverPos (cmdParsed : CommandParsedSnapshot) : Bool := Id.run do
    let some startPos := cmdParsed.stx.getPos? (canonicalOnly := true)
      | return false
    return hoverPos < startPos

open Language in
/--
Finds the command syntax and info tree of the first snapshot task containing `pos`, asynchronously.
The info tree may be from a nested snapshot, such as a single tactic.

See `SnapshotTree.findInfoTreeAtPos` for details on how the search is done.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4760b9f6d58a14edcc06cff2ffa079ca067d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
