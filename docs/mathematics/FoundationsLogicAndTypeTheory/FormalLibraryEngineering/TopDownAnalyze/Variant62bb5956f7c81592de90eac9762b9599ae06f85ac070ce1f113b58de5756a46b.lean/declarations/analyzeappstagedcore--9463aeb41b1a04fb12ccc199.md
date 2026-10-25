# analyzeAppStagedCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33d496755cf7b27de473765be159f45d0668f4ab27527610ae8d17c97f6e2d50",
  "kind": "def",
  "lexical_name": "analyzeAppStagedCore",
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
  "slug": "analyzeappstagedcore--9463aeb41b1a04fb12ccc199",
  "source": {
    "blob": "fa3032348404b467279aa24c4c2fc7a19fb93999",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant62bb5956f7c81592de90eac9762b9599ae06f85ac070ce1f113b58de5756a46b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9463aeb41b1a04fb12ccc199e84143b8cd8408a7538b34bda12fb3070a1e4b34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant62bb5956f7c81592de90eac9762b9599ae06f85ac070ce1f113b58de5756a46b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33d496755cf7b27de473765be159f45d0668f4ab27527610ae8d17c97f6e2d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def analyzeAppStagedCore : AnalyzeAppM Unit := do
    collectBottomUps
    checkOutParams
    collectHigherOrders
    hBinOpHeuristic
    collectTrivialBottomUps
    discard <| processPostponed (mayPostpone := true)
    applyFunBinderHeuristic
    analyzeFn
    for i in *...(← read).args.size do analyzeArg i
    maybeSetExplicit

  where
    collectBottomUps := do
      let { args, mvars, bInfos, ..} ← read
      for target in [fun _ => none, fun i => some mvars[i]!] do
        for h : i in *...args.size do
          if bInfos[i]! == BinderInfo.default then
            if ← typeUnknown mvars[i]! <&&> canBottomUp args[i] (target i) then
              tryUnify args[i]! mvars[i]!
              modify fun s => { s with bottomUps := s.bottomUps.set! i true }

    checkOutParams := do
      let { args, mvars, bInfos, ..} ← read
      for h : i in *...args.size do
        if bInfos[i]! == BinderInfo.instImplicit then inspectOutParams args[i] mvars[i]!

    collectHigherOrders := do
      let { args, mvars, bInfos, ..} ← read
      for h : i in *...args.size do
        if !(bInfos[i]! == BinderInfo.implicit || bInfos[i]! == BinderInfo.strictImplicit) then continue
        if !(← isHigherOrder (← inferType args[i])) then continue
        if getPPAnalyzeTrustId (← getOptions) && isIdLike args[i]! then continue

        if getPPAnalyzeTrustKnownFOType2TypeHOFuns (← getOptions) && !(← valUnknown mvars[i]!)
          && (← isType2Type (args[i]!)) && (← isFOLike (args[i]!)) then continue

        tryUnify args[i]! mvars[i]!
        modify fun s => { s with higherOrders := s.higherOrders.set! i true }

    hBinOpHeuristic := do
      let { mvars, ..} ← read
      if ← (pure (isHBinOp (← getExpr)) <&&> (valUnknown mvars[0]! <||> valUnknown mvars[1]!)) then
        tryUnify mvars[0]! mvars[1]!

    collectTrivialBottomUps := do
      -- motivation: prevent levels from printing in
      -- Boo.mk : {α : Type u_1} → {β : Type u_2} → α → β → Boo.{u_1, u_2} α β
      let { args, mvars, bInfos, ..} ← read
      for h : i in *...args.size do
        if bInfos[i]! == BinderInfo.default then
          if ← valUnknown mvars[i]! <&&> isTrivialBottomUp args[i] then
            tryUnify args[i]! mvars[i]!
            modify fun s => { s with bottomUps := s.bottomUps.set! i true }

    applyFunBinderHeuristic := do
      let { args, mvars, bInfos, .. } ← read

      let rec core (argIdx : Nat) (mvarType : Expr) : AnalyzeAppM Bool := do
        match ← getExpr, mvarType with
        | Expr.lam .., Expr.forallE _ t b .. =>
          let mut annotated := false
          for i in *...argIdx do
            if ← pure (bInfos[i]! == BinderInfo.implicit) <&&> valUnknown mvars[i]! <&&> withNewMCtxDepth (checkpointDefEq t mvars[i]!) then
              annotateBool `pp.funBinderTypes
              tryUnify args[i]! mvars[i]!
              -- Note: currently we always analyze the lambda binding domains in `analyzeLam`
              -- (so we don't need to analyze it again here)
              annotated := true
              break
          let annotatedBody ← withBindingBody Name.anonymous (core argIdx b)
          return annotated || annotatedBody

        | _, _ => return false

      for i in *...args.size do
        if bInfos[i]! == BinderInfo.default then
          let b ← withNaryArg i (core i (← inferType mvars[i]!))
          if b then modify fun s => { s with funBinders := s.funBinders.set! i true }

    analyzeFn := do
      -- Now, if this is the first staging, analyze the n-ary function without expected type
      let {f, fType, forceRegularApp ..} ← read
      if !f.isApp then withKnowing false (forceRegularApp || !(← hasLevelMVarAtCurrDepth (← instantiateMVars fType))) $ withNaryFn (analyze (parentIsApp := true))

    annotateNamedArg (n : Name) : AnalyzeAppM Unit := do
      annotateBool `pp.analysis.namedArg
      modify fun s => { s with namedArgs := s.namedArgs.push n }

    analyzeArg (i : Nat) := do
      let { f, args, mvars, bInfos, forceRegularApp ..} ← read
      let { bottomUps, higherOrders, funBinders, ..} ← get
      let arg := args[i]!
      let argType ← inferType arg

      let processNaturalImplicit : AnalyzeAppM Unit := do
        if (← valUnknown mvars[i]! <||> pure higherOrders[i]!) && !forceRegularApp then
          annotateNamedArg (← mvarName mvars[i]!)
          modify fun s => { s with provideds := s.provideds.set! i true }
        else
          annotateBool `pp.analysis.skip

      withNaryArg (f.getAppNumArgs + i) do
        withTheReader Context (fun ctx => { ctx with inBottomUp := ctx.inBottomUp || bottomUps[i]! }) do

          match bInfos[i]! with
          | BinderInfo.default =>
            if ← pure (getPPAnalyzeExplicitHoles (← getOptions)) <&&> pure !(← valUnknown mvars[i]!) <&&> pure !(← readThe Context).inBottomUp <&&> pure !(← isFunLike arg) <&&> pure !funBinders[i]! <&&> checkpointDefEq mvars[i]! arg then
              annotateBool `pp.analysis.hole
            else
              modify fun s => { s with provideds := s.provideds.set! i true }

          | BinderInfo.implicit => processNaturalImplicit
          | BinderInfo.strictImplicit => processNaturalImplicit

          | BinderInfo.instImplicit =>
            -- Note: apparently checking valUnknown here is not sound, because the elaborator
            -- will not happily assign instImplicits that it cannot synthesize
            let mut provided := true
            if !getPPInstances (← getOptions) then
              annotateBool `pp.analysis.skip
              provided := false
            else if getPPAnalyzeCheckInstances (← getOptions) then
              let instResult ← try trySynthInstance argType catch _ => pure LOption.undef
              match instResult with
              | LOption.some inst =>
                if ← checkpointDefEq inst arg then annotateBool `pp.analysis.skip; provided := false
                else annotateNamedArg (← mvarName mvars[i]!)
              | _                 => annotateNamedArg (← mvarName mvars[i]!)
            else annotateBool `pp.analysis.skip; provided := false
            modify fun s => { s with provideds := s.provideds.set! i provided }
          if (← get).provideds[i]! then withKnowing (!(← typeUnknown mvars[i]!)) true analyze
          tryUnify mvars[i]! args[i]!

    maybeSetExplicit := do
      let { f, args, bInfos, ..} ← read
      if (← get).namedArgs.any nameNotRoundtrippable then
        annotateBool `pp.explicit
        for i in *...args.size do
          if !(← get).provideds[i]! then
            withNaryArg (f.getAppNumArgs + i) do annotateBool `pp.analysis.hole
          if bInfos[i]! == BinderInfo.instImplicit && getPPInstanceTypes (← getOptions) then
            withType (withKnowing true false analyze)

end

end TopDownAnalyze

open TopDownAnalyze SubExpr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant62bb5956f7c81592de90eac9762b9599ae06f85ac070ce1f113b58de5756a46b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant62bb5956f7c81592de90eac9762b9599ae06f85ac070ce1f113b58de5756a46b.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa3032348404b467279aa24c4c2fc7a19fb93999` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
