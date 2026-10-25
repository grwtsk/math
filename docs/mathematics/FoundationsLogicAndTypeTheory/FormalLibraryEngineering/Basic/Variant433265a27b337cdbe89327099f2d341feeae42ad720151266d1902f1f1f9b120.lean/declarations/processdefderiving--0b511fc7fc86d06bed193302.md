# processDefDeriving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1df86c1bd811118139b12d9755472938d0e103968a466ed79b936fd12be45ba",
  "kind": "def",
  "lexical_name": "processDefDeriving",
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
  "slug": "processdefderiving--0b511fc7fc86d06bed193302",
  "source": {
    "blob": "50791a100c243b57f634b8ee42ff35113d226a34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b511fc7fc86d06bed19330281fd3904a40500436bf651401b0e0f7d8f9a57ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1df86c1bd811118139b12d9755472938d0e103968a466ed79b936fd12be45ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processDefDeriving (view : DerivingClassView) (decl : Expr) (isNoncomputable := false)
    (cmdRef? : Option Syntax := none) : TermElabM Unit := do
  let { cls := classStx, hasExpose := _ /- todo? -/, .. } := view
  let decl ← whnfCore decl
  let .const declName _ := decl.getAppFn
    | throwError "Failed to delta derive instance, expecting a term of the form `C ...` where `C` is a constant, given{indentExpr decl}"
  let exposed := (← getEnv).hasExposedBody declName
  -- When the definition body is private, the deriving handler will need access to the private scope,
  -- and the instance body will automatically be private as well.
  withExporting (isExporting := exposed) do
  let ConstantInfo.defnInfo info ← getConstInfo declName
    | throwError "Failed to delta derive instance, `{.ofConstName declName}` is not a definition."
  let value := info.value.beta decl.getAppArgs
  let (result, preNormValue, instName) : Closure.MkValueTypeClosureResult × Expr × Name ←
    -- Assumption: users intend delta deriving to apply to the body of a definition, even if in the source code
    -- the function is written as a lambda expression.
    -- Furthermore, we don't use `forallTelescope` because users want to derive instances for monads.
    lambdaTelescope value fun xs value => withoutErrToSorry do
      let decl := mkAppN decl xs
      -- Make these local variables inaccessible.
      let lctx ← xs.foldlM (init := ← getLCtx) fun lctx x => do
        pure <| lctx.setUserName x.fvarId! (← mkFreshUserName <| (lctx.find? x.fvarId!).get!.userName)
      withLCtx' lctx do
        let msgLog ← Core.getMessageLog
        Core.resetMessageLog
        try
          -- We need to elaborate the class within this context to ensure metavariables can unify with `xs`.
          let classExpr ← elabTerm classStx none
          synthesizeSyntheticMVars (postpone := .partial)
          if (← MonadLog.hasErrors) then
            throwAbortTerm
          -- We allow `classExpr` to be a pi type, to support giving more hypotheses to the derived instance.
          -- (Possibly `classExpr` is not a type due to being underapplied, but `forallTelescopeReducing` tolerates this.)
          -- We don't reduce because of abbreviations such as `DecidableEq`
          forallTelescope classExpr fun _ classExpr => do
            let result ← mkInst classExpr declName decl value
            -- Save the pre-wrapping value for the noncomputable check below,
            -- since `wrapInstance` may inline noncomputable constants.
            let preNormClosure ← Closure.mkValueTypeClosure result.instType result.instVal (zetaDelta := true)
            -- Compute instance name early so `wrapInstance` can use it for aux def naming.
            let env ← getEnv
            let mut instName := (← getCurrNamespace) ++ (← NameGen.mkBaseNameWithSuffix "inst" preNormClosure.type)
            instName ← liftMacroM <| mkUnusedBaseName instName
            if isPrivateName declName then
              instName := mkPrivateName env instName
            let isMeta := (← read).isMetaSection || isMarkedMeta (← getEnv) declName
            let inst ← if backward.inferInstanceAs.wrap.get (← getOptions) then
              withDeclNameForAuxNaming instName <| withNewMCtxDepth <|
                wrapInstance result.instVal result.instType
                  (logCompileErrors := false)  -- covered by noncomputable check below
                  (isMeta := isMeta)
            else
              pure result.instVal
            let closure ← Closure.mkValueTypeClosure result.instType inst (zetaDelta := true)
            return (closure, preNormClosure.value, instName)
        finally
          Core.setMessageLog (msgLog ++ (← Core.getMessageLog))
  let env ← getEnv
  let isPropType ← isProp result.type
  if isPropType then
    let decl ← mkThmOrUnsafeDef {
      name := instName, levelParams := result.levelParams.toList,
      type := result.type, value := result.value
    }
    addDecl decl
  else
    let hints := ReducibilityHints.regular (getMaxHeight env result.value + 1)
    let decl ← mkDefinitionValInferringUnsafe instName result.levelParams.toList result.type result.value hints
    -- Pre-check: if the instance value depends on noncomputable definitions and the user didn't write
    -- `noncomputable`, give an actionable error with a `Try this:` suggestion.
    unless isNoncomputable || (← read).isNoncomputableSection do
      let noncompRef? := preNormValue.foldConsts none fun n acc =>
        acc <|> if Lean.isNoncomputable (asyncMode := .local) env n then some n else none
      if let some noncompRef := noncompRef? then
        if let some cmdRef := cmdRef? then
          if let some origText := cmdRef.reprint then
            let newText := (origText.replace "deriving instance " "deriving noncomputable instance ").trimAscii
            logInfoAt cmdRef m!"Try this: {newText}"
        throwError "failed to derive instance because it depends on \
          `{.ofConstName noncompRef}`, which is noncomputable"
    let isMeta := (← read).isMetaSection || isMarkedMeta (← getEnv) declName
    if isNoncomputable || (← read).isNoncomputableSection then
      addDecl <| Declaration.defnDecl decl
      modifyEnv (addNoncomputable · instName)
    else
      addAndCompile (Declaration.defnDecl decl) (markMeta := isMeta)
  trace[Elab.Deriving] "Derived instance `{.ofConstName instName}`"
  -- For Prop-typed instances (theorems), skip `instance_reducible` since reducibility hints are
  -- irrelevant for theorems. This matches the behavior of the handwritten `instance` command
  -- (see `MutualDef.lean`).
  if isPropType then
    addInstance instName AttributeKind.global (eval_prio default)
  else
    registerInstance instName AttributeKind.global (eval_prio default)
  addDeclarationRangesFromSyntax instName (← getRef)

end Term

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant433265a27b337cdbe89327099f2d341feeae42ad720151266d1902f1f1f9b120.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50791a100c243b57f634b8ee42ff35113d226a34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
