# elabHeaders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59df63e4569ef4e4214123692046ae7fbd7296654b7e61c413cd20aaa7057577",
  "kind": "def",
  "lexical_name": "elabHeaders",
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
  "slug": "elabheaders--8d0bf03a63e8fa7cdda29d48",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d0bf03a63e8fa7cdda29d48dec5ca7abd12213e772a8ef2e766c8888a072c7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59df63e4569ef4e4214123692046ae7fbd7296654b7e61c413cd20aaa7057577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabHeaders (views : Array DefView) (expandedDeclIds : Array ExpandDeclIdResult)
    (bodyPromises : Array (IO.Promise (Option BodyProcessedSnapshot)))
    (tacPromises : Array (IO.Promise Tactic.TacticParsedSnapshot)) :
    TermElabM (Array DefViewElabHeader) := do
  withAutoBoundImplicitForbiddenPred (fun n => expandedDeclIds.any (·.shortName == n)) do
    let mut headers := #[]
    -- Can we reuse the result for a body? For starters, all headers (even those below the body)
    -- must be reusable
    let mut reuseBody := views.all (·.headerSnap?.any (·.old?.isSome))
    for view in views, ⟨shortDeclName, declName, levelNames, docString?⟩ in expandedDeclIds,
        tacPromise in tacPromises, bodyPromise in bodyPromises do
      let mut reusableResult? := none
      let mut oldBodySnap? := none
      let mut oldTacSnap? := none
      if let some snap := view.headerSnap? then
        -- by the `DefView.headerSnap?` invariant, safe to reuse results at this point, so let's
        -- wait for them!
        if let some old := snap.old?.bind (·.val.get) then
          -- Transition from `DefView.snap?` to `DefViewElabHeader.tacSnap?` invariant: if all
          -- headers and all previous bodies could be reused, then the state at the *start* of the
          -- top-level tactic block (if any) is unchanged
          let reuseTac := reuseBody
          -- Transition from `DefView.snap?` to `DefViewElabHeader.bodySnap?` invariant: if all
          -- headers and all previous bodies could be reused and this body syntax is unchanged, then
          -- we can reuse the result
          reuseBody := reuseBody &&
            view.value.eqWithInfoAndTraceReuse (← getOptions) old.bodyStx
          -- no syntax guard to store, we already did the necessary checks
          oldBodySnap? := guard reuseBody *> pure ⟨.missing, old.bodySnap⟩
          if oldBodySnap?.isNone then
            -- NOTE: this will eagerly cancel async tasks not associated with an inner snapshot, most
            -- importantly kernel checking and compilation of the top-level declaration
            old.bodySnap.cancelRec
          oldTacSnap? := do
              guard reuseTac
              some ⟨(← old.tacStx?), (← old.tacSnap?)⟩
          let newHeader : DefViewElabHeader := { view, old.view with
            bodySnap? := none, tacSnap? := none }  -- filled below
          reusableResult? := some (newHeader, old.state)
        else
          reuseBody := false

      let mut (newHeader, newState) ←
        withTraceNode `Elab.definition.header (fun _ => pure declName) do
        withRestoreOrSaveFull reusableResult? none do
        withReuseContext view.headerRef do
        withDeprecationContextFromAttrs view.modifiers.attrs do
        applyAttributesAt declName view.modifiers.attrs .beforeElaboration
        withDeclName declName <| withAutoBoundImplicit <| withLevelNames levelNames <|
          elabBindersEx view.binders.getArgs fun xs => do
            let refForElabFunType := view.value
            let mut type ← match view.type? with
              | some typeStx =>
                let type ← elabType typeStx
                registerFailedToInferDefTypeInfo type view
                pure type
              | none =>
                let hole := mkHole refForElabFunType
                let type ← elabType hole
                trace[Elab.definition] ">> type: {type}\n{type.mvarId!}"
                registerFailedToInferDefTypeInfo type view
                pure type
            Term.synthesizeSyntheticMVarsNoPostponing
            if view.isInstance then
              type ← cleanupOfNat type
            let (binderIds, xs) := xs.unzip
            -- TODO: add forbidden predicate using `shortDeclName` from `views`
            let xs ← addAutoBoundImplicits xs (view.declId.getTailPos? (canonicalOnly := true))
            type ← mkForallFVars' xs type
            type ← instantiateMVarsProfiling type
            let levelNames ← getLevelNames
            if view.type?.isSome then
              let pendingMVarIds ← getMVars type
              discard <| logUnassignedUsingErrorInfos pendingMVarIds <|
                getPendingMVarErrorMessage views
            let newHeader : DefViewElabHeaderData := {
              declName, shortDeclName, type, levelNames, binderIds
              numParams := xs.size
            }
            let newHeader : DefViewElabHeader := { view, newHeader with
              bodySnap? := none, tacSnap? := none }
            check headers newHeader
            return newHeader
      if let some snap := view.headerSnap? then
        let (tacStx?, newTacTask?) ← mkTacTask view.value tacPromise
        let cancelTk? := (← readThe Core.Context).cancelTk?
        let bodySnap := {
          stx? := view.value
          reportingRange := .ofOptionInheriting <|
            if newTacTask?.isSome then
              -- Only use first line of body as range when we have incremental tactics as otherwise we
              -- would cover their progress
              view.ref.getPos?.map fun pos => ⟨pos, pos⟩
            else
              getBodyTerm? view.value |>.getD view.value |>.getRange?
          task := bodyPromise.resultD default
          -- We should not cancel the entire body early if we have tactics
          cancelTk? := guard newTacTask?.isNone *> cancelTk?
        }
        snap.new.resolve <| some {
          diagnostics :=
            (← Language.Snapshot.Diagnostics.ofMessageLog (← Core.getAndEmptyMessageLog))
          moreSnaps := (← Core.getAndEmptySnapshotTasks)
          view := newHeader.toDefViewElabHeaderData
          state := newState
          tacStx?
          tacSnap? := newTacTask?
          bodyStx := view.value
          bodySnap
        }
        newHeader := { newHeader with
          -- We should only forward the promise if we are actually waiting on the
          -- corresponding task; otherwise, diagnostics assigned to it will be lost
          tacSnap? := guard newTacTask?.isSome *> some { old? := oldTacSnap?, new := tacPromise }
          bodySnap? := some { old? := oldBodySnap?, new := bodyPromise }
        }
      headers := headers.push newHeader
    return headers
where
  getBodyTerm? (stx : Syntax) : Option Syntax := do
    -- TODO: does not work with partial syntax
    --| `(Parser.Command.declVal| := $body $_suffix:suffix) => body
    guard (stx.isOfKind ``Parser.Command.declValSimple)
    let body := stx[1]
    let whereDeclsOpt := stx[3]
    -- We currently disable incrementality in presence of `where` as we would have to handle the
    -- generated leading `let rec` specially
    guard whereDeclsOpt.isNone
    return body

  /--
  If `body` allows for incremental tactic reporting and reuse, creates a snapshot task out of the
  passed promise with appropriate range, otherwise immediately resolves the promise to a dummy
  value.
  -/
  mkTacTask (body : Syntax) (tacPromise : IO.Promise Tactic.TacticParsedSnapshot) :
      TermElabM (Option Syntax × Option (Language.SnapshotTask Tactic.TacticParsedSnapshot))
   := do
    if let some e := getBodyTerm? body then
      if let `(by $tacs*) := e then
        let cancelTk? := (← readThe Core.Context).cancelTk?
        return (e, some { stx? := mkNullNode tacs, task := tacPromise.resultD default, cancelTk? })
    tacPromise.resolve default
    return (none, none)

/--
  Create auxiliary local declarations `fs` for the given headers using their `shortDeclName` and `type`, given headers, and execute `k fs`.
  The new free variables are tagged as `auxDecl`.
  Remark: `fs.size = headers.size`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
