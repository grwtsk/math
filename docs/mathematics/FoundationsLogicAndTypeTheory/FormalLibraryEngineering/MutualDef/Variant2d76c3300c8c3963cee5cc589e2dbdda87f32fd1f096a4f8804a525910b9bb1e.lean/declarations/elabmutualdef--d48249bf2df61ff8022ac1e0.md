# elabMutualDef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b5883b81f6eb27edb85ede31d5f609680cf9585a4f9cfb14185e0d057618318",
  "kind": "def",
  "lexical_name": "elabMutualDef",
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
  "slug": "elabmutualdef--d48249bf2df61ff8022ac1e0",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1479,
    "line": 1203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d48249bf2df61ff8022ac1e0ee4d0c396c3f9118106d0c2b8866cd9070fdd13a",
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

Occurrence: `declaration:9b5883b81f6eb27edb85ede31d5f609680cf9585a4f9cfb14185e0d057618318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1203–1479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMutualDef (vars : Array Expr) (sc : Command.Scope) (views : Array DefView) : TermElabM Unit :=
  if isExample views then
    withoutModifyingEnv do
      -- save correct environment in info tree
      withSaveInfoContext do
        try
          go
        finally
          reportDiag -- else wouldn't survive `withoutModifyingEnv`
  else
    go
where
  go := do
    let bodyPromises ← views.mapM fun _ => IO.Promise.new
    let tacPromises ← views.mapM fun _ => IO.Promise.new
    let expandedDeclIds ← views.mapM fun view => withRef view.headerRef do
      Term.expandDeclId (← getCurrNamespace) (← getLevelNames) view.declId view.modifiers
    for view in views, declId in expandedDeclIds do
      -- Add tags early so elaboration can access them
      match view.modifiers.computeKind with
      | .meta          => modifyEnv (markMeta · declId.declName)
      | .noncomputable => modifyEnv (addNoncomputable · declId.declName)
      | .regular       => pure ()
    withExporting (isExporting :=
      -- `example`s are always private unless explicitly marked `public`
      -- (it would be more consistent to give them a private name as well but that exposes that
      -- encoded name in e.g. kernel errors where it's hard to replace it)
      views.any (fun view => view.kind != .example || view.modifiers.isPublic) &&
      expandedDeclIds.any (!isPrivateName ·.declName)) do
    withSaveInfoContext do  -- save adjusted env in info tree
    let headers ← elabHeaders views expandedDeclIds bodyPromises tacPromises
    let headers ← levelMVarToParamHeaders views headers

    -- Now that we have elaborated types, default data instances to `[instance_reducible]`. This
    -- should happen before attribute application as `[instance]` will check for it.
    for header in headers do
      if !header.modifiers.anyAttr (·.name matches `reducible | `instance_reducible | `implicit_reducible | `irreducible) then
        if header.kind == .instance then
          if !(← isProp header.type) then
            setReducibilityStatus header.declName .instanceReducible

    if let (#[view], #[declId]) := (views, expandedDeclIds) then
      if Elab.async.get (← getOptions) && view.kind.isTheorem &&
          !deprecated.oldSectionVars.get (← getOptions) &&
          -- holes in theorem types is not a fatal error, but it does make parallelism impossible
          !headers[0]!.type.hasMVar then
        elabAsync headers[0]! view declId
      else elabSync headers
    else elabSync headers

    -- Warn about class-typed `def`s that aren't marked with a reducibility attribute.
    -- This check runs after elaboration so that attributes applied by other attributes
    -- (e.g. `to_additive (attr := implicit_reducible)`) are accounted for.
    for header in headers do
      if header.kind == .def then
        if warn.classDefReducibility.get (← getOptions) &&
            (← isClass? header.type).isSome /-TODO-/ &&
            !header.type.getForallBody.getAppFn.constName? matches ``Decidable | ``DecidableEq | ``Setoid then
          let status ← getReducibilityStatus header.declName
          if status == .semireducible then do
            logWarning m!"Definition `{header.declName}` of class type is semireducible. \
Most type class instances should be instance-reducible, so consider marking this
definition with `@[instance_reducible]`. If it is intentionally semireducible, \
this warning can be disabled with `set_option warn.classDefReducibility false`."
    for view in views, declId in expandedDeclIds do
      -- NOTE: this should be the full `ref`, and thus needs to be done after any snapshotting
      -- that depends only on a part of the ref
      addDeclarationRangesForBuiltin declId.declName view.modifiers.stx view.ref
  elabSync headers := do
    finishElab headers
    processDeriving headers
  elabAsync header view declId := do
    assert! view.kind.isTheorem
    let env ← getEnv
    let async ← env.addConstAsync declId.declName .thm
      (exportedKind? :=
        guard (!isPrivateName declId.declName || (← ResolveName.backward.privateInPublic.getM)) *>
        some .axiom)
    setEnv async.mainEnv

    -- TODO: parallelize header elaboration as well? Would have to refactor auto implicits catch,
    -- makes `@[simp]` etc harder?

    -- commit signature; take level params from type only
    withHeaderSecVars vars sc #[header] fun vars => do
      let type ← mkForallFVars vars header.type
      let allUserLevelNames := getAllUserLevelNames #[header]
      let type ← withLevelNames allUserLevelNames <| levelMVarToParam type
      -- NOTE: instantiation must happen after `levelMVarToParam`, otherwise there can be
      -- normalization differences to the corresponding code in `finishElab`
      let type ← instantiateMVars type

      -- in the case of theorems, the decl level params are those of the header
      let mut s : CollectLevelParams.State := {}
      s := collectLevelParams s type
      let scopeLevelNames ← getLevelNames
      let levelParams ← IO.ofExcept <| sortDeclLevelParams scopeLevelNames allUserLevelNames s.params

      let type ← if cleanup.letToHave.get (← getOptions) then
        withRef header.declId <| Meta.letToHave type
      else
        pure type

      async.commitSignature { name := header.declName, levelParams, type }

    -- attributes should be applied on the main thread; see below
    -- save before clearing so the deprecation-silencing wrap below can still see `@[deprecated]`
    let oldAttrs := header.modifiers.attrs
    let header := { header with modifiers.attrs := #[] }

    -- insert a hole for the proof info trees in the main info tree
    let infoHole ← mkFreshMVarId
    let infoPromise ← IO.Promise.new
    modifyInfoState fun s => { s with
      trees := s.trees.push <| .hole infoHole
      lazyAssignment := s.lazyAssignment.insert infoHole <| infoPromise.resultD default
    }

    -- now start new thread for body elaboration, then nested thread for kernel checking
    let cancelTk ← IO.CancelToken.new
    let act ←
      -- NOTE: We must set the decl name before going async to ensure that the `auxDeclNGen` is
      -- forked correctly.
      withDeprecationContextFromAttrs oldAttrs do
      withDeclName header.declName do
      wrapAsyncAsSnapshot (desc := s!"elaborating proof of {declId.declName}")
        (cancelTk? := cancelTk) fun _ => do profileitM Exception "elaboration" (← getOptions) do
      setEnv async.asyncEnv
      try
        finishElab #[header]
      finally
        reportDiag
        -- must introduce node to fill `infoHole` with multiple info trees
        let info := .ofCustomInfo { stx := header.value, value := .mk (α := AsyncBodyInfo) {} }
        let ctx ← CommandContextInfo.save
        infoPromise.resolve <| .context (.commandCtx ctx) <| .node info (← getInfoTrees)
      async.commitConst (← getEnv)
      processDeriving #[header]
      async.commitCheckEnv (← getEnv)
    Core.logSnapshotTask { stx? := none, task := (← BaseIO.asTask (act ())), cancelTk? := cancelTk }
    -- Also add explicit snapshot task for showing progress of kernel checking; `addDecl` does not
    -- do this by default
    Core.logSnapshotTask { stx? := none, cancelTk? := none, task := (← getEnv).checked.map fun _ =>
      default
    }
    withDeprecationContextFromAttrs view.modifiers.attrs do
      applyAttributesAt declId.declName view.modifiers.attrs .afterTypeChecking
      applyAttributesAt declId.declName view.modifiers.attrs .afterCompilation
  finishElab headers := withFunLocalDecls headers fun funFVars => do
    let env ← getEnv
    let inExposeSection := sc.attrs.any (· matches `(attrInstance| expose))
    -- Determine whether each header would be exposed without any explicit `@[expose]`/`@[no_expose]`
    let wouldBeExposed ← headers.mapM fun header => do
      if header.kind == .abbrev then return true
      if header.kind == .instance then
        if !(← isProp header.type) then return true
      if header.kind == .def && (!header.modifiers.isMeta || sc.isMeta) && inExposeSection then return true
      return false
    let hasExpose (header : DefViewElabHeader) := header.modifiers.attrs.any (·.name == `expose)
    let hasNoExpose (header : DefViewElabHeader) := header.modifiers.attrs.any (·.name == `no_expose)

    let opts ← getOptions
    let warnExposeOnPrivate := warn.exposeOnPrivate.get opts
    let warnRedundantExpose := warn.redundantExpose.get opts
    for header in headers, exposed in wouldBeExposed do
      for attr in header.modifiers.attrs do
        -- skip macro-generated attributes
        unless attr.stx.getHeadInfo matches .original .. do continue
        match attr.name with
        | `expose =>
          if warnExposeOnPrivate && env.header.isModule && !env.isExporting then
            logWarningAt attr.stx m!"Redundant `[expose]` attribute, it is meaningful on public \
              definitions only"
          if warnRedundantExpose then
            if !env.header.isModule then
              logWarningAt attr.stx m!"`@[expose]` has no effect outside a `module` file"
            else if env.isExporting && exposed then
              logWarningAt attr.stx m!"`@[expose]` has no effect; this declaration would be exposed by default"
        | `no_expose =>
          if warnRedundantExpose then
            if !env.header.isModule then
              logWarningAt attr.stx m!"`@[no_expose]` has no effect outside a `module` file"
            else if env.isExporting && !exposed && !hasExpose header then
              logWarningAt attr.stx m!"`@[no_expose]` has no effect; this declaration would not \
                be exposed by default"
        | _ => pure ()

    withoutExporting (when :=
      (← (headers.zip wouldBeExposed).allM (fun (header, exposed) => do
        if hasNoExpose header then return true
        if exposed || hasExpose header then return false
        return true))) do

    -- Never export private decls from theorem bodies to make sure they stay irrelevant for rebuilds
    withOptions (fun opts =>
      if headers.any (·.kind.isTheorem) then ResolveName.backward.privateInPublic.set opts false else opts) do
    withSaveInfoContext do  -- save adjusted env in info tree
    let headers := headers.map fun header =>
      { header with modifiers.attrs := header.modifiers.attrs.filter (!·.name ∈ [`expose, `no_expose]) }
    let values ← try
      let values ← elabFunValues headers vars sc
      Term.synthesizeSyntheticMVarsNoPostponing
      values.mapM (instantiateMVarsProfiling ·)
    catch ex =>
      logException ex
      headers.mapM fun header => withRef header.declId <| mkLabeledSorry header.type (synthetic := true) (unique := true)
    let headers ← headers.mapM instantiateMVarsAtHeader
    let letRecsToLift ← getLetRecsToLift
    let letRecsToLift ← letRecsToLift.mapM instantiateMVarsAtLetRecToLift
    checkLetRecsToLiftTypes funFVars letRecsToLift
    -- At this point, all metavariables except for letrec auxiliary variables and `?hole`s
    -- introduced by the user should be assigned.
    -- Hence we solve the remaining ones using `where ... finally`.
    let exprsWithHoles := letRecsToLift.foldl (init := Std.HashMap.emptyWithCapacity headers.size) fun acc l =>
      let ewh : ExprWithHoles := { ref := l.ref, expr := l.val }
      if let some parentName := l.parentName? then
        acc.alter parentName (fun | none => some #[ewh] | some ewhs => some (ewhs.push ewh))
      else -- no parentName => no holes filled
        acc
    for header in headers, value in values do
      let whereFinally ← declValToWhereFinally header.value
      let exprsWithHoles := (exprsWithHoles.getD header.declName #[]).push { ref := header.ref, expr := value }
      fillHolesFromWhereFinally header.declName exprsWithHoles whereFinally header.modifiers.attrs
    -- Compilation should take place without unused section vars, but all section vars should be
    -- present when elaborating documentation.
    let docCtx := (← getLCtx, ← getLocalInstances)
    (if headers.all (·.kind.isTheorem) && !deprecated.oldSectionVars.get (← getOptions) then
       -- do not repeat checks already done in `elabFunValues`
       withHeaderSecVars (check := false) vars sc headers
     else withUsed vars headers values letRecsToLift) fun vars => do
      let preDefs ← MutualClosure.main vars headers funFVars values letRecsToLift
      -- If there are any unassigned mvars left, they are errors. Check in `addPreDefinitions`.
      -- Be aware that delayed assignments `?m := fun ... f => ?n ... f` in a let-recs `f` are even
      -- ill-scoped after lifting `f` to a constant! Any attempt to interact with `?m` likely results
      -- in `unknown free variable '...'` errors.
      checkAllDeclNamesDistinct preDefs
      for preDef in preDefs do
        trace[Elab.definition] "{preDef.declName} : {preDef.type} :=\n{preDef.value}"
      let allUserLevelNames := getAllUserLevelNames headers
      let preDefs ← withLevelNames allUserLevelNames <| levelMVarToParamTypesPreDecls preDefs
      let preDefs ← instantiateMVarsAtPreDecls preDefs
      let preDefs ← shareCommonPreDefs preDefs
      let scopeLevelNames ← getLevelNames
      let preDefs ← fixLevelParams preDefs scopeLevelNames allUserLevelNames
      for preDef in preDefs do
        trace[Elab.definition] "after eraseAuxDiscr, {preDef.declName} : {preDef.type} :=\n{preDef.value}"
      addPreDefinitions docCtx preDefs
    for view in views, funFVar in funFVars do
      addLocalVarInfo view.declId funFVar

  processDeriving (headers : Array DefViewElabHeader) := do
    for header in headers, view in views do
      if let some classStxs := view.deriving? then
        for classStx in classStxs do
          let view ← DerivingClassView.ofSyntax ⟨classStx⟩
          withRef classStx <| withLogging <| withLCtx {} {} do
            /-
            Assumption: users intend delta deriving to apply to the body of a definition, even if in the source code
            the function is written as a lambda expression.
            Furthermore, we don't use `forallTelescope` because users want to derive instances for monads.

            We enter the local context of this body, which is where `classStx` will be elaborated.

            Small complication: we don't know the correlation between the section variables
            and the parameters in the declaration, so for now we do not allow `classStx`
            to refer to section variables that were not included.
            -/
            let info ← withoutExporting <| getConstInfo header.declName
            lambdaTelescope info.value! fun xs _ => do
              let decl := mkAppN (.const header.declName (info.levelParams.map mkLevelParam)) xs
              processDefDeriving view decl

/--
Logs a snapshot task that waits for the entire snapshot tree in `defsParsedSnap` and then logs a
`goalsAccomplished` silent message for theorems and `Prop`-typed examples if the entire mutual block
is error-free and contains no syntactical `sorry`s.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L1203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
