# exprToMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a4c39f68e0f18cfd421a5152f24abaa804157b9182ab215e2856dbefa127ab6",
  "kind": "def",
  "lexical_name": "exprToMatcher",
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
  "slug": "exprtomatcher--87a40209784eb01f572b33c9",
  "source": {
    "blob": "3d15d52cfba8de9c4ea41db34c6bf6b8df224524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87a40209784eb01f572b33c93bac9ba6d9c61dc4da5d64d2161f26b64ecfc409",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a4c39f68e0f18cfd421a5152f24abaa804157b9182ab215e2856dbefa127ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exprToMatcher (boundFVars : Std.HashMap FVarId Name)
    (localFVars : Std.HashMap FVarId Term) (e : Expr) :
    OptionT TermElabM (List DelabKey × Term) := do
  match e with
  | .mvar .. => return ([], ← `(pure))
  | .const n _ => return ([.app n 0], ← ``(matchExpr (Expr.isConstOf · $(quote n))))
  | .sort u =>
    /-
    We should try being more accurate here.
    Prop / Type / Type _ / Sort _ is at least an OK approximation.
    We mimic the core Sort delaborator `Lean.PrettyPrinter.Delaborator.delabSort`.
    -/
    let matcher ←
      if u.isZero then
        ``(matchExpr Expr.isProp)
      else if e.isType0 then
        ``(matchExpr Expr.isType0)
      else if u.dec.isSome then
        ``(matchExpr isType')
      else
        ``(matchExpr Expr.isSort)
    return ([.other `sort], matcher)
  | .fvar fvarId =>
    if let some n := boundFVars[fvarId]? then
      -- This fvar is a pattern variable.
      return ([], ← ``(matchVar $(quote n)))
    else if let some s := localFVars[fvarId]? then
      -- This fvar is bound by a lambda or forall expression in the pattern itself
      return ([], ← ``(matchExpr (· == $s)))
    else
      let n ← fvarId.getUserName
      if n.hasMacroScopes then
        -- Match by just the type; this is likely an unnamed instance for example
        let (_, m) ← exprToMatcher boundFVars localFVars (← instantiateMVars (← inferType e))
        return ([.other `fvar], ← ``(matchTypeOf $m))
      else
        -- This is an fvar from a `variable`. Match by name and type.
        let (_, m) ← exprToMatcher boundFVars localFVars (← instantiateMVars (← inferType e))
        return ([.other `fvar], ← ``(matchFVar $(quote n) $m))
  | .app .. =>
    e.withApp fun f args => do
      let (keys, matchF) ←
        if let .const n _ := f then
          pure ([.app n args.size], ← ``(matchExpr (Expr.isConstOf · $(quote n))))
        else
          let (_, matchF) ← exprToMatcher boundFVars localFVars f
          pure ([.app none args.size], matchF)
      let mut fty ← inferType f
      let mut matcher := matchF
      for arg in args do
        fty ← whnf fty
        guard fty.isForall
        let bi := fty.bindingInfo!
        fty := fty.bindingBody!.instantiate1 arg
        if bi.isInstImplicit then
          -- Assumption: elaborated instances are canonical, so no need to match.
          -- The type of the instance is already accounted for by the previous arguments
          -- and the type of `f`.
          matcher ← ``(matchApp $matcher pure)
        else
          let (_, matchArg) ← exprToMatcher boundFVars localFVars arg
          matcher ← ``(matchApp $matcher $matchArg)
      return (keys, matcher)
  | .lit (.natVal n) => return ([.other `lit], ← ``(natLitMatcher $(quote n)))
  | .forallE n t b bi =>
    let (_, matchDom) ← exprToMatcher boundFVars localFVars t
    withLocalDecl n bi t fun arg => withFreshMacroScope do
      let n' ← `(n)
      let body := b.instantiate1 arg
      let localFVars' := localFVars.insert arg.fvarId! n'
      let (_, matchBody) ← exprToMatcher boundFVars localFVars' body
      return ([.other `forallE], ← ``(matchForall $matchDom (fun $n' => $matchBody)))
  | .lam n t b bi =>
    let (_, matchDom) ← exprToMatcher boundFVars localFVars t
    withLocalDecl n bi t fun arg => withFreshMacroScope do
      let n' ← `(n)
      let body := b.instantiate1 arg
      let localFVars' := localFVars.insert arg.fvarId! n'
      let (_, matchBody) ← exprToMatcher boundFVars localFVars' body
      return ([.other `lam], ← ``(matchLambda $matchDom (fun $n' => $matchBody)))
  | _ =>
    trace[notation3] "can't generate matcher for {e}"
    failure

/-- Returns a `Term` that represents a `Matcher` for the given pattern `stx`.
The `boundNames` set determines which identifiers are variables in the pattern.
Fails in the `OptionT` sense if it comes across something it's unable to handle.

Also returns constant names that could serve as a key for a delaborator.
For example, if it's for a function `f`, then `app.f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d15d52cfba8de9c4ea41db34c6bf6b8df224524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
