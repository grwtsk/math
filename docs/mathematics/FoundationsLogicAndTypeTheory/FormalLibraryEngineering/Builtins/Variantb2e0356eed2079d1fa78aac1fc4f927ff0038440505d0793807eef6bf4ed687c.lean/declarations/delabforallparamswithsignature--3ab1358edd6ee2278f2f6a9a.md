# delabForallParamsWithSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdc68e2126ad244359f6d503360503e7f31ba47e0ff8c8e5d077008167424c07",
  "kind": "def",
  "lexical_name": "delabForallParamsWithSignature",
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
  "slug": "delabforallparamswithsignature--3ab1358edd6ee2278f2f6a9a",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1664,
    "line": 1554,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ab1358edd6ee2278f2f6a9a20284adf2c1fead1b6705f9d7d8f0edfa99272ac",
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

Occurrence: `declaration:bdc68e2126ad244359f6d503360503e7f31ba47e0ff8c8e5d077008167424c07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1554–1664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def delabForallParamsWithSignature
    (delabForall : (groups : TSyntaxArray ``bracketedBinder) → (type : Term) → DelabM α) : DelabM α := do
  delabParams {} #[]
where
  /--
  For types in the signature, we want to be sure pi binder types are pretty printed.
  -/
  delabTy : DelabM Term := withOptions (pp.piBinderTypes.set · true) delab
  /-
  Similar to `delabBinders`, but does not uniquify binder names (since for named arguments we want to know the name),
  and it always merges binder groups when possible.
  Once it reaches a binder with an inaccessible name, or a name that has already been used,
  the remaining binders appear in pi types after the `:` of the declaration.
  -/
  delabParams (bindingNames : NameSet) (groups : TSyntaxArray ``bracketedBinder) := do
    let e ← getExpr
    if e.isForall && e.binderInfo.isInstImplicit && e.bindingName!.hasMacroScopes then
      -- Assumption: this instance can be found by instance search, so it does not need to be named.
      -- The oversight here is that this inaccessible name can appear in the pretty printed expression.
      -- We could check to see whether the instance appears in the type and avoid omitting the instance name,
      -- but this would be the usual case.
      let group ← withBindingDomain do `(bracketedBinderF|[$(← delabTy)])
      withBindingBody e.bindingName! <| delabParams bindingNames (groups.push group)
    else if e.isForall && (!e.isArrow || !(e.bindingName!.hasMacroScopes || bindingNames.contains e.bindingName!)) then
      delabParamsAux bindingNames groups #[]
    else
      let (opts', e') ← processSpine {} (← readThe SubExpr)
      withReader (fun ctx => {ctx with optionsPerPos := opts', subExpr := { ctx.subExpr with expr := e' }}) do
        let type ← delabTy
        delabForall groups type
  /--
  Inner loop for `delabParams`, collecting binders.
  Invariants:
  - The current expression is a forall.
  - It has a name that's not inaccessible.
  - It has a name that hasn't been used yet.
  -/
  delabParamsAux (bindingNames : NameSet) (groups : TSyntaxArray ``bracketedBinder) (curIds : Array Ident) := do
    let e@(.forallE n d e' i) ← getExpr | unreachable!
    let n ← if bindingNames.contains n then withFreshMacroScope <| MonadQuotation.addMacroScope n else pure n
    let bindingNames := bindingNames.insert n
    if shouldGroupWithNext bindingNames e e' then
      withBindingBody' n (mkAnnotatedIdent n) fun stxN =>
        delabParamsAux bindingNames groups (curIds.push stxN)
    else
      /-
      `mkGroup` constructs binder syntax for the binder names `curIds : Array Ident`, which all have the same type and binder info.
      This being a function is solving the following issue:
      - To get the last binder name, we need to be under `withBindingBody'`, which lets us annotate the binder with its fvar.
      - However, we should delaborate the binder type from outside `withBindingBody'`.
      - Thus, we need to partially construct the binder syntax, waiting on the final value of `curIds`.
      -/
      let mkGroup : Array Ident → DelabM Syntax ← withBindingDomain do
        match i with
        | .implicit       => let ty ← delabTy; pure fun curIds => `(bracketedBinderF|{$curIds* : $ty})
        | .strictImplicit => let ty ← delabTy; pure fun curIds => `(bracketedBinderF|⦃$curIds* : $ty⦄)
        | .instImplicit   => let ty ← delabTy; pure fun curIds => `(bracketedBinderF|[$(curIds[0]!) : $ty])
        | _ =>
          if d.isOptParam then
            let ty ← withAppFn <| withAppArg delabTy
            let val ← withAppArg delabTy
            pure fun curIds => `(bracketedBinderF|($curIds* : $ty := $val))
          else if let some (.const tacticDecl _) := d.getAutoParamTactic? then
            let ty ← withAppFn <| withAppArg delabTy
            let tacticSyntax ← ofExcept <| evalSyntaxConstant (← getEnv) (← getOptions) tacticDecl
            pure fun curIds => `(bracketedBinderF|($curIds* : $ty := by $tacticSyntax))
          else
            let ty ← delabTy
            pure fun curIds => `(bracketedBinderF|($curIds* : $ty))
      withBindingBody' n (mkAnnotatedIdent n) fun stxN => do
        let curIds := curIds.push stxN
        let group ← mkGroup curIds
        delabParams bindingNames (groups.push group)
  /-
  Given the forall `e` with body `e'`, determines if the binder from `e'` (if it is a forall) should be grouped with `e`'s binder.
  -/
  shouldGroupWithNext (bindingNames : NameSet) (e e' : Expr) : Bool :=
    e'.isForall &&
    (!e'.isArrow ||
      -- At the first sign of an inaccessible name, stop merging binders:
    !(e'.bindingName!.hasMacroScopes ||
      -- If it's a name that has already been used, stop merging binders:
      bindingNames.contains e'.bindingName!)) &&
    e.binderInfo == e'.binderInfo &&
    e.bindingDomain! == e'.bindingDomain! &&
    -- Inst implicits can't be grouped:
    e'.binderInfo != BinderInfo.instImplicit
  /--
  Go through rest of type, alpha renaming and setting options along the spine.
  -/
  processSpine (opts : OptionsPerPos) (subExpr : SubExpr) : MetaM (OptionsPerPos × Expr) := do
    if let .forallE n t b bi := subExpr.expr then
      let used := (← getLCtx).usesUserName n
      withLocalDecl n bi t fun fvar => do
        let (opts, b') ← processSpine opts { expr := b.instantiate1 fvar, pos := subExpr.pos.pushBindingBody }
        let b' := b'.abstract #[fvar]
        let opts := opts.insertAt subExpr.pos ppPiPreserveNames true
        if n.hasMacroScopes then
          return (opts, .forallE n t b' bi)
        else if !used then
          let opts := opts.insertAt subExpr.pos pp.piBinderNames.name true
          return (opts, .forallE n t b' bi)
        else
          let n' ← withFreshMacroScope <| MonadQuotation.addMacroScope n
          return (opts, .forallE n' t b' bi)
    else
      return (opts, subExpr.expr)

/--
Pretty-prints a `forall` similarly to `delabForall`, but explicitly denotes all named parameters.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L1554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
