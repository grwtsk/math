# applyReplacementFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:215457b57647adf0b6c35711bde6cb0ba3f24c32ffbf837bb4ae69c772140ed3",
  "kind": "def",
  "lexical_name": "applyReplacementFun",
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
  "slug": "applyreplacementfun--ec131e3934ff2ab5ba1c8f91",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 453,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec131e3934ff2ab5ba1c8f91af175159b21743710e1dc90c09fb93acfee82b81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:215457b57647adf0b6c35711bde6cb0ba3f24c32ffbf837bb4ae69c772140ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def applyReplacementFun (t : TranslateData) (e : Expr) : ReplacementM Expr :=
  visit e
where
  /-- The implementation of this function is based on `Meta.transform`.
  We can't use `Meta.transform`, because that would cause the types of free variables to be
  translated, which would create type-incorrect terms. Instead, we give the free variables
  their original type and the translated type is only used when constructing the final term. -/
  visit (e : Expr) : ReplacementM Expr :=
    withTraceNode `translate_detail (fun _ => return m!"translating {e}") do
    checkCache { val := e : ExprStructEq } fun _ => do
    let e ← match e with
      | .forallE .. => visitForall e
      | .lam ..     => visitLambda e []
      | .letE ..    => visitLet e
      | .mdata _ b  => return e.updateMData! (← visit b)
      | .proj ..    => visitApp e
      | .app ..     => visitApp e
      | .const ..   => visitApp e
      | _           => pure e
    trace[translate_detail] "result: {e}"
    return e
  visitApp (e : Expr) := e.withApp fun f args ↦ do
    let env ← getEnv
    match f with
    | .proj n i b =>
      let some info := getStructureInfo? env n |
        return mkAppN (f.updateProj! (← visit b)) (← args.mapM visit) -- e.g. if `n` is `Exists`
      let some projName := info.getProjFn? i | unreachable!
      -- if `projName` has a translation, replace `f` with the application `projName s`
      -- and then visit `projName s args` again.
      if findTranslation? env t projName |>.isNone then
        return mkAppN (f.updateProj! (← visit b)) (← args.mapM visit)
      visit <| (← whnfD (← inferType b)).withApp fun bf bargs ↦
        mkAppN (.app (mkAppN (.const projName bf.constLevels!) bargs) b) args
    | .const n₀ ls₀ =>
      -- Replace numeral `1` with `0` in applications of `OfNat` and `OfNat.ofNat`.
      if h : t.changeNumeral ∧ (n₀ matches ``OfNat | ``OfNat.ofNat) ∧ 2 ≤ args.size then
        if args[1] == mkRawNatLit 1 then
          if (← shouldTranslate env t args[0]).isNone then
            -- In this case, we still update all arguments of `g` that are not numerals,
            -- since all other arguments can contain subexpressions like
            -- `(fun x ↦ ℕ) (1 : G)`, and we have to update the `(1 : G)` to `(0 : G)`
            trace[translate_detail] "applyReplacementFun: We change the numeral in this \
              expression to 0. However, we will still recurse into all the non-numeral arguments."
            let args := args.set 1 (mkRawNatLit 0)
            return mkAppN f (← args.mapM visit)
      let some { translation := n₁, reorder, relevantArg } ← findPrefixTranslation? n₀ t |
        return mkAppN f (← args.mapM visit)
      -- Use `relevantArg` to test if the head should be translated.
      if let .arg relevantArg := relevantArg then
        if h : relevantArg < args.size then
          if let some fixed ← shouldTranslate (← getEnv) t args[relevantArg] then
            trace[translate_detail]
              "The application of {n₀} contains the fixed type {fixed} so it is not changed."
            return mkAppN f (← args.mapM visit)
      let { univReorder, reorder } := reorder
      -- If the number of arguments is too small for `reorder`, we need to eta expand first
      if args.size < reorder.range then
        let e' ← etaExpandN (reorder.range - args.size) e
        trace[translate_detail] "eta expanded {e} to {e'}"
        return ← visit e'
      let f' := Expr.const n₁ (univReorder.permuteList! ls₀)
      trace[translate_detail]"changing {f} to {f'}"
      unless reorder.perm.isEmpty do
        trace[translate_detail]
          "reordering the arguments of {f'} using the cyclic permutations {reorder.perm}"
      let mut args := args
      /- It would be possible to, instead of calling `reorderLambda`,
      do the reordering of arguments as part of the main loop. This would be more efficient,
      but since this is a rare case, this will likely not save a significant amount of time. -/
      for (arg, argReorder) in reorder.argReorders do
        args ← args.modifyM arg (reorderLambda argReorder ·)
      args := reorder.permute! args
      return mkAppN f' (← args.mapM visit)
    | .lam .. => return mkAppN (← visitLambda f args.toList) (← args.mapM visit)
    | _ => return mkAppN (← visit f) (← args.mapM visit)
  /- In `visitLambda`, `visitForall` and `visitLet`,
  we use a fresh `tmpLCtx : LocalContext` to store the translated types of the free variables.
  This is because the local context in the `MetaM` monad stores their original types.

  In `visitLambda`, we keep track of the value of  variables, which helps in `shouldTranslate`. -/
  visitLambda (e : Expr) (values : List Expr) (fvars : Array Expr := #[])
      (tmpLCtx : LocalContext := {}) := do
    if let .lam n d b bi := e then
      let d := d.instantiateRev fvars
      let d' ← visit d
      if let value :: values := values then
        withLetDecl n d value fun x =>
          visitLambda b values (fvars.push x) (tmpLCtx.mkLocalDecl x.fvarId! n d' bi)
      else
        withLocalDecl n bi d fun x =>
          visitLambda b values (fvars.push x) (tmpLCtx.mkLocalDecl x.fvarId! n d' bi)
    else
      let e ← visit (e.instantiateRev fvars)
      return tmpLCtx.mkLambda fvars e
  visitForall (e : Expr) (fvars : Array Expr := #[]) (tmpLCtx : LocalContext := {}) := do
    if let .forallE n d b bi := e then
      let d := d.instantiateRev fvars
      let d' ← visit d
      withLocalDecl n bi d fun x =>
        visitForall b (fvars.push x) (tmpLCtx.mkLocalDecl x.fvarId! n d' bi)
    else
      let e ← visit (e.instantiateRev fvars)
      return tmpLCtx.mkForall fvars e
  visitLet (e : Expr) (fvars : Array Expr := #[]) (tmpLCtx : LocalContext := {}) := do
    if let .letE n t v b nondep := e then
      let t := t.instantiateRev fvars; let v := v.instantiateRev fvars
      let t' ← visit t; let v' ← visit v
      withLetDecl n t v (nondep := nondep) fun x =>
        visitLet b (fvars.push x) (tmpLCtx.mkLetDecl x.fvarId! n t' v' nondep)
    else
      let e ← visit (e.instantiateRev fvars)
      -- Note that `mkLambda` will make `let` expressions because it will see the `LocalDecl.ldecl`.
      return tmpLCtx.mkLambda (usedLetOnly := false) fvars e

/-- Rename binder names in pi type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
