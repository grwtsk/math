# mkMissingFieldsHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db32e8e46ef47f6c361d1d9e95bda31be710ab9cd00219733e3244203b2a7729",
  "kind": "def",
  "lexical_name": "mkMissingFieldsHint",
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
  "slug": "mkmissingfieldshint--e99078637678b67f00f91854",
  "source": {
    "blob": "2941032a46ecafbb01bcf9db355650fbd34682ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Varianta31688deccdec9f214c91ec8cccb762ab322dcc881bd3211f7fc0129d2d19d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e99078637678b67f00f9185409909ca4f0243e77095636dda039453eeacfeb60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Varianta31688deccdec9f214c91ec8cccb762ab322dcc881bd3211f7fc0129d2d19d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db32e8e46ef47f6c361d1d9e95bda31be710ab9cd00219733e3244203b2a7729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkMissingFieldsHint (fields : Array (Name × Option Expr)) (stx : Syntax) : MetaM MessageData := do
  let some view := mkFieldsHintView? stx | return .nil
  let newFields ← fields.mapM fun (fieldName, fieldVal?) => do
    let value ← if let some fieldVal := fieldVal? then
      let stx ← withOptions (pp.mvars.set · false) <| PrettyPrinter.delab fieldVal
      pure (← PrettyPrinter.ppCategory `term stx).pretty
    else pure "_"
    pure s!"{fieldName} := {value}"
  let useSingleLine ← isSingleLineStyle view
  let suggestionText :=
    if useSingleLine then
      .group (behavior := .fill) <|
        newFields.foldl (init := Std.Format.nil) (fun acc sug => acc ++ "," ++ .line ++ format sug)
    else
      Format.line.joinSep newFields.toList

  let fileMap ← getFileMap
  let col (p : String.Pos.Raw) := (fileMap.utf8PosToLspPos p).character
  let indent :=
    if let some initFieldPos := view.initFieldPos? then
      col initFieldPos
    else
      -- Take the minimum of the opening and closing brace indentations to account for both the
      -- `...\n{ f := v\n ... }` and `...{\n  f := v\n ... \n}` styles
      min (col view.openingPos) (col view.closingPos) + 2

  let leaderLine := (fileMap.utf8PosToLspPos view.leaderPos).line
  let leaderClosingSeparated : Bool := leaderLine < (fileMap.utf8PosToLspPos view.closingPos).line
  -- If a line separates the leader and `}`, and there's no intervening text, `interveningLineEndPos?`
  -- gives the position on that line (the min of column `indent` and the line end) at which to insert
  let interveningLineEndPos? :=
    if leaderLine + 1 ≥ (fileMap.utf8PosToLspPos view.closingPos).line then none else
      let leaderLineEnd := findLineEnd fileMap.source view.leaderTailPos
      let indentPos := (indent + 1).fold (init := leaderLineEnd) (fun _ _ p => p.next fileMap.source)
      let interveningLineEnd := findLineEnd fileMap.source (leaderLineEnd.next fileMap.source)
      let nextTwoLines := Substring.Raw.mk fileMap.source view.leaderTailPos interveningLineEnd
      if nextTwoLines.all (·.isWhitespace) then some (min indentPos nextTwoLines.stopPos) else none

  let (preWs, postWs) : Format × Format :=
    -- If we're in single-line mode, `suggestionText` already has a leading `, `, so insert it as-is
    if useSingleLine then
      (.nil, .nil)
    -- Ensure a line break for consistent indentation if fields exist or there are no fields after `with`
    else if view.numFields > 0 || (view.hasWith && !leaderClosingSeparated) then
      (.line, .nil)
    -- If there is no intervening line, add spaces before and after for `{ f := v\n ...}` style
    else if !leaderClosingSeparated then
      (" ", " ")
    -- If there is an intervening line, insert therein if the region is empty; else insert before
    -- it, as the nonempty region may contain a type annotation
    else
      match interveningLineEndPos? with
      | none => (.line, .nil)
      | some interveningLineEndPos =>
        (String.ofList (List.replicate (indent - col interveningLineEndPos) ' '), .nil)
  let suggestionText := preWs ++ suggestionText ++ postWs
  let insPos := view.lastFieldTailPos?.getD <| interveningLineEndPos?.getD view.leaderTailPos
  let width := Tactic.TryThis.format.inputWidth.get (← getOptions)
  -- Limit only the span of the suggestion so the code action appears everywhere in the structure
  let suggestion := {
    suggestion := suggestionText.pretty width indent (col insPos),
    span? := Syntax.ofRange ⟨insPos, insPos⟩,
    toCodeActionTitle? := some fun _ => "Add missing fields"
  }
  MessageData.hint m!"Add missing fields:" #[suggestion]
where
  /--
  Constructs a `FieldsHintView` used to generate missing-fields hint suggestions. This method
  consolidates the low-level syntax inspection required for `mkMissingFieldsHint`.
  -/
  mkFieldsHintView? (stx : Syntax) : Option FieldsHintView := do
    -- Only show suggestions for user-entered structure-instance notation
    -- TODO: selectively let through macro-expanded `where` notation
    guard <| stx.getHeadInfo matches .original ..
    guard <| stx.getKind == ``Parser.Term.structInst
    let (leader, hasWith) := if stx[1][1] matches .missing then
      (stx[0], false)
    else
      (stx[1][1], true)
    let fields := stx[2][0].getSepArgs
    some { leaderPos := (← leader.getPos?)
           leaderTailPos := (← leader.getTailPos?)
           openingPos := (← stx[0].getPos?)
           closingPos := (← stx[5].getPos?)
           numFields := fields.size
           initFieldPos? := fields[0]?.bind (·.getPos?)
           lastFieldTailPos? := fields[fields.size - 1]?.bind (·.getTailPos?)
           hasWith }

  /--
  Returns the position of the end of the line that contains the position `pos`.
  Counterpart of `String.findLineStart`.
  -/
  findLineEnd (s : String) (p : String.Pos.Raw) : String.Pos.Raw :=
    (s.pos! p).find '\n' |>.offset

  /--
  Is the structure instance notation `stx` described by `view` using single-line styling?

  We infer this based on whether the last two fields are comma-separated and either on the same line
  or indented in a way not possible with one-field-per-line styling.
  -/
  isSingleLineStyle (view : FieldsHintView) : MetaM Bool := do
    unless view.numFields ≥ 2 do return false
    let rawFields := stx[2][0]
    -- Account for the fact that we may have a trailing separator:
    let lastInterveningSepIdx := rawFields.getNumArgs - 2 - ((rawFields.getNumArgs + 1) % 2)
    unless rawFields[lastInterveningSepIdx].getKind == `«,» do
      return false

    let some penultimateFieldPos := rawFields[lastInterveningSepIdx - 1].getPos? | return false
    let some lastFieldPos := rawFields[lastInterveningSepIdx + 1].getPos? | return false
    let some lastFieldTailPos := rawFields[lastInterveningSepIdx + 1].getTailPos? | return false
    let fileMap ← getFileMap
    let ⟨penultimateFieldLine, penultimateFieldCol⟩ := fileMap.utf8PosToLspPos penultimateFieldPos
    let ⟨lastFieldLine, lastFieldCol⟩ := fileMap.utf8PosToLspPos lastFieldPos
    return lastFieldLine == penultimateFieldLine || lastFieldCol < penultimateFieldCol
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Varianta31688deccdec9f214c91ec8cccb762ab322dcc881bd3211f7fc0129d2d19d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInstHint/Varianta31688deccdec9f214c91ec8cccb762ab322dcc881bd3211f7fc0129d2d19d10.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2941032a46ecafbb01bcf9db355650fbd34682ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
