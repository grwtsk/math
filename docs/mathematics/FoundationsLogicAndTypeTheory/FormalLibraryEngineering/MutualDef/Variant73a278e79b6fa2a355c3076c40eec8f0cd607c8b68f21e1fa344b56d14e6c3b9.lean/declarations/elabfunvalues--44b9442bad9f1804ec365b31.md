# elabFunValues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95db04102d1f7342fa976133b77127a40e8d4cc5454b799c9df5c87bbd4e3152",
  "kind": "def",
  "lexical_name": "elabFunValues",
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
  "slug": "elabfunvalues--44b9442bad9f1804ec365b31",
  "source": {
    "blob": "81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 515,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44b9442bad9f1804ec365b312e434aefdbde407af78d7d014464fc4d0904c985",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95db04102d1f7342fa976133b77127a40e8d4cc5454b799c9df5c87bbd4e3152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabFunValues (headers : Array DefViewElabHeader) (vars : Array Expr) (sc : Command.Scope) : TermElabM (Array Expr) :=
  headers.mapM fun header => do
    let mut reusableResult? := none
    if let some snap := header.bodySnap? then
      if let some old := snap.old? then
        -- guaranteed reusable as by the `bodySnap?` invariant, so let's wait on the previous
        -- elaboration
        if let some old := old.val.get then
          snap.new.resolve <| some old
          reusableResult? := some (old.value, old.state)
        else
          -- make sure to cancel any async tasks that may still be running (e.g. kernel and codegen)
          old.val.cancelRec

    let (val, state) ← withRestoreOrSaveFull reusableResult? header.tacSnap? do
      withReuseContext header.value do
      withTraceNode `Elab.definition.value (fun _ => pure header.declName) do
      withDeprecationContextFromAttrs header.modifiers.attrs <| withDeclName header.declName <| withLevelNames header.levelNames do
      let valStx ← declValToTerm header.value header.type
      (if header.kind.isTheorem && !deprecated.oldSectionVars.get (← getOptions) then withHeaderSecVars vars sc #[header] else fun x => x #[]) fun vars => do
      withLCtx' ((← getLCtx).modifyLocalDecls fun decl => decl.setType decl.type.cleanupAnnotations) do
      forallBoundedTelescope header.type header.numParams (cleanupAnnotations := true) fun xs type => do
        -- Add new info nodes for new fvars. The server will detect all fvars of a binder by the binder's source location.
        for h : i in *...header.binderIds.size do
          -- skip auto-bound prefix in `xs`
          addLocalVarInfo header.binderIds[i] xs[header.numParams - header.binderIds.size + i]!
        let val ← if (← useProofAsSorry header.kind) then
          mkSorry type false
        else withReader ({ · with tacSnap? := header.tacSnap? }) do
          -- Store instantiated body in info tree for the benefit of the unused variables linter
          -- and other metaprograms that may want to inspect it without paying for the instantiation
          -- again
          withInfoContext' valStx
            (mkInfo := (pure <| .inl <| mkBodyInfo valStx ·))
            (mkInfoOnError := (pure <| mkBodyInfo valStx none))
            do
              -- synthesize mvars here to force the top-level tactic block (if any) to run
              let val ← elabTermEnsuringType valStx type <* synthesizeSyntheticMVarsNoPostponing
              -- NOTE: without this `instantiatedMVars`, `mkLambdaFVars` may leave around a redex that
              -- leads to more section variables being included than necessary
              instantiateMVarsProfiling val
        let val ← mkLambdaFVars xs val
        if header.type?.isNone && (← getEnv).header.isModule && !(← getEnv).isExporting &&
            !isPrivateName header.declName && header.kind != .example then
          -- If the type of a non-exposed definition was elided, we need to check after the fact
          -- whether it is in fact well-formed.
          withRef header.declId do
          withExporting do
            let type ← instantiateMVars type
            Meta.check type
        if Linter.getLinterValue linter.unusedSectionVars (← Linter.getLinterOptions) && !header.type.hasSorry && !val.hasSorry then
          let unusedVars ← vars.filterMapM fun var => do
            let varDecl ← var.fvarId!.getDecl
            return if sc.includedVars.contains varDecl.userName ||
                header.type.containsFVar var.fvarId! || val.containsFVar var.fvarId! ||
                (← vars.anyM (fun v => return (← v.fvarId!.getType).containsFVar var.fvarId!)) then
              none
            else
              if varDecl.userName.hasMacroScopes && varDecl.binderInfo.isInstImplicit then
                some m!"[{varDecl.type}]"
              else
                some m!"{var}"
          if unusedVars.size > 0 then
            Linter.logLint linter.unusedSectionVars header.ref
              m!"automatically included section variable(s) unused in theorem `{header.declName}`:\
              \n  {MessageData.joinSep unusedVars.toList "\n  "}\
              \nconsider restructuring your `variable` declarations so that the variables are not \
                in scope or explicitly omit them:\
              \n  omit {MessageData.joinSep unusedVars.toList " "} in theorem ..."
        return val
    if let some snap := header.bodySnap? then
      snap.new.resolve <| some {
        diagnostics :=
          (← Language.Snapshot.Diagnostics.ofMessageLog (← Core.getAndEmptyMessageLog))
        moreSnaps := (← Core.getAndEmptySnapshotTasks)
        state
        value := val
      }
    return val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant73a278e79b6fa2a355c3076c40eec8f0cd607c8b68f21e1fa344b56d14e6c3b9.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81f3d84a62a9cfc1ef4502eb8c2e6b69618d9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
