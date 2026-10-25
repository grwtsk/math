# elabCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bc8742aee8bb54f814afd598ac9b0c25788769df0ac171170d18ba9f222d394",
  "kind": "def",
  "lexical_name": "elabCommand",
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
  "slug": "elabcommand--b531af9ef09499202318b78f",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b531af9ef09499202318b78f4dde65ff3ac9e766c62ce18087ef74a814ad4eb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bc8742aee8bb54f814afd598ac9b0c25788769df0ac171170d18ba9f222d394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def elabCommand (stx : Syntax) : CommandElabM Unit :=
  try
    go
  finally
    addTraceAsMessages
where go := do
  withLogging <| withRef stx <| withIncRecDepth <| withFreshMacroScope do
    match stx with
    | Syntax.node _ k args =>
      if k == nullKind then
        -- list of commands => elaborate in order
        -- The parser will only ever return a single command at a time, but syntax quotations can return multiple ones
        -- Incrementality is currently limited to the common case where the sequence is the direct
        -- output of a macro, see below.
        withoutCommandIncrementality true do
          args.forM elabCommand
      else withTraceNode `Elab.command (fun _ => return stx) (tag :=
        -- special case: show actual declaration kind for `declaration` commands
        (if stx.isOfKind ``Parser.Command.declaration then stx[1] else stx).getKind.toString) do
        checkDeprecatedSyntax stx (← read).macroStack
        let s ← get
        match (← liftMacroM <| expandMacroImpl? s.env stx) with
        | some (decl, stxNew?) =>
          withInfoTreeContext (mkInfoTree := mkInfoTree decl stx) do
            let stxNew ← liftMacroM <| liftExcept stxNew?
            withMacroExpansion stx stxNew do
              -- Support incrementality; see also Note [Incremental Macros]
              if let some snap := (←read).snap? then
                -- Unpack nested commands; see `MacroExpandedSnapshot.next`
                let cmds := if stxNew.isOfKind nullKind then stxNew.getArgs else #[stxNew]
                let nextMacroScope := (← get).nextMacroScope
                let hasTraces := (← getTraceState).traces.size > 0
                let oldSnap? := do
                  let oldSnap ← snap.old?
                  let oldSnap ← oldSnap.val.get.toTyped? MacroExpandedSnapshot
                  guard <| oldSnap.macroDecl == decl && oldSnap.newNextMacroScope == nextMacroScope
                  -- check absence of traces; see Note [Incremental Macros]
                  guard <| !oldSnap.hasTraces && !hasTraces
                  return oldSnap
                if snap.old?.isSome && oldSnap?.isNone then
                  snap.old?.forM (·.val.cancelRec)
                let oldCmds? := oldSnap?.map fun old =>
                  if old.newStx.isOfKind nullKind then old.newStx.getArgs else #[old.newStx]
                let cmdPromises ← cmds.mapM fun _ => IO.Promise.new
                let cancelTk? := (← read).cancelTk?
                snap.new.resolve <| .ofTyped {
                  diagnostics := .empty
                  macroDecl := decl
                  newStx := stxNew
                  newNextMacroScope := nextMacroScope
                  hasTraces
                  next := Array.zipWith (fun cmdPromise cmd =>
                    { stx? := some cmd, task := cmdPromise.resultD default, cancelTk? }) cmdPromises cmds
                  : MacroExpandedSnapshot
                }
                -- After the first command whose syntax tree changed, we must disable
                -- incremental reuse
                let mut reusedCmds := true
                let opts ← getOptions
                -- For each command, associate it with new promise and old snapshot, if any, and
                -- elaborate recursively
                for cmd in cmds, cmdPromise in cmdPromises, i in *...cmds.size do
                  let oldCmd? := oldCmds?.bind (·[i]?)
                  withReader ({ · with snap? := some {
                    new := cmdPromise
                    old? := do
                      guard reusedCmds
                      let old ← oldSnap?
                      return { stx := (← oldCmd?), val := (← old.next[i]?) }
                  } }) do
                    if oldSnap?.isSome && (← read).snap?.isNone then
                      oldSnap?.bind (·.next[i]?) |>.forM (·.cancelRec)
                    elabCommand cmd
                    -- Resolve promise for commands not supporting incrementality; waiting for
                    -- `withAlwaysResolvedPromises` to do this could block reporting by later
                    -- commands
                    cmdPromise.resolve default
                  reusedCmds := reusedCmds && oldCmd?.any (·.eqWithInfoAndTraceReuse opts cmd)
              else
                elabCommand stxNew
        | _ =>
          match commandElabAttribute.getEntries s.env k with
          | []      =>
            withInfoTreeContext (mkInfoTree := mkInfoTree `no_elab stx) <|
              throwError "elaboration function for `{k}` has not been implemented"
          | elabFns => elabCommandUsing s stx elabFns
    | _ =>
      withInfoTreeContext (mkInfoTree := mkInfoTree `no_elab stx) <|
        throwError "unexpected command"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
