# defEvalConfigItem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c553bd2cc2bb8bc59b7f3db41715b93be44b8eea6c491c795d3a3573ebb98171",
  "kind": "def",
  "lexical_name": "defEvalConfigItem",
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
  "slug": "defevalconfigitem--d599fc99aeb46f0c8504290b",
  "source": {
    "blob": "fd86fd59dfe4107fc4cb0b7cbcbcaeabff15166c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 206,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d599fc99aeb46f0c8504290b206e92d31ce2dc27e519b8075d681c504ad81665",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c553bd2cc2bb8bc59b7f3db41715b93be44b8eea6c491c795d3a3573ebb98171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def defEvalConfigItem
    (doc? : Option (TSyntax ``Parser.Command.docComment))
    (vis? : Option (TSyntax ``Parser.Command.visibility))
    (kind : TSyntax ``Parser.Term.attrKind)
    (tk : Syntax)
    (struct : Ident)
    (fnIdent : Ident)
    (extraBinders : TSyntaxArray ``Parser.Term.bracketedBinder)
    (view : EvalConfigItemView) :
    CommandElabM Unit := do
  let structName ← liftTermElabM <| realizeGlobalConstNoOverloadWithInfo struct
  -- Pass one: make the trie to collect the missing instances
  let (_, { toOmit, toDerive }) ← liftTermElabM <| mkTrie structName true |>.run { toOmit := view.omitFields }
  for (ref, name) in toOmit do
    logErrorAt ref m!"No such field `{name}` of `{.ofConstName structName}`"
  -- Now that we're back in CommandElabM, derive instances
  for ty in toDerive.getD ``EvalTerm {} do
    try
      ensureEvalTerm vis? kind tk struct ty
    catch ex =>
      trace[Elab.ConfigEval] "Deriving EvalTerm instance for `{ty}` failed: {ex.toMessageData}"
  for ty in toDerive.getD ``EvalExpr {} do
    try
      ensureEvalExpr vis? kind tk struct ty
    catch ex =>
      trace[Elab.ConfigEval] "Deriving EvalEval instance for `{ty}` failed: {ex.toMessageData}"
  -- Pass two: rebuild the trie in the presense of these instances, and build the command
  let cmd ← liftTermElabM <| withFreshMacroScope <| mkCmd structName
  elabCommand cmd
where
  hasInstance (cls : Name) (ty : Expr) : M Bool := do
    try
      discard <| synthInstance (← mkAppM cls #[ty])
      return true
    catch _ =>
      unless ty.hasFVar do
        addToDerive cls ty
      return false
  checkStruct (structName : Name) : MetaM Unit := do
    let env ← getEnv
    unless isStructure env structName do
      throwErrorAt struct "`{.ofConstName structName}` is not a structure"
    let .inductInfo val ← getConstInfo structName
      | throwErrorAt struct "`{.ofConstName structName}` is not a structure"
    unless val.levelParams.isEmpty && val.numIndices == 0 && val.numParams == 0 do
      throwErrorAt struct "`{.ofConstName structName}` must not have parameters, indices, or universe parameters"
  visitStruct (trie : HandlerTrie) (keyPrefix : Name) (structName : Name) (allowFailure : Bool) : M HandlerTrie := do
    withTraceNode `Elab.ConfigEval (fun _ => return m!"adding handlers for fields of `{.ofConstName structName}` with prefix `{keyPrefix}`, allowFailure: {allowFailure}") do
    checkStruct structName
    let fields := getStructureFieldsFlattened (← getEnv) structName (includeSubobjectFields := false)
    withLocalDeclD `self (Expr.const structName []) fun self => do
      let mut trie := trie
      for field in fields do
        let key := keyPrefix ++ field
        let proj ← mkProjection self field
        let some projFn := proj.getAppFn.constName? | panic! "(Internal error) Invalid projection {inlineExpr proj}"
        if (← hasToOmit key projFn) then
          trace[Elab.ConfigEval] "key `{key}` was excluded, skipping"
          continue
        let fieldTy ← inferType proj
        let exactHandler? := trie.find? key .exact
        let mut hasExact := exactHandler?.any fun (key', _) => key == key'
        let hasWildcard := (trie.find? key .wildcard).isSome
        trace[Elab.ConfigEval] m!"key `{key}` hasExact: {hasExact}, hasWildcard: {hasWildcard}"
        let mut synthesizedHandler := false
        -- If there's no exact key for this field yet, synthesize a handler
        if !hasExact then
          let mut body ← `(pure { config with $(mkIdent key):ident := value })
          if ← withReducible <| isDefEq fieldTy (mkConst ``Bool) then
            trace[Elab.ConfigEval] "field `{.ofConstName projFn}`, using {.ofConstName ``evalBoolItem}"
            body ← `(fun config item => evalBoolItem item >>= fun value => $body:term)
            trie := trie.insert { ref := struct, key, kind := .exact, body, projFn? := projFn }
            hasExact := true
            synthesizedHandler := true
          else
            let hasEvalTerm ← hasInstance ``EvalTerm fieldTy
            let hasEvalExpr ← hasInstance ``EvalExpr fieldTy
            trace[Elab.ConfigEval] "field `{.ofConstName projFn}`, hasEvalTerm: {hasEvalTerm}, hasEvalExpr: {hasEvalExpr}"
            hasExact := hasEvalTerm || hasEvalExpr
            synthesizedHandler := synthesizedHandler || hasEvalTerm || hasEvalExpr
            let mkHandler (eval : Term) : M Term :=
              `(item.checkNotBool >>= fun _ => $eval:term >>= fun value => $body)
            body ←
              match hasEvalTerm, hasEvalExpr with
              | true,  true  => `(evalTermOrExprWithElab ⟨item.value⟩) >>= mkHandler
              | false, true  => `(evalExprWithElab ⟨item.value⟩) >>= mkHandler
              | true,  false => `(evalTermWithRef ⟨item.value⟩) >>= mkHandler
              | false, false => `(item.throwCannotSetOption $(quote structName))
            body ← `(fun _ item => $body)
            trie := trie.insert { ref := struct, key, kind := .exact, body, projFn? := projFn }
        if let some structName' := (← whnfR fieldTy).constName? then
          if isStructure (← getEnv) structName' then
            trie := trie.insertStruct key structName'
            if ← try checkStruct structName'; pure true catch _ => pure false then
              /-
              Heuristic: if there is already a handler for an exact match, we shouldn't report errors
              if sub-keys can't be used. In Mathlib for example, the `linarith` tactic has configuration
              options that are `structure`s wrapping monadic and functional values. Users are only
              meant to set the entire `structure`, not the fields within them. We are imagining here
              that `structure` configuration values are not common, so we shouldn't rigidly expect
              handlers for sub-keys (saving metaprogram authors the hassle of writing complete `except`
              clauses). We may consider `(allowFailure := true)` in the future, and/or `except foo.*` clauses.
              -/
              trie ← visitStruct trie key structName' (allowFailure := allowFailure || hasExact || exactHandler?.isSome)
        unless allowFailure || hasExact || hasWildcard || synthesizedHandler do
          throwErrorAt struct (m!"Field `{key}` of type{inlineExpr fieldTy}is missing both `{.ofConstName ``EvalTerm}` and `{.ofConstName ``EvalExpr}` instances."
              ++ .note m!"The scoped `ensure_eval_term_instance` and `ensure_eval_expr_instance` commands in `Lean.Elab.ConfigEval` were not able to derive instances.")
      return trie
  mkTrie (structName : Name) (allowFailure : Bool) : M HandlerTrie := do
    let mut trie : HandlerTrie := {}
    trie := trie.insertStruct Name.anonymous structName
    for handler in view.handlers do
      if handler.key.isAnonymous && handler.kind matches .exact then
        throwErrorAt handler.ref "Unexpected empty key for handler"
      if let some (key, _) := trie.find? handler.key handler.kind then
        throwErrorAt handler.ref "Duplicate handler for key `{key}`"
      trie := trie.insert handler
    trie ← visitStruct trie .anonymous structName allowFailure
    unless (← hasToOmit `config structName) || (trie.find? `config .exact).isSome do
      if ← hasInstance ``EvalExpr (mkConst structName) then
        -- Only use an `EvalExpr` instance; we don't have plans to support structure instance notation with `EvalTerm`.
        let cfgBody ← `(fun _ item => (evalExprWithElab ⟨item.value⟩ : TermElabM $struct))
        trie := trie.insert { ref := tk, key := `config, kind := .exact, body := cfgBody }
    return trie
  /--
  Assembles the full key matcher from the trie. Makes use of `item` in the current macro scope.
  -/
  assemble (trie : HandlerTrie) (onFail : Term) : TermElabM Term := do
    let { exact?, children, wildcard?, projFn?, struct? } := trie
    let bodyApplied (handler : EvalConfigItemHandler) : TermElabM Term := do
      `(($handler.body : $struct → ConfigItem → TermElabM $struct) config item')
    let handleChildren (onFail : Term) : TermElabM Term := do
      if children.isEmpty then
        return onFail
      else
        let children ← children.mapM fun (s, trie') => return (s, ← assemble trie' onFail)
        let body ← makeStringMatcher (← `(ident| root)) children onFail
        `(have root := item.getRootStr
          have item' := item
          have item := item.shift
          $body)
    let handleWildcard : TermElabM Term := do
      if let some h := wildcard? then
        let body ← bodyApplied h
        if children.isEmpty then
          return body
        else
          let jp ← withFreshMacroScope `(ident| doWildcard)
          let body' ← handleChildren (← `($jp ()))
          `(have $jp (_ : Unit) := $body; $body')
      else
        handleChildren onFail
    let handleExact : TermElabM Term := do
      let body ← handleWildcard
      let onAnon ← if let some h := exact? then bodyApplied h else pure onFail
      `(if item.isAnonymous then $onAnon else $body)
    let mut body ← handleExact
    if let some projFn := projFn? then
      body ← `(item'.addConstInfo $(quote projFn) >>= fun _ => $body)
    if let some struct := struct? then
      body ← `(item.addCompletionInfo $(quote struct) >>= fun _ => $body)
    return body
  mkCmd (structName : Name) : TermElabM Command := do
    let trie ← mkTrie structName false |>.run' { toOmit := view.omitFields }
    let body ← assemble trie (← `(invalidOption item))
    `($[$doc?:docComment]?
      $[$vis?:visibility]?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEvalConfigItem/Variantdf4272ceb3e27e2ad6cb59b95cf8b15295d3dec54926847261d5b07c4787dd2b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd86fd59dfe4107fc4cb0b7cbcbcaeabff15166c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
