# DocM.exec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:799468407f2b6e56bc6b99a3f6aa17765428e9f3fdd679fab1b1db963fb9c6f4",
  "kind": "def",
  "lexical_name": "DocM.exec",
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
  "slug": "docm-exec--d5f7c74095bc0a4208d8fd0d",
  "source": {
    "blob": "e6af04853ba13c2d50a909dfaed37219dc95f7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f7c74095bc0a4208d8fd0d1880819da5703cf6e7db5be7c618581d3ec18aa9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:799468407f2b6e56bc6b99a3f6aa17765428e9f3fdd679fab1b1db963fb9c6f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DocM.exec (declName : Name) (binders : Syntax) (act : DocM α)
    (suggestionMode : SuggestionMode := .interactive) :
    TermElabM (α × Array DeferredCheck) := withoutModifyingEnv do
  let some ci := (← getEnv).constants.find? declName
    | throwError "Unknown constant {declName} when building docstring"
  withSaveRestoreTermState do
    let (lctx, localInstances) ← buildContext ci.type binders
    let sc ← scopedEnvExtensionsRef.get
    try
      let openDecls ← getOpenDecls
      let options ← getOptions
      let scopes := [{header := "", isPublic := true}]
      let ((v, internalSt), docState) ← withTheReader Meta.Context (fun ρ => { ρ with localInstances }) <|
        act.run { suggestionMode } |>.run {} |>.run { scopes, openDecls, lctx, localInstances, options }
      checkUnsolvedDocMVars lctx docState
      pure (v, internalSt.deferred)
    finally
      scopedEnvExtensionsRef.set sc
where
  buildContext (type : Expr) (binders : Syntax) : TermElabM (LocalContext × LocalInstances) := do
    -- Create a local context with all binders. The type will be updated as we introduce parameters.
    let mut type := type

    -- We start with a local context that's reset to only include section variables
    let mut localInstances ← Meta.getLocalInstances
    let mut lctx ← getLCtx
    let sectionFVars := (← read).sectionFVars.valuesArray.filterMap fun
      | .fvar fv => some fv
      | _ => none
    repeat
      if lctx.size = 0 then break
      if let some decl := lctx.lastDecl then
        if sectionFVars.any (· == decl.fvarId) then break
        else
          lctx := lctx.pop
          localInstances := localInstances.filter (·.fvar != .fvar decl.fvarId)
      else break

    let names ← binders.getArgs.flatMapM binderNames
    let mut i := 0
    let mut x := none
    repeat -- Consume parameters until we find one that matches or run out
      if x.isNone then
        x := names[i]?
        i := i + 1
      type ← Meta.withLCtx lctx localInstances <| Meta.whnf type
      match type with
      | .forallE y ty body bi =>
        let fv ← mkFreshFVarId
        if let some c := ← Meta.withLCtx lctx localInstances (Meta.isClass? ty) then
          localInstances := localInstances.push {className := c, fvar := .fvar fv}

        if let some (some x') := x then
          if x'.getKind == ``hole then
            -- A `_` parameter has no name, so it matches no binder. Drop it from the cursor
            -- and align the remaining parameters by name; each lifted binder, including
            -- captured variables, is introduced under its own name below.
            x := none
          else if x'.getId == y then
            lctx := lctx.mkLocalDecl fv y ty
            Meta.withLCtx lctx localInstances <|
              addTermInfo' x' (.fvar fv) (lctx? := some lctx) (expectedType? := ty)
            type := body.instantiate1 (.fvar fv)
            x := none
            continue
        else if let some none := x then
          if bi == .instImplicit then
            lctx := lctx.mkLocalDecl fv y ty
            type := body.instantiate1 (.fvar fv)
            x := none
            continue

        lctx := lctx.mkLocalDecl fv y ty
        type := body.instantiate1 (.fvar fv)
      | .mdata _ t => type := t
      | _ => break
    return (lctx, localInstances)

  binderNames (binderStx : Syntax) : TermElabM (Array (Option Syntax)) :=
    match binderStx.getKind with
    | ``explicitBinder | ``implicitBinder | ``strictImplicitBinder =>
      getNames binderStx[1]
    | ``instBinder =>
      let x := binderStx[1][0]
      if x.isMissing then pure #[none] else pure #[some x]
    | k =>
      -- A parameter bound by an unbracketed identifier or `_`, as in `def f x` or `where go _`.
      if k == identKind || k == ``hole then pure #[some binderStx]
      else throwErrorAt binderStx "Couldn't interpret binder {binderStx}"
  getNames (ids : Syntax) : TermElabM (Array (Option Syntax)) :=
    ids.getArgs.mapM fun x =>
      if x.getKind == identKind || x.getKind == ``hole then
        pure (some x)
      else throwErrorAt x "identifier or `_` expected"


set_option linter.unusedVariables false in
/--
Gadget that indicates that a function's parameter should be treated as a Boolean flag when used in
a docstring extension.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6af04853ba13c2d50a909dfaed37219dc95f7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
