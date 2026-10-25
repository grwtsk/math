# instantiateRevBetaS'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdb72a9766b87b3b1e33cbe9b67de3be0427e715ef56dd6f0dec53fe9355985d",
  "kind": "def",
  "lexical_name": "instantiateRevBetaS'",
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
  "slug": "instantiaterevbetas--06c6349c1b3f0aec95ce129e",
  "source": {
    "blob": "f976326aa295b8baf1eb8fdbb5de3eaccdf26627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateS/Variant579ffb5927d82126585549ddd8a8e4dfbf742a8f2e2af71759945979969b6c6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06c6349c1b3f0aec95ce129e5f746fbe7ce7c97c151066d3f087b2f80c252a14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateS/Variant579ffb5927d82126585549ddd8a8e4dfbf742a8f2e2af71759945979969b6c6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdb72a9766b87b3b1e33cbe9b67de3be0427e715ef56dd6f0dec53fe9355985d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
partial def instantiateRevBetaS' (e : Expr) (subst : Array Expr) : AlphaShareBuilderM Expr := do
  if subst.isEmpty || !e.hasLooseBVars then return e
  visit e 0 |>.run' {}
where
  visitBVar (e : Expr) (bidx : Nat) (offset : Nat) : M Expr := do
    let n := subst.size
    if _h : bidx >= offset then
      if _h : bidx < offset + n then
        let v := subst[n - (bidx - offset) - 1]
        liftLooseBVarsS' v 0 offset
      else
        mkBVarS (bidx - n)
    else
      return e

  visitChild (e : Expr) (offset : Nat) : M Expr := do
    if offset >= e.looseBVarRange then
      return e
    else
      let key := (⟨e⟩, offset)
      if let some r := (← get)[key]? then
        return r
      else match e with
        | .bvar bidx => save key (← visitBVar e bidx offset)
        | .lit _ | .mvar _ | .fvar _ | .const _ _ | .sort _ => save key e
        | e => save key (← visit e offset)

  visitAppDefault (e : Expr) (offset : Nat) : M Expr := do
    match e with
    | .app f a =>
      let key := (⟨e⟩, offset)
      if let some r := (← get)[key]? then
        return r
      else
        save key (← e.updateAppS! (← visitAppDefault f offset) (← visitChild a offset))
    | e => visitChild e offset

  visitAppBeta (e : Expr) (f : Expr) (argsRev : Array Expr) (offset : Nat) (modified : Bool) : M Expr := do
    match f with
    | .app f a =>
      let a' ← visitChild a offset
      visitAppBeta e f (argsRev.push a') offset (modified || !isSameExpr a a')
    | .bvar bidx =>
      let f' ← visitBVar f bidx offset
      if modified || !isSameExpr f f' then
        betaRevS' f' argsRev
      else
        return e
    | _ => unreachable!

  visitApp (e : Expr) (f : Expr) (arg : Expr) (offset : Nat) (_ : e = .app f arg) : M Expr := do
    let arg' ← visitChild arg offset
    if f.getAppFn.isBVar then
      visitAppBeta e f #[arg'] offset (!isSameExpr arg arg')
    else
      e.updateAppS! (← visitAppDefault f offset) arg'

  visit (e : Expr) (offset : Nat) : M Expr := do
    match h : e with
    | .lit _ | .mvar _ | .fvar _ | .const _ _ | .sort _ => unreachable!
    | .bvar bidx => visitBVar e bidx offset
    | .app f a => visitApp e f a offset h
    | .mdata _ a => e.updateMDataS! (← visitChild a offset)
    | .proj _ _ a => e.updateProjS! (← visitChild a offset)
    | .forallE _ d b _ => e.updateForallS! (← visitChild d offset) (← visitChild b (offset+1))
    | .lam _ d b _ => e.updateLambdaS! (← visitChild d offset) (← visitChild b (offset+1))
    | .letE _ t v b _ => e.updateLetS! (← visitChild t offset) (← visitChild v offset) (← visitChild b (offset+1))

/--
Similar to `instantiateRevS`, but beta-reduces nested applications whose function becomes a lambda
after substitution.

For example, if `e` contains a subterm `#0 a` and we apply the substitution `#0 := fun x => x + 1`,
then `instantiateRevBetaS` produces `a + 1` instead of `(fun x => x + 1) a`.

This is useful when applying theorems. For example, when applying `Exists.intro`:
```
Exists.intro.{u} {α : Sort u} {p : α → Prop} (w : α) (h : p w) : Exists p
```
to a goal of the form `∃ x : Nat, p x ∧ q x`, we create metavariables `?w` and `?h`.
With `instantiateRevBetaS`, the type of `?h` becomes `p ?w ∧ q ?w` instead of
`(fun x => p x ∧ q x) ?w`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateS/Variant579ffb5927d82126585549ddd8a8e4dfbf742a8f2e2af71759945979969b6c6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateS/Variant579ffb5927d82126585549ddd8a8e4dfbf742a8f2e2af71759945979969b6c6a.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f976326aa295b8baf1eb8fdbb5de3eaccdf26627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
