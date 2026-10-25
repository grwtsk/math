# delabAppImplicitCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91c4b873896466cb4b661dab470ea3187bc81c77194367c4748b76574119a0bd",
  "kind": "def",
  "lexical_name": "delabAppImplicitCore",
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
  "slug": "delabappimplicitcore--2bbd455116532ac36a08a195",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbd455116532ac36a08a195e1ded57d9597b099917868e6efa77600b76926f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91c4b873896466cb4b661dab470ea3187bc81c77194367c4748b76574119a0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabAppImplicitCore (unexpand : Bool) (numArgs : Nat) (delabHead : Delab) (paramKinds : Array ParamKind) : Delab := do
  let unexpand ← pure unexpand
    <&&> withBoundedAppFn numArgs do
            let some (_, us) := (← getExpr).consumeMData.const? | pure false
            not <$> (pure (← getExpr).isMData <&&> getPPOption getPPMData)
            <&&> (pure us.isEmpty <||> not <$> withMDatasOptions (getPPOption getPPUniverses))
  let field? ←
    if ← pure unexpand <&&> getPPOption getPPFieldNotation <&&> not <$> getPPOption getPPAnalysisNoDot then
      appFieldNotationCandidate?
    else
      pure none
  let (fnStx, args) ←
    withBoundedAppFnArgs numArgs
      (do return ((← delabHead), Array.mkEmpty numArgs))
      (fun (fnStx, args) =>
        let isFieldIdx := (some args.size = field?.map Prod.fst)
        return (fnStx, args.push (← mkArg isFieldIdx paramKinds[args.size]!)))

  -- Strip off optional arguments.
  let args := args.popWhile (· matches .optional ..)

  -- App unexpanders
  if ← pure unexpand <&&> getPPOption getPPNotation then
    -- Try using an app unexpander for a prefix of the arguments.
    if let some stx ← (some <$> tryAppUnexpanders fnStx args) <|> pure none then
      return stx

  -- Field notation
  if let some (fieldIdx, field) := field? then
    if h : fieldIdx < args.size then
      let obj? : Option Term ← do
        let arg := args[fieldIdx]
        if let .regular s := arg then
          withNaryArg fieldIdx <| some <$> stripParentProjections s
        else
          pure none
      if let some obj := obj? then
        let isFirst := args[*...fieldIdx].all (· matches .skip)
        -- Clear the `obj` argument from `args`.
        let args' := args.set! fieldIdx .skip
        let mut head : Term ← `($obj.$(mkIdentFrom fnStx field))
        if isFirst then
          -- If the object is the first argument (after some implicit arguments),
          -- we can annotate `obj.field` with the prefix of the application
          -- that includes all the implicit arguments immediately before and after `obj`.
          let objArity := args'.findIdx? (fun a => !(a matches .skip)) |>.getD args'.size
          head ← withBoundedAppFn (numArgs - objArity) <| annotateTermInfo <| head
        return Syntax.mkApp head (args'.filterMap (·.syntax?))

  -- Normal application
  return Syntax.mkApp fnStx (args.filterMap (·.syntax?))
where
  mkNamedArg (name : Name) : DelabM AppImplicitArg :=
    return .named <| ← `(Parser.Term.namedArgument| ($(mkIdent name) := $(← delab)))
  /--
  Delaborates the current argument.
  The argument `remainingArgs` is the number of arguments in the application after this one.
  -/
  mkArg (isFieldIdx : Bool) (param : ParamKind) : DelabM AppImplicitArg := do
    let arg ← getExpr
    if ← getPPOption getPPAnalysisSkip then return .skip
    else if ← getPPOption getPPAnalysisHole then return .regular (← `(_))
    else if ← getPPOption getPPAnalysisNamedArg then
      mkNamedArg param.name
    else if param.defVal.isSome && param.defVal.get! == arg then
      -- Assumption: `useAppExplicit` has already detected whether it is ok to omit this argument, if it is the last one.
      -- We will later remove all optional arguments from the end.
      return .optional param.name (← delab)
    else if isFieldIdx || param.bInfo.isExplicit then
      return .regular (← delab)
    else if ← pure (param.name == `motive) <&&> shouldShowMotive arg (← getOptions) then
      mkNamedArg param.name
    else
      return .skip
  /--
  Runs the given unexpanders, returning the resulting syntax if any are applicable, and otherwise fails.
  -/
  tryUnexpand (ref : Syntax) (fs : List Unexpander) (stx : Syntax) : DelabM Syntax := do
    withAnnotateTermInfoUnlessAnnotated <| fs.firstM fun f =>
      match f stx |>.run ref |>.run () with
      | EStateM.Result.ok stx _ => return stx
      | _ => failure
  /--
  If the expression is a candidate for app unexpanders,
  try applying an app unexpander using some prefix of the arguments, longest prefix first.
  This function makes sure that the unexpanded syntax is annotated and given TermInfo so that it is hoverable in the InfoView.

  Ref logic:
  1. The unexpanders are run with the head constant's syntax as the ref.
  2. If `pp.tagAppFns` is false, then this does nothing, since `delabConst` won't register any terminfo for the constant.
  3. If `pp.tagAppFns` is true, then this causes all tokens in app unexpanders to refer to the head constant.
     The effect is that in docgen, every token will be linkified (supposing the app unexpander uses syntax quotations).
  -/
  tryAppUnexpanders (fnStx : Term) (args : Array AppImplicitArg) : Delab := do
    let .const c _ := (← getExpr).getAppFn.consumeMData | unreachable!
    let fs := appUnexpanderAttribute.getValues (← getEnv) c
    if fs.isEmpty then failure
    let rec go (i : Nat) (implicitArgs : Nat) (argStxs : Array Syntax) : DelabM Term := do
      match i with
      | 0 =>
        let stx ← tryUnexpand fnStx fs fnStx
        return Syntax.mkApp stx (args.filterMap (·.syntax?))
      | i' + 1 =>
        if args[i']!.syntax?.isSome then
          (do let stx ← tryUnexpand fnStx fs <| Syntax.mkApp fnStx argStxs
              let argStxs' := args.extract i args.size |>.filterMap (·.syntax?)
              return Syntax.mkApp stx argStxs')
          <|> withBoundedAppFn (implicitArgs + 1) (go i' 0 argStxs.pop)
        else
          go i' (implicitArgs + 1) argStxs
    let maxUnexpand := args.findIdx? (!·.canUnexpand) |>.getD args.size
    withBoundedAppFn (args.size - maxUnexpand) <|
      go maxUnexpand 0 (args.extract 0 maxUnexpand |>.filterMap (·.syntax?))

/--
Returns true if an application should use explicit mode when delaborating.
Explicit mode turns off unexpanders
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
