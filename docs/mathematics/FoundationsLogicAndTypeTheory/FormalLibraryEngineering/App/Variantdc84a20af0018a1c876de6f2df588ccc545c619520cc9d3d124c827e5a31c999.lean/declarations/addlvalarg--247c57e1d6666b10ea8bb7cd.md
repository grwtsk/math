# addLValArg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e75d6c01bee155ba203778a3c56e4bbfe8087c877b1ac1fdb5390db72e68189",
  "kind": "def",
  "lexical_name": "addLValArg",
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
  "slug": "addlvalarg--247c57e1d6666b10ea8bb7cd",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1839,
    "line": 1743,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:247c57e1d6666b10ea8bb7cd8f0f8a150b153144e230e0d98d5074bfa1cd5c4d",
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

Occurrence: `declaration:4e75d6c01bee155ba203778a3c56e4bbfe8087c877b1ac1fdb5390db72e68189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1743–1839.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def addLValArg (baseName : Name) (e : Expr) (args : Array Arg) (namedArgs : Array NamedArg) (f : Expr) (explicit : Bool) :
    MetaM (Array Arg × Array NamedArg) := do
  withoutModifyingState <| go none f (← inferType f) 0 namedArgs (namedArgs.map (·.name)) true
where
  /--
  * `fPreCoercion?` keeps track of what `f` was originally, if there was a coercion. For error reporting.
  * `argIdx` is the position into `args` for the next place an explicit argument can be inserted.
  * `remainingNamedArgs` keeps track of named arguments that haven't been visited yet,
    for handling the case where multiple parameters have the same name.
  * `unusableNamedArgs` keeps track of names that can't be used as named arguments. This is initialized with user-provided named arguments.
  * `allowNamed` is whether or not to allow using named arguments.
    Disabled after using `CoeFun` since those parameter names unlikely to be meaningful,
    and otherwise whether dot notation works or not could feel random.
  -/
  go (fPreCoercion? : Option Expr) (f fType : Expr) (argIdx : Nat) (remainingNamedArgs : Array NamedArg) (unusableNamedArgs : Array Name) (allowNamed : Bool) := withIncRecDepth do
    /- Use metavariables (rather than `forallTelescope`) to prevent `coerceToFunction?` from succeeding when multiple instances could apply -/
    let (xs, bInfos, fType') ← forallMetaTelescope fType
    let mut argIdx := argIdx
    let mut remainingNamedArgs := remainingNamedArgs
    let mut unusableNamedArgs := unusableNamedArgs
    for x in xs, bInfo in bInfos do
      let xDecl ← x.mvarId!.getDecl
      if let some idx := remainingNamedArgs.findFinIdx? (·.name == xDecl.userName) then
        /- If there is named argument with name `xDecl.userName`, then it is accounted for and we can't make use of it. -/
        remainingNamedArgs := remainingNamedArgs.eraseIdx idx
      else
        if ← typeMatchesBaseName xDecl.type baseName then
          /- We found a type of the form (baseName ...), or we found the first explicit argument in useFirstExplicit mode.
             First, we check if the current argument is one that can be used positionally,
             and if the current explicit position "fits" at `args` (i.e., it must be ≤ arg.size) -/
          if h : argIdx ≤ args.size ∧ (explicit || bInfo.isExplicit) then
            /- We can insert `e` as an explicit argument -/
            return (args.insertIdx argIdx (Arg.expr e), namedArgs)
          else
            /- If we can't add `e` to `args`, we try to add it using a named argument, but this is only possible
               if there isn't an argument with the same name occurring before it. -/
            if !allowNamed || unusableNamedArgs.contains xDecl.userName then
              throwUnusableParameter fPreCoercion? f allowNamed xDecl
            else
              return (args, namedArgs.push { name := xDecl.userName, val := Arg.expr e })
        /- Advance `argIdx` and update seen named arguments. -/
        if explicit || bInfo.isExplicit then
          argIdx := argIdx + 1
        unusableNamedArgs := unusableNamedArgs.push xDecl.userName
    /- If named arguments aren't allowed, then it must still be possible to pass the value as an explicit argument.
       Otherwise, we can abort now. -/
    if allowNamed || argIdx ≤ args.size then
      if let fType'@(.forallE ..) ← whnf fType' then
        return ← go fPreCoercion? (mkAppN f xs) fType' argIdx remainingNamedArgs unusableNamedArgs allowNamed
      if let some f' ← coerceToFunction? (mkAppN f xs) then
        return ← go (fPreCoercion?.getD f) f' (← inferType f') argIdx remainingNamedArgs unusableNamedArgs false
    let tyCtorMsg := MessageData.ofLazyM do
      let some decl := (← getEnv).find? baseName | return .ofConstName baseName
      if decl.type.isForall then
        return m!"{.ofConstName baseName} ..."
      else
        return .ofConstName baseName
    throwError m!"Invalid field notation: Function {funMsg fPreCoercion? f} does not have a usable \
      parameter of type `{tyCtorMsg}` for which to substitute{inlineExprTrailing e}"
      ++ .note m!"Such a parameter must be explicit, or implicit with a unique name, to be used by field notation"

  funMsg (fPreCoercion? : Option Expr) (f : Expr) : MessageData :=
    let msg (e : Expr) : MessageData :=
      -- Eta reduce since often coercions are written with lambdas.
      -- This might be somewhat misleading, since the lambda can rephrase parameters.
      let e := e.getAppFn.eta
      if let .const c .. := e then
        -- avoid `@`
        m!"`{.ofConstName c}`"
      else
        m!"`{e}`"
    if let some fPreCoercion := fPreCoercion? then
      m!"{msg f} (coerced from {msg fPreCoercion})"
    else
      msg f

  throwUnusableParameter (fPreCoercion? : Option Expr) (f : Expr) (allowNamed : Bool) (xDecl : MetavarDecl) :=
    let fmsg := funMsg fPreCoercion? f
    let note : MessageData := if !allowNamed && !xDecl.userName.hasMacroScopes then
      .note m!"Field notation cannot refer to parameter `{xDecl.userName}` \
        by name because that constant was coerced to a function"
    else if allowNamed then
      let param := if xDecl.userName.hasMacroScopes then .nil else m!" `{xDecl.userName}`"
      .note m!"The parameter{param} cannot be referred to by name \
         because that function has a preceding parameter of the same name"
    else .nil
    -- Transforming field notation into direct application is too involved to offer a confident
    -- concrete edit suggestion here
    let hint := MessageData.hint' <|
      m!"Consider rewriting this application without field notation (e.g., `C.f x` instead of `x.f`)" ++
      if allowNamed then
        m!" or changing the parameter names of the function to avoid this conflict"
      else .nil
    throwError m!"Invalid field notation: {fmsg} has a parameter with \
      expected type{indentExpr xDecl.type}\nbut it cannot be used" ++ note ++ hint

/-- Adds the `TermInfo` for the field of a projection. See `Lean.Parser.Term.identProjKind`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
