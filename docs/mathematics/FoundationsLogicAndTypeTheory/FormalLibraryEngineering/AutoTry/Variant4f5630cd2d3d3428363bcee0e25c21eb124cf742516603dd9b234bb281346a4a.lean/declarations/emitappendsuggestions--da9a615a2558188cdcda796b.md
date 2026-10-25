# emitAppendSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7850b09def6dff665f9d25d23a978fcbdd164b0707918707b5c63072d3b18d78",
  "kind": "def",
  "lexical_name": "emitAppendSuggestions",
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
  "slug": "emitappendsuggestions--da9a615a2558188cdcda796b",
  "source": {
    "blob": "b0d73bf2c2b38247568abdd58ea6fba9dbf2595c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 380,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da9a615a2558188cdcda796b32bd155d0f8c1534d64b3e27fbd58f36c0e88d10",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7850b09def6dff665f9d25d23a978fcbdd164b0707918707b5c63072d3b18d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def emitAppendSuggestions (tacticSeq ref : Syntax) (insertPos : String.Pos.Raw)
    (suggs : Array (TSyntax `tactic)) (cmdLine : Nat) : CommandElabM Unit := do
  if suggs.isEmpty then return
  let fileMap ← getFileMap
  let sep := computeAppendSep tacticSeq fileMap
  let origSpan := mkEmptyRangeStx insertPos
  let showEdits := debug.autoTry.showEdits.get (← getOptions)
  let formatted ← suggs.mapM fun tac => do
    let fmt ← liftCoreM <| PrettyPrinter.ppTactic tac
    let cleanText := fmt.pretty
    -- The widget display uses `messageData?` (the bare tactic) while the actual edit
    -- text in `suggestion` carries the leading separator -- this keeps the [apply]
    -- line readable without losing the appending semantics on click.
    let editText := sep ++ cleanText
    if showEdits then
      let pos := fileMap.toPosition insertPos
      let dLine := pos.line - cmdLine + 1  -- match `#guard_msgs (positions := true)`: +N:COL
      logInfoAt ref
        m!"autoTry edit: insert {repr editText} at +{dLine}:{pos.column}"
    return ({
      suggestion := .string editText
      messageData? := some (toMessageData tac)
      toCodeActionTitle? := some (fun _ => "Try this: " ++ cleanText)
    } : Tactic.TryThis.Suggestion)
  liftCoreM <|
    if formatted.size == 1 then
      Tactic.TryThis.addSuggestion ref formatted[0]! (origSpan? := origSpan)
    else
      Tactic.TryThis.addSuggestions ref formatted (origSpan? := origSpan)

/--
Run `try?` by elaborating its tactic syntax against `goal` and letting `try?` emit its
own "Try this:" message anchored at `tk`. `try?`'s default emission replaces the syntax
at the current ref, which is exactly what we want for the `sorry` trigger.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AutoTry/Variant4f5630cd2d3d3428363bcee0e25c21eb124cf742516603dd9b234bb281346a4a.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0d73bf2c2b38247568abdd58ea6fba9dbf2595c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
