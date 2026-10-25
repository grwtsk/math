# handleHover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61743d92c65d7ed5b0ba4c382cbb0aaf530cd459039b81c6271d504fdc3cd889",
  "kind": "def",
  "lexical_name": "handleHover",
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
  "slug": "handlehover--75f9bba1cfbd2f4308080767",
  "source": {
    "blob": "d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75f9bba1cfbd2f43080807679b2e12c97ccdd1624ed35ec0dd528f1cf432fbde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61743d92c65d7ed5b0ba4c382cbb0aaf530cd459039b81c6271d504fdc3cd889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleHover (p : HoverParams)
    : RequestM (RequestTask (Option Hover)) := do
  let doc ← readDoc
  let text := doc.meta.text
  let mkHover (s : String) (r : Lean.Syntax.Range) : Hover :=
    let s := Hover.rewriteExamples s
    {
      contents := {
        kind := MarkupKind.markdown
        value := s
      }
      range? := r.toLspRange text
    }

  let hoverPos := text.lspPosToUtf8Pos p.position
  withWaitFindSnap doc (fun s => s.endPos > hoverPos)
    (notFoundX := pure none) fun snap => do
      -- try to find parser docstring from syntax tree
      let stack? := snap.stx.findStack? (·.getRange?.any (·.contains hoverPos))
      let stxDoc? ← match stack? with
        | some stack => stack.findSomeM? fun (stx, _) => do
          let .node _ kind _ := stx | pure none
          let docStr ← findDocString? snap.env kind
          return docStr.map (·, stx.getRange?.get!)
        | none => pure none
      -- now try info tree
      if let some result := snap.infoTree.hoverableInfoAtM? (m := Id) hoverPos then
        let ctx := result.ctx
        let info := result.info
        if let some range := info.range? then
          -- prefer info tree if at least as specific as parser docstring
          if stxDoc?.all fun (_, stxRange) => stxRange.includes range then
            if let some hoverFmt ← info.fmtHover? ctx then
              return mkHover (toString hoverFmt.fmt) range

      if let some (doc, range) := stxDoc? then
        return mkHover doc range

      return none

open Elab GoToKind in
-- The `LeanLocationLink`s in this request get converted to `LocationLink` by the Watchdog process.
-- In doing so, it updates the position information in the location link using the .ilean data
-- it has available (which includes .ilean update notifications, i.e. position information
-- for the unsaved & unbuilt state of open files).
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
