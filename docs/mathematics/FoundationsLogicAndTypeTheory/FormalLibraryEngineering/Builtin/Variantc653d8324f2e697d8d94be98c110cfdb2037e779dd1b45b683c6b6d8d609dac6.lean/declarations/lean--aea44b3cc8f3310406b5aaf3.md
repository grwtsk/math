# lean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64af97ced1c9481848744aa47763b0a20476068013237223e7425cbb53a0c13a",
  "kind": "def",
  "lexical_name": "lean",
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
  "slug": "lean--aea44b3cc8f3310406b5aaf3",
  "source": {
    "blob": "128001ebaa848e230bfbb1d7ad55d36ebf90f010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aea44b3cc8f3310406b5aaf3f4012bc186282a68f0f8d701b9a55b3fe5489bc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64af97ced1c9481848744aa47763b0a20476068013237223e7425cbb53a0c13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def lean (name : Option Ident := none) (error warning : flag false) («show» : flag true) (code : StrLit) :
    DocM (Block ElabInline ElabBlock) := do
  let env ← getEnv
  -- Parse from the file when source positions are available, otherwise from the literal's own
  -- contents (e.g. for a docstring that came from a macro).
  let (text, ictx, pos) ←
    if let some pos := code.raw.getPos? true then
      let text ← getFileMap
      let endPos := code.raw.getTailPos? true |>.getD text.source.rawEndPos
      let endPos := if endPos ≤ text.source.rawEndPos then endPos else text.source.rawEndPos
      pure (text,
        mkInputContext text.source (← getFileName)
          (endPos := endPos) (endPos_valid := by simp only [endPos]; split <;> simp [*]),
        pos)
    else
      let ictx := mkInputContext code.getString (← getFileName)
      pure (ictx.fileMap, ictx, (0 : String.Pos.Raw))
  let cctx : Command.Context := {fileName := ← getFileName, fileMap := text, snap? := none, cancelTk? := none}
  let scopes := (← get).scopes
  let ((cmds, cmdState), trees) ← withHighlightingInfoTrees do
    let mut cmdState : Command.State := { env, maxRecDepth := ← MonadRecDepth.getMaxRecDepth, scopes }
    let mut pstate : Parser.ModuleParserState := {
      pos
      recovering := false
      hasLeading := false
    }
    let mut cmds := #[]
    repeat
      let scope := cmdState.scopes.head!
      let pmctx := { env := cmdState.env, options := scope.opts, currNamespace := scope.currNamespace, openDecls := scope.openDecls }
      let (cmd, ps', messages) := Parser.parseCommand ictx pmctx pstate cmdState.messages
      cmds := cmds.push cmd
      pstate := ps'
      cmdState := { cmdState with messages := messages }
      cmdState ← runCommand (Command.elabCommand cmd) cmd cctx cmdState
      if Parser.isTerminalCommand cmd then break
    setEnv cmdState.env
    modify fun st => { st with scopes := cmdState.scopes }

    for t in cmdState.infoState.trees do
      pushInfoTree t
    pure (cmds, cmdState)

  let mut output := #[]
  for msg in cmdState.messages.toArray do
    let b := text.ofPosition msg.pos
    let e := msg.endPos |>.map text.ofPosition |>.getD (b.next text.source)
    let msgStr := b.extract text.source e
    let msgStx := Syntax.mkStrLit msgStr (info := .synthetic b e (canonical := true))
    unless msg.isSilent do
      if name.isSome then output := output.push (msg.severity, ← msg.data.toString)
      if msg.severity == .error && !error then
        let hint ← flagHint m!"The `+error` flag indicates that errors are expected:" #[" +error"]
        logErrorAt msgStx m!"Unexpected error:{indentD msg.data}{hint.getD m!""}"
      if msg.severity == .warning && !warning then
        let hint ← flagHint m!"The `+warning` flag indicates that warnings are expected:" #[" +warning"]
        logErrorAt msgStx m!"Unexpected warning:{indentD msg.data}{hint.getD m!""}"
      else
        withRef msgStx <| log msg.data (severity := .information) (isSilent := true)
    if let some x := name then
      modifyEnv (leanOutputExt.modifyState · (·.insert x.getId output))
  if «show» then
    if h : trees.size > 0 then
      let hl := Data.LeanBlock.mk (← highlightSyntax trees (mkNullNode cmds))
      return .custom hl #[.code code.getString]
    else
      return .code code.getString
  else
    return .empty
where
  runCommand (act : Command.CommandElabM Unit) (stx : Syntax)
      (cctx : Command.Context) (cmdState : Command.State) :
      DocM Command.State := do
    let (output, cmdState) ←
      match (← liftM <| IO.FS.withIsolatedStreams <| EIO.toIO' <| (act.run cctx).run cmdState) with
      | (output, .error e) => Lean.logError e.toMessageData; pure (output, cmdState)
      | (output, .ok ((), cmdState)) => pure (output, cmdState)

    if output.trimAscii.isEmpty then return cmdState

    let log : MessageData → Command.CommandElabM Unit :=
      if let some tok := firstToken? stx then logInfoAt tok
      else logInfo

    match (← liftM <| EIO.toIO' <| ((log output).run cctx).run cmdState) with
    | .error _ => pure cmdState
    | .ok ((), cmdState) => pure cmdState

  flagHint (hintText) (suggestions : Array String) : DocM (Option MessageData) := do
    let range? :=
      match ← getRef with
      | `(block|```$name $args* | $s ```) =>
        (mkNullNode (#[name] ++ args)).getRange?
      | `(inline|role{$name $args*}[$_]) =>
        (mkNullNode (#[name] ++ args)).getRange?
      | _ => none
    if let some ⟨b, e⟩ := range? then
      let str := b.extract (← getFileMap).source e
      let str := if str.startsWith "kw?" then "kw" ++ str.drop 3 else str
      let stx := Syntax.mkStrLit str (info := .synthetic b e (canonical := true))
      let suggs := suggestions.map (fun (s : String) => {suggestion := str ++ s})
      some <$> MessageData.hint hintText suggs (ref? := some stx)
    else pure none

/--
Displays output from a named Lean code block.
-/
@[builtin_doc_code_block]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variantc653d8324f2e697d8d94be98c110cfdb2037e779dd1b45b683c6b6d8d609dac6.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `128001ebaa848e230bfbb1d7ad55d36ebf90f010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
