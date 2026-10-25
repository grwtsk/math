# resolveDottedIdentFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:672a09c16d9cf9a9bad0a921a91434d9a716931d16e6d8babc8b15ad70044c25",
  "kind": "def",
  "lexical_name": "resolveDottedIdentFn",
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
  "slug": "resolvedottedidentfn--a88de6787b503cfe97c14245",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2059,
    "line": 1985,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a88de6787b503cfe97c14245cb067ca9a0398b8f244adbeacfa5023550408cab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:672a09c16d9cf9a9bad0a921a91434d9a716931d16e6d8babc8b15ad70044c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1985–2059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def resolveDottedIdentFn (idRef : Syntax) (id : Name) (explicitUnivs : List Level) (expectedType? : Option Expr) : TermElabM (List (Expr × Syntax × List Syntax × List Level)) := do
  unless id.isAtomic do
    throwError "Invalid dotted identifier notation: The name `{id}` must be atomic"
  tryPostponeIfNoneOrMVar expectedType?
  let some expectedType := expectedType?
    | throwNoExpectedType
  addCompletionInfo <| CompletionInfo.dotId idRef id (← getLCtx) expectedType?
  -- We will check deprecations in `elabAppFnResolutions`.
  withoutCheckDeprecated do
  withForallBody expectedType fun resultType => do
    go resultType expectedType #[]
where
  throwNoExpectedType {α} : TermElabM α := do
    let hint ← match reverseFieldLookup (← getEnv) (id.getString!) with
      | #[] => pure MessageData.nil
      | suggestions =>
        let oneOfThese := if h : suggestions.size = 1 then m!"`{.ofConstName suggestions[0]}" else m!"one of these"
        m!"Using {oneOfThese} would be unambiguous:".hint (suggestions.map fun suggestion => {
          suggestion := mkIdent suggestion
          toCodeActionTitle? := .some (s!"Change to {·}")
          messageData? := .some m!"`{.ofConstName suggestion}`",
        })
    throwNamedError lean.invalidDottedIdent (m!"Invalid dotted identifier notation: The expected type of `.{id}` could not be determined" ++ hint)
  /-- A weak version of forallTelescopeReducing that only uses whnfCore, to avoid unfolding definitions except by `unfoldDefinition?` below. -/
  withForallBody {α} (type : Expr) (k : Expr → TermElabM α) : TermElabM α := do
    let type ← whnfCoreUnfoldingAnnotations type
    if type.isForall then
      forallTelescope type fun _ body => do
        withForallBody body k
    else
      k type
  go (resultType : Expr) (expectedType : Expr) (previousExceptions : Array Exception) : TermElabM (List (Expr × Syntax × List Syntax × List Level)) := do
    let resultType ← instantiateMVars resultType
    let resultTypeFn := resultType.getAppFn
    try
      tryPostponeIfMVar resultTypeFn
      match resultTypeFn with
      | .const declName .. =>
        let env ← getEnv
        if (← isInaccessiblePrivateName declName) then
          throwError "The private declaration `{.ofConstName declName}` is not accessible in the current context"
        -- Recall that the namespace for private declarations is non-private.
        let fullName := privateToUserName declName ++ id
        -- Resolve the name without making use of the current namespace, like in `findMethod?`.
        let candidates := ResolveName.resolveGlobalName env (← getOptions) Name.anonymous (← getOpenDecls) fullName
          |>.filter (fun (_, fieldList) => fieldList.isEmpty)
          |>.map Prod.fst
        if !candidates.isEmpty then
          candidates.mapM fun resolvedName => return (← mkConst resolvedName explicitUnivs, ← getRef, [], [])
        else if let some (fvar, []) ← resolveLocalName fullName then
          unless explicitUnivs.isEmpty do
            throwInvalidExplicitUniversesForLocal fvar
          return [(fvar, ← getRef, [], [])]
        else
          throwUnknownIdentifierAt (← getRef) (declHint := fullName) <| m!"Unknown constant `{.ofConstName fullName}`"
            ++ .note m!"Inferred this name from the expected resulting type of `.{id}`:{indentExpr expectedType}"
      | .sort .. =>
        throwNamedError lean.invalidDottedIdent "Invalid dotted identifier notation: Not supported on type universe{indentExpr resultTypeFn}"
      | _ =>
        if expectedType.getAppFn.isMVar then
          throwNoExpectedType
        else
          throwNamedError lean.invalidDottedIdent "Invalid dotted identifier notation: The expected type of `.{id}`{indentExpr expectedType}\n\
            is not of the form `C ...` or `... → C ...` where C is a constant"
    catch
      | ex@(.error ..) =>
        match (← unfoldDefinition? resultType) with
        | some resultType =>
          withForallBody resultType fun resultType => do
            go resultType expectedType (previousExceptions.push ex)
        | none =>
          previousExceptions.forM fun ex => logException ex
          throw ex
      | ex@(.internal _ _) => throw ex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L1985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
