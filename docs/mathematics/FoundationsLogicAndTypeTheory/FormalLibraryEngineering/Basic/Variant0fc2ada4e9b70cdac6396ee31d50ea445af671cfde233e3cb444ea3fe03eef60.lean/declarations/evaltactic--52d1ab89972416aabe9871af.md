# evalTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f557f78d3ff3ee745de353b18b51be509d276163832179f9d1d5683755f1c936",
  "kind": "def",
  "lexical_name": "evalTactic",
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
  "slug": "evaltactic--52d1ab89972416aabe9871af",
  "source": {
    "blob": "3b69aa6dd6a80a12d33ee2bea5b580b33e6caa05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52d1ab89972416aabe9871af8ee03d9fe86583198afd7016174e42abd79f86bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f557f78d3ff3ee745de353b18b51be509d276163832179f9d1d5683755f1c936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalTactic (stx : Syntax) : TacticM Unit := do
  checkSystem "tactic execution"
  profileitM Exception "tactic execution" (decl := stx.getKind) (← getOptions) <|
  withRef stx <| withIncRecDepth <| withFreshMacroScope <| match stx with
    | .node _ k _    =>
      if k == nullKind then
        -- Macro writers create a sequence of tactics `t₁ ... tₙ` using `mkNullNode #[t₁, ..., tₙ]`
        -- We could support incrementality here by allocating `n` new snapshot bundles but the
        -- practical value is not clear
        -- NOTE: `withTacticInfoContext` is used to preserve the invariant of `elabTactic` producing
        -- exactly one info tree, which is necessary for using `getInfoTreeWithContext`.
        Term.withoutTacticIncrementality true <| withTacticInfoContext stx do
          stx.getArgs.forM evalTactic
      else withTraceNode `Elab.step (fun _ => return stx) (tag := stx.getKind.toString) do
        checkDeprecatedSyntax stx (← readThe Term.Context).macroStack
        let evalFns := tacticElabAttribute.getEntries (← getEnv) stx.getKind
        let macros  := macroAttribute.getEntries (← getEnv) stx.getKind
        if evalFns.isEmpty && macros.isEmpty then
          throwErrorAt stx "Tactic `{stx.getKind}` has not been implemented"
        let s ← Tactic.saveState
        expandEval s macros evalFns #[]
    | .missing => pure ()
    | _ => throwError m!"Unexpected tactic{indentD stx}"
where
    throwExs (failures : Array EvalTacticFailure) : TacticM Unit := do
     if h : 0 < failures.size  then
       -- For macros we want to report the error from the first registered / last tried rule (#3770)
       let fail := failures[failures.size - 1]
       fail.state.restore (restoreInfo := true)
       throw fail.exception -- (*)
     else
       throwErrorAt stx "Unexpected syntax{indentD stx}"

    @[inline] handleEx (declName : Name) (s : SavedState) (failures : Array EvalTacticFailure) (ex : Exception) (k : Array EvalTacticFailure → TacticM Unit) := do
      let noFallback := noFallbackAttr.hasTag (← getEnv) declName
      match ex with
      | .error .. =>
        if noFallback then throw ex
        trace[Elab.tactic.backtrack] ex.toMessageData
        let failures := failures.push ⟨ex, ← Tactic.saveState⟩
        s.restore (restoreInfo := true); k failures
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then
          -- We do not store `unsupportedSyntaxExceptionId`, see throwExs
          -- `unsupportedSyntax` is the elaborator declining the syntax before any commit, so
          -- `[no_fallback]` does not apply here.
          s.restore (restoreInfo := true); k failures
        else if id == abortTacticExceptionId then
          if noFallback then throw ex
          for msg in (← Core.getMessageLog).toList do
            trace[Elab.tactic.backtrack] msg.data
          let failures := failures.push ⟨ex, ← Tactic.saveState⟩
          s.restore (restoreInfo := true); k failures
        else
          throw ex -- (*)

    expandEval (s : SavedState) (macros : List _) (evalFns : List _) (failures : Array EvalTacticFailure) : TacticM Unit :=
      match macros with
      | [] => eval s evalFns failures
      | m :: ms =>
        try
          withReader ({ · with elaborator := m.declName }) do
            withTacticInfoContext stx do
              let stx' ← adaptMacro m.value stx
              recordExtraModUseFromDecl (isMeta := true) m.declName
              -- Support incrementality; see also Note [Incremental Macros]
              if evalFns.isEmpty && ms.isEmpty then  -- Only try incrementality in one branch
                if let some snap := (← readThe Term.Context).tacSnap? then
                  let nextMacroScope := (← getThe Core.State).nextMacroScope
                  let traceState ← getTraceState
                  let old? := do
                    let old ← snap.old?
                    -- If the kind is equal, we can assume the old version was a macro as well
                    guard <| old.stx.isOfKind stx.getKind
                    -- (access to `raw` is fine here as there should be no transformation in this
                    -- case anyway, see `resolve` below)
                    let state ← old.val.get.transformed.raw.finished.get.state?
                    guard <| state.term.meta.core.nextMacroScope == nextMacroScope
                    -- check absence of traces; see Note [Incremental Macros]
                    guard <| state.term.meta.core.traceState.traces.size == 0
                    guard <| traceState.traces.size == 0
                    return old.val.get
                  if snap.old?.isSome && old?.isNone then
                    snap.old?.forM (·.val.cancelRec)
                  let promise ← IO.Promise.new
                  -- Store new unfolding in the snapshot tree
                  let cancelTk? := (← readThe Core.Context).cancelTk?
                  snap.new.resolve {
                    transformed.raw := {
                      stx := stx'
                      diagnostics := .empty
                      inner? := none
                      finished := .finished stx' {
                        diagnostics := .empty
                        state? := (← Tactic.saveState)
                        moreSnaps := #[]
                      }
                    }
                    next := #[{ stx? := stx', task := promise.resultD default, cancelTk? }]
                  }
                  -- Update `tacSnap?` to old unfolding
                  withTheReader Term.Context ({ · with tacSnap? := some {
                    new := promise
                    old? := do
                      let old ← old?
                      -- (access to `raw`: as above)
                      return ⟨old.transformed.raw.stx, (← old.next[0]?)⟩
                  } }) do
                    evalTactic stx'
                  return
              evalTactic stx'
        catch ex => handleEx m.declName s failures ex (expandEval s ms evalFns)

    eval (s : SavedState) (evalFns : List _) (failures : Array EvalTacticFailure) : TacticM Unit := do
      match evalFns with
      | []              => throwExs failures
      | evalFn::evalFns => do
        try
          -- prevent unsupported tactics from accidentally accessing `Term.Context.tacSnap?`
          Term.withoutTacticIncrementality (!(← isIncrementalElab evalFn.declName)) do
          withReader ({ · with elaborator := evalFn.declName }) do
          withTacticInfoContext stx do
            evalFn.value stx
            if !evalFn.isBuiltin then
              recordExtraModUseFromDecl (isMeta := true) evalFn.declName
        catch ex => handleEx evalFn.declName s failures ex (eval s evalFns)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0fc2ada4e9b70cdac6396ee31d50ea445af671cfde233e3cb444ea3fe03eef60.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b69aa6dd6a80a12d33ee2bea5b580b33e6caa05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
