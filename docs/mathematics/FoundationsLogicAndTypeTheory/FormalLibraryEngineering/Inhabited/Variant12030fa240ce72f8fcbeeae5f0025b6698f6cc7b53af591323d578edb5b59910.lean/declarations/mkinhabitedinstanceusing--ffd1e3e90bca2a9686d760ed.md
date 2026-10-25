# mkInhabitedInstanceUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd08ab6707abbad1c46079e7e5a18811e43cb3ad475cde1cba577e4d35c35f26",
  "kind": "def",
  "lexical_name": "mkInhabitedInstanceUsing",
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
  "slug": "mkinhabitedinstanceusing--ffd1e3e90bca2a9686d760ed",
  "source": {
    "blob": "aaf7203d838ba9e1257a0a604ac63041f50fd2b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffd1e3e90bca2a9686d760eda45d88dc9b2dd617f68dc04abfcefe2eea1440ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd08ab6707abbad1c46079e7e5a18811e43cb3ad475cde1cba577e4d35c35f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkInhabitedInstanceUsing (inductiveTypeName : Name) (ctorName : Name) (addHypotheses : Bool) : CommandElabM Bool := do
  match (← liftTermElabM mkInstanceCmd?) with
  | some cmd =>
    elabCommand cmd
    return true
  | none =>
    return false
where
  addLocalInstancesForParamsAux {α} (k : Array Expr → LocalInst2Index → TermElabM α) : List Expr → Nat → Array Expr → LocalInst2Index → TermElabM α
    | [],    _, insts, map => k insts map
    | x::xs, i, insts, map =>
      try
        let instType ← mkAppM `Inhabited #[x]
        check instType
        withLocalDecl (← mkFreshUserName `inst) .instImplicit instType fun inst => do
          trace[Elab.Deriving.inhabited] "adding local instance {instType}"
          addLocalInstancesForParamsAux k xs (i+1) (insts.push inst) (map.insert inst.fvarId! i)
      catch _ =>
        addLocalInstancesForParamsAux k xs (i+1) insts map

  addLocalInstancesForParams {α} (xs : Array Expr) (k : Array Expr → LocalInst2Index → TermElabM α) : TermElabM α := do
    if addHypotheses then
      addLocalInstancesForParamsAux k xs.toList 0 #[] {}
    else
      k #[] {}

  collectUsedLocalsInsts (usedInstIdxs : IndexSet) (localInst2Index : LocalInst2Index) (e : Expr) : IndexSet :=
    if localInst2Index.isEmpty then
      usedInstIdxs
    else
      let visit {ω} : StateRefT IndexSet (ST ω) Unit :=
        e.forEachWhere Expr.isFVar fun e =>
          let fvarId := e.fvarId!
          match localInst2Index.get? fvarId with
          | some idx => modify (·.insert idx)
          | none => pure ()
      runST (fun _ => visit |>.run usedInstIdxs) |>.2

  /-- Create an `instance` command using the constructor `ctorName` with a hypothesis `Inhabited α` when `α` is one of the inductive type parameters
     at position `i` and `i ∈ usedInstIdxs`. -/
  mkInstanceCmdWith (instId : Ident) (usedInstIdxs : IndexSet) (auxFunId : Ident) : TermElabM Syntax := do
    let indVal ← getConstInfoInduct inductiveTypeName
    let mut indArgs := #[]
    let mut binders := #[]
    for i in *...indVal.numParams + indVal.numIndices do
      let arg := mkIdent (← mkFreshUserName `a)
      indArgs := indArgs.push arg
      binders := binders.push <| ← `(bracketedBinderF| { $arg:ident })
      if usedInstIdxs.contains i then
        binders := binders.push <| ← `(bracketedBinderF| [Inhabited $arg:ident ])
    let type ← `(@$(mkCIdent inductiveTypeName):ident $indArgs:ident*)
    `(instance $instId:ident $binders:bracketedBinder* : Inhabited $type := ⟨$auxFunId⟩)

  solveMVarsWithDefault (e : Expr) : TermElabM Unit := do
    let mvarIds ← getMVarsNoDelayed e
    mvarIds.forM fun mvarId => mvarId.withContext do
      unless ← mvarId.isAssigned do
        let type ← mvarId.getType
        withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"synthesizing Inhabited instance for{inlineExprTrailing type}") do
          let val ← mkDefault type
          mvarId.assign val
          trace[Elab.Deriving.inhabited] "value:{inlineExprTrailing val}"

  mkDefaultValue (indVal : InductiveVal) : TermElabM (Expr × Expr × IndexSet) := do
    let us := indVal.levelParams.map Level.param
    forallTelescopeReducing indVal.type fun xs _ =>
    withImplicitBinderInfos xs do
    addLocalInstancesForParams xs[0...indVal.numParams] fun insts localInst2Index => do
      let type := mkAppN (.const inductiveTypeName us) xs
      let val ←
        if isStructure (← getEnv) inductiveTypeName then
          withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"using structure instance elaborator") do
            let stx ← `(structInstDefault| struct_inst_default%)
            withoutErrToSorry <| elabTermAndSynthesize stx type
        else
          withTraceNode `Elab.Deriving.inhabited (fun _ => return m!"using constructor `{.ofConstName ctorName}`") do
            let val := mkAppN (.const ctorName us) xs[0...indVal.numParams]
            let (mvars, _, type') ← forallMetaTelescopeReducing (← inferType val)
            unless ← isDefEq type type' do
              throwError "cannot unify{indentExpr type}\nand type of constructor{indentExpr type'}"
            pure <| mkAppN val mvars
      solveMVarsWithDefault val
      let val ← instantiateMVars val
      if val.hasMVar then
        throwError "default value contains metavariables{inlineExprTrailing val}"
      let fvars := Lean.collectFVars {} val
      let insts' := insts.filter fvars.visitedExpr.contains
      let usedInstIdxs := collectUsedLocalsInsts {} localInst2Index val
      assert! insts'.size == usedInstIdxs.size
      trace[Elab.Deriving.inhabited] "inhabited instance using{inlineExpr val}{if insts'.isEmpty then m!"" else m!"(assuming parameters {insts'} are inhabited)"}"
      let xs' := xs ++ insts'
      let auxType ← mkForallFVars xs' type
      let auxVal ← mkLambdaFVars xs' val
      return (auxType, auxVal, usedInstIdxs)

  mkInstanceCmd? : TermElabM (Option Syntax) :=
    withExporting (isExporting := !isPrivateName ctorName) do
      let ctx ← mkContext ``Inhabited "default" inductiveTypeName
      let auxFunName := (← getCurrNamespace) ++ ctx.auxFunNames[0]!
      let indVal ← getConstInfoInduct inductiveTypeName
      let (auxType, auxVal, usedInstIdxs) ←
        try
          withDeclName auxFunName do mkDefaultValue indVal
        catch e =>
          trace[Elab.Deriving.inhabited] "error: {e.toMessageData}"
          return none
      addDecl <| .defnDecl <| ← mkDefinitionValInferringUnsafe
        (name        := auxFunName)
        (levelParams := indVal.levelParams)
        (type        := auxType)
        (value       := auxVal)
        (hints       := ReducibilityHints.regular (getMaxHeight (← getEnv) auxVal + 1))
      if isMarkedMeta (← getEnv) inductiveTypeName then
        modifyEnv (markMeta · auxFunName)
      compileDecls #[auxFunName]
        (logErrors := !(← read).isNoncomputableSection || isMarkedMeta (← getEnv) auxFunName)
      enableRealizationsForConst auxFunName
      trace[Elab.Deriving.inhabited] "defined {.ofConstName auxFunName}"
      let cmd ← mkInstanceCmdWith (mkIdent ctx.instName) usedInstIdxs (mkCIdent auxFunName)
      trace[Elab.Deriving.inhabited] "\n{cmd}"
      return some cmd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf7203d838ba9e1257a0a604ac63041f50fd2b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
