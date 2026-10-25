# resolveLValAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f603eb0306affae3aba7760f0267cb8ef5383a54a08f7d05bc0fc83b81e3e2",
  "kind": "def",
  "lexical_name": "resolveLValAux",
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
  "slug": "resolvelvalaux--20b451e151232330477d4ccb",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1666,
    "line": 1525,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20b451e151232330477d4ccb7a2adab6745375c7c2f56293b5de01ae6dbad103",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f603eb0306affae3aba7760f0267cb8ef5383a54a08f7d05bc0fc83b81e3e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1525–1666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resolveLValAux (e : Expr) (eType : Expr) (lval : LVal) : TermElabM LValResolution := do
  match eType.getAppFn, lval with
  | .const structName _, LVal.fieldIdx ref idx levels =>
    if idx == 0 then
      throwError "Invalid projection: Index must be greater than 0"
    let env ← getEnv
    let failK _ := throwError  "Invalid projection: Projections extract constructor fields for \
      one-constructor inductive types. \
      The expression{indentExpr e}\nhas type{inlineExpr eType}which is not a one-constructor inductive type."

    matchConstStructure eType.getAppFn failK fun _ _ ctorVal => do
      let numFields := ctorVal.numFields
      if idx - 1 < numFields then
        if isStructure env structName then
          let fieldNames := getStructureFields env structName
          return LValResolution.projFn structName structName fieldNames[idx - 1]! levels
        else
          /- `structName` was declared using `inductive` command.
            So, we don't projection functions for it. Thus, we use `Expr.proj` -/
          unless levels.isEmpty do
            throwError "Invalid projection: Explicit universe levels are only supported for inductive types \
              defined using the `structure` command. \
              The expression{indentExpr e}\nhas type{inlineExpr eType}which is not a `structure`."
          return LValResolution.projIdx structName (idx - 1)
      else
        if numFields == 0 then
          throwError  m!"Invalid projection: Projections extract constructor fields for \
            one-constructor inductive types. \
            The expression{indentExpr e}\nhas type{inlineExpr eType}which has no fields."
        let tupleHint ← mkTupleHint eType idx ref
        throwError m!"Invalid projection: Index `{idx}` is invalid for this structure; \
          {numFields.plural "the only valid index is 1" s!"it must be between 1 and {numFields}"}"
          ++ MessageData.note m!"The expression{indentExpr e}\nhas type{inlineExpr eType}which has only \
          {numFields} field{numFields.plural}"
          ++ tupleHint
  | .const structName _, LVal.fieldName ref fieldName levels _ _ => withRef ref do
    let env ← getEnv
    if isStructure env structName then
      if let some baseStructName := findField? env structName (Name.mkSimple fieldName) then
        return LValResolution.projFn baseStructName structName (Name.mkSimple fieldName) levels
    -- Search the local context first
    let fullName := Name.mkStr (privateToUserName structName) fieldName
    for localDecl in (← getLCtx) do
      if localDecl.isAuxDecl then
        if let some localDeclFullName := (← getLCtx).auxDeclToFullName.get? localDecl.fvarId then
          if fullName == privateToUserName localDeclFullName then
            unless levels.isEmpty do
              throwInvalidExplicitUniversesForLocal localDecl.toExpr
            /- LVal notation is being used to make a "local" recursive call. -/
            return LValResolution.localRec structName localDecl.toExpr
    -- Then search the environment
    if let some (baseStructName, fullName) ← findMethod? structName (.mkSimple fieldName) then
      return LValResolution.const baseStructName structName fullName levels
    -- In public scope, retry in private scope as error message hint. Does not cover `import all`.
    let declHint ← (do
      if env.isExporting then
        try
          if let some (_, n) ← withoutExporting <| findMethod? structName (.mkSimple fieldName) then
            return n
        catch _ => pure ()
      return .anonymous)
    throwInvalidFieldAt ref fieldName fullName (declHint := declHint)

  | .forallE .., LVal.fieldName ref fieldName levels suffix? fullRef =>
    let fullName := Name.str `Function fieldName
    if (← getEnv).contains fullName then
      return LValResolution.const `Function `Function fullName levels
    match e.getAppFn, suffix? with
    | Expr.const c _, some suffix =>
      throwUnknownNameWithSuggestions (idOrConst := "constant")  (ref? := fullRef) (c ++ suffix)
    | _, _ =>
      throwInvalidFieldAt ref fieldName fullName
  | .forallE .., .fieldIdx .. =>
    throwError "Invalid projection: Projections cannot be used on functions, and{indentExpr e}\n\
      has function type{inlineExprTrailing eType}"

  | .mvar .., .fieldName _ fieldName levels _ _ =>
    let hint := match reverseFieldLookup (← getEnv) fieldName with
      | #[] => MessageData.nil
      | #[opt] => .hint' m!"Consider replacing the field projection `.{fieldName}` with a call to the function `{.ofConstName opt}`."
      | opts => .hint' m!"Consider replacing the field projection with a call to one of the following:\
          {MessageData.joinSep (opts.toList.map (indentD m!"• `{.ofConstName ·}`")) .nil}"
    throwNamedError lean.invalidField (m!"Invalid field notation: Type of{indentExpr e}\nis not \
      known; cannot resolve field `{fieldName}`" ++ hint)
  | .mvar .., .fieldIdx _ i _ =>
    throwError m!"Invalid projection: Type of{indentExpr e}\nis not known; cannot resolve \
      projection `{i}`"

  | _, _ =>
    match e.getAppFn, lval with
    | Expr.const c _, .fieldName _ref _fieldName _levels (some suffix) fullRef =>
      throwUnknownNameWithSuggestions (idOrConst := "constant") (ref? := fullRef) (c ++ suffix)
    | _, .fieldName .. =>
      throwNamedError lean.invalidField m!"Invalid field notation: Field projection operates on \
        types of the form `C ...` where C is a constant. The expression{indentExpr e}\nhas \
        type{inlineExpr eType}which does not have the necessary form."
    | _, .fieldIdx .. =>
      throwError  m!"Invalid projection: Projection operates on types of the form `C ...` where C \
        is a constant. The expression{indentExpr e}\nhas type{inlineExpr eType}which does not have \
        the necessary form."

where
  throwInvalidFieldAt {α : Type} (ref : Syntax) (fieldName : String) (fullName : Name)
      (declHint := Name.anonymous) : TermElabM α := do
    let msg ←
      -- ordering: put decl hint, if any, last
      mkUnknownIdentifierMessage (declHint := declHint)
        m!"Invalid field `{fieldName}`: The environment does not contain `{fullName}`, so it is not \
          possible to project the field `{fieldName}` from an expression{indentExpr e}\nof \
          type{inlineExprTrailing eType}"

    -- Possible alternatives provided with `@[suggest_for]` annotations
    let suggestions := (← Lean.getSuggestions fullName).filter (·.getPrefix = fullName.getPrefix) |>.toArray
    let suggestForHint ←
      if h : suggestions.size = 0 then
        pure .nil
      else if suggestions.size = 1 then
        MessageData.hint (ref? := ref)
          m!"Perhaps you meant `{.ofConstName suggestions[0]}` in place of `{fullName}`:"
          (suggestions.map fun suggestion => {
            preInfo? := .some s!".",
            suggestion := suggestion.getString!,
            toCodeActionTitle? := .some (s!"Change to .{·}"),
            diffGranularity := .all,
          })
      else
        MessageData.hint (ref? := ref)
          m!"Perhaps you meant one of these in place of `{fullName}`:"
          (suggestions.map fun suggestion => {
            suggestion := suggestion.getString!,
            toCodeActionTitle? := .some (s!"Change to .{·}"),
            messageData? := .some m!"`{.ofConstName suggestion}`",
          })

    -- By using `mkUnknownIdentifierMessage`, the tag `Lean.unknownIdentifierMessageTag` is
    -- incorporated within the message, as required for the "import unknown identifier" code action.
    -- The "outermost" lean.invalidField name is the only one that triggers an error explanation.
    throwNamedErrorAt ref lean.invalidField (msg ++ suggestForHint)


/-- whnfCore + implicit consumption.
   Example: given `e` with `eType := {α : Type} → (fun β => List β) α `, it produces `(e ?m, List ?m)` where `?m` is fresh metavariable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
