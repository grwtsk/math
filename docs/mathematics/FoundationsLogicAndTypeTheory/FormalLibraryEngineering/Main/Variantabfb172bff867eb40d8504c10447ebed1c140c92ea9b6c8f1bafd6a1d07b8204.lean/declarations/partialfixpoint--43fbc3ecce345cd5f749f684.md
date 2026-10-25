# partialFixpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fba2088f2355b41f6dd35d0335ec72f5aecf4616faa51571ff0fe3aeda9fc8d",
  "kind": "def",
  "lexical_name": "partialFixpoint",
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
  "slug": "partialfixpoint--43fbc3ecce345cd5f749f684",
  "source": {
    "blob": "23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43fbc3ecce345cd5f749f684fd5182eb4470323f236f471b52684fb2fff25d27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fba2088f2355b41f6dd35d0335ec72f5aecf4616faa51571ff0fe3aeda9fc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def partialFixpoint (docCtx : LocalContext × LocalInstances) (preDefs : Array PreDefinition) : TermElabM Unit := do
  -- We expect all functions in the clique to have `partial_fixpoint`, `inductive_fixpoint` or `coinductive_fixpoint` syntax
  let hints := preDefs.filterMap (·.termination.partialFixpoint?)
  assert! preDefs.size = hints.size
  -- We check if any fixpoints were defined lattice-theoretically
  if hints.any fun x => isLatticeTheoretic x.fixpointType then
    -- If yes, then we expect all of them to be defined using lattice theory
    assert! hints.all fun x => isLatticeTheoretic x.fixpointType

  -- For every function of type `∀ x y, r x y`, an CCPO instance
  -- ∀ x y, CCPO (r x y), but crucially constructed using `instCCPOPi`
  let insts ← preDefs.mapIdxM fun i preDef => withRef hints[i]!.ref do
    lambdaTelescope preDef.value fun xs _body => do
      trace[Elab.definition.partialFixpoint] "preDef.value: {preDef.value}, xs: {xs}, _body: {_body}"
      let type ← instantiateForall preDef.type xs
      let inst ←
        match hints[i]!.fixpointType with
        | .coinductiveFixpoint =>
          forallTelescopeReducing type fun xs e => do
            unless e.isProp do
              throwError "`coinductive_fixpoint` can be only used to define predicates"
            mkInstPiOfInstsForall xs (mkConst ``ReverseImplicationOrder.instCompleteLattice)
        | .inductiveFixpoint =>
          forallTelescopeReducing type fun xs e => do
            unless e.isProp do
              throwError "`inductive_fixpoint` can be only used to define predicates"
            mkInstPiOfInstsForall xs (mkConst ``ImplicationOrder.instCompleteLattice)
        | .partialFixpoint => try
            synthInstance (← mkAppM ``CCPO #[type])
          catch _ =>
            trace[Elab.definition.partialFixpoint] "No CCPO instance found for {preDef.declName}, trying inhabitation"
            let msg := m!"failed to compile definition '{preDef.declName}' using `partial_fixpoint`"
            let w ← mkInhabitantFor msg #[] preDef.type
            let instNonempty ← mkAppM ``Nonempty.intro #[mkAppN w xs]
            let classicalWitness ← mkAppOptM ``Classical.ofNonempty #[none, instNonempty]
            mkAppOptM ``FlatOrder.instCCPO #[none, classicalWitness]
      mkLambdaFVars xs inst

  let declNames := preDefs.map (·.declName)
  let fixedParamPerms ← withoutModifyingEnv do
    preDefs.forM (addAsAxiom ·)
    getFixedParamPerms preDefs
  fixedParamPerms.perms[0]!.forallTelescope preDefs[0]!.type fun fixedArgs => do
    -- Either: ∀ x y, CCPO (rᵢ x y)
    -- Or:     ∀ x y, CompleteLattice (rᵢ x y)
    let insts ← insts.mapIdxM (fixedParamPerms.perms[·]!.instantiateLambda · fixedArgs)
    let types ← preDefs.mapIdxM (fixedParamPerms.perms[·]!.instantiateForall ·.type fixedArgs)

    -- (∀ x y, r₁ x y) ×' (∀ x y, r₂ x y)
    let packedType ← PProdN.pack 0 types

    -- Either: CCPO (∀ x y, rᵢ x y)
    -- Or:     CompleteLattice (∀ x y, rᵢ x y)
    let insts' ← insts.mapM fun inst =>
      lambdaTelescope inst fun xs inst => do
        mkInstPiOfInstsForall xs inst

    -- Either: CCPO ((∀ x y, r₁ x y) ×' (∀ x y, r₂ x y))
    -- Or:     CompleteLattice ((∀ x y, r₁ x y) ×' (∀ x y, r₂ x y))
    let packedInst ← mkPackedPPRodInstance insts'
    -- Order ((∀ x y, r₁ x y) ×' (∀ x y, r₂ x y))
    let packedPartialOrderInst ← toPartialOrder packedInst

    -- Error reporting hook, presenting monotonicity errors in terms of recursive functions
    let failK {α} f (monoThms : Array Name) : MetaM α := do
      unReplaceRecApps preDefs fixedParamPerms fixedArgs f fun t => do
        let extraMsg := if monoThms.isEmpty then m!"" else
          m!"Tried to apply {.andList (monoThms.toList.map (m!"'{.ofConstName ·}'"))}, but failed.\n\
             Possible cause: A missing `{.ofConstName ``MonoBind}` instance.\n\
             Use `set_option trace.Elab.Tactic.monotonicity true` to debug."
        if let some recApp := t.find? hasRecAppSyntax then
          let some syn := getRecAppSyntax? recApp | panic! "getRecAppSyntax? failed"
          withRef syn <|
            throwError "Cannot eliminate recursive call `{syn}` enclosed in{indentExpr t}\n{extraMsg}"
        else
          throwError "Cannot eliminate recursive call in{indentExpr t}\n{extraMsg}"

    -- Adjust the body of each function to take the other functions as a
    -- (packed) parameter
    let Fs ← withoutExporting do preDefs.mapIdxM fun funIdx preDef => do
      let body ← fixedParamPerms.perms[funIdx]!.instantiateLambda preDef.value fixedArgs
      withLocalDeclD (← mkFreshUserName `f) packedType fun f => do
        let body' ← withoutModifyingEnv do
          -- replaceRecApps needs the constants in the env to typecheck things
          preDefs.forM (addAsAxiom ·)
          replaceRecApps declNames fixedParamPerms f body
        mkLambdaFVars #[f] body'

    -- Construct and solve monotonicity goals for each function separately
    -- This way we preserve the user's parameter names as much as possible
    -- and can (later) use the user-specified per-function tactic
    let hmonos ← withoutExporting do preDefs.mapIdxM fun i preDef => do
      let type := types[i]!
      let F := Fs[i]!
      let inst ← toPartialOrder insts'[i]! type
      let goal ← mkAppOptM ``monotone #[packedType, packedPartialOrderInst, type, inst, F]
      if let some term := hints[i]!.term? then
        let hmono ← Term.withSynthesize <| Term.elabTermEnsuringType term goal
        let hmono ← instantiateMVars hmono
        let mvars ← getMVars hmono
        if mvars.isEmpty then
          pure (goal, hmono)
        else
          discard <| Term.logUnassignedUsingErrorInfos mvars
          pure (goal, ← mkSorry goal (synthetic := true))
      else
        let hmono ← mkFreshExprSyntheticOpaqueMVar goal
        prependError m!"Could not prove '{preDef.declName}' to be monotone in its recursive calls:" do
          solveMono failK hmono.mvarId!
        trace[Elab.definition.partialFixpoint] "monotonicity proof for {preDef.declName}: {hmono}"
        pure (goal, ← instantiateMVars hmono)
    let (_, hmono) ← PProdN.genMk mkMonoPProd hmonos

    let packedValue ← mkFixOfMonFun packedType packedInst hmono

    trace[Elab.definition.partialFixpoint] "packedValue: {packedValue}"

    let declName :=
      if preDefs.size = 1 && fixedParamPerms.fixedArePrefix then
        preDefs[0]!.declName
      else
        preDefs[0]!.declName ++ `mutual
    let packedType' ← mkForallFVars fixedArgs packedType
    let packedValue' ← mkLambdaFVars fixedArgs packedValue
    let preDefNonRec := { preDefs[0]! with
      declName := declName
      type := packedType'
      value := packedValue'}

    let preDefsNonrec ← preDefs.mapIdxM fun fidx preDef => do
      forallBoundedTelescope preDef.type fixedParamPerms.perms[fidx]!.size fun params _ => do
        let fixed := fixedParamPerms.perms[fidx]!.pickFixed params
        let varying := fixedParamPerms.perms[fidx]!.pickVarying params
        let us := preDefNonRec.levelParams.map mkLevelParam
        let value := mkConst preDefNonRec.declName us
        let value := mkAppN value fixed
        let value := PProdN.proj preDefs.size fidx packedType value
        let value := mkAppN value varying
        let value ← mkLambdaFVars (etaReduce := true) params value
        pure { preDef with value }

    Mutual.addPreDefsFromUnary docCtx preDefs preDefsNonrec preDefNonRec
    addAndCompilePartialRec docCtx preDefs
    let preDefs ← preDefs.mapM (Mutual.cleanPreDef ·)
    PartialFixpoint.registerEqnsInfo preDefs preDefNonRec.declName fixedParamPerms (hints.map (·.fixpointType))
    Mutual.addPreDefAttributes preDefs

end Lean.Elab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
