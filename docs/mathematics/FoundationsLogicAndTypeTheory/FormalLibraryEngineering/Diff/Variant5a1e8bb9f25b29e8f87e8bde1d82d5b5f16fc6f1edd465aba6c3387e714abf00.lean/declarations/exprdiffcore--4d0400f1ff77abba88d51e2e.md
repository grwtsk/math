# exprDiffCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e2fc23abba7016f136cfce191a7f6c6941c266d464a7420457a1eefeef990d3",
  "kind": "def",
  "lexical_name": "exprDiffCore",
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
  "slug": "exprdiffcore--4d0400f1ff77abba88d51e2e",
  "source": {
    "blob": "77d4c076f068b4b9892a95cd0698c4fafc59edc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0400f1ff77abba88d51e2eb7d89de9187084029d72787253d21a77eb2012a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e2fc23abba7016f136cfce191a7f6c6941c266d464a7420457a1eefeef990d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def exprDiffCore (before after : SubExpr) : MetaM ExprDiff := do
  if before.expr == after.expr then
    return ∅
  match before.expr, after.expr with
  | .mdata _ e₀, _ => exprDiffCore {before with expr := e₀} after
  | _, .mdata _ e₁ => exprDiffCore before {after with expr := e₁}
  | .app .., .app .. =>
    let (fn₀, args₀) := after.expr.withApp Prod.mk
    let (fn₁, args₁) := before.expr.withApp Prod.mk
    if fn₀ != fn₁ || args₀.size != args₁.size then
      return ExprDiff.withChange before after
    let args := Array.zip args₀ args₁
    let args ← args.mapIdxM (fun i (beforeArg, afterArg) =>
      exprDiffCore
        ⟨beforeArg, before.pos.pushNaryArg args₀.size i⟩
        ⟨afterArg,  after.pos.pushNaryArg  args₀.size i⟩
    )
    return args.foldl (init := ∅) (· ++ ·)
  | .forallE .., _ => piDiff before after
  | .lam n₀ d₀ b₀ i₀, .lam n₁ d₁ b₁ i₁=>
    if n₀ != n₁ || i₀ != i₁ then
      return ExprDiff.withChange before after
    let δd ← exprDiffCore ⟨d₀, before.pos.pushBindingDomain⟩ ⟨d₁, after.pos.pushBindingDomain⟩
    if δd.isEmpty then
      return ← exprDiffCore ⟨b₀, before.pos.pushBindingBody⟩ ⟨b₁, after.pos.pushBindingBody⟩
    else
      return δd ++ ExprDiff.withChangePos before.pos.pushBindingBody after.pos.pushBindingBody
  | .proj n₀ i₀ e₀, .proj n₁ i₁ e₁ =>
    if n₀ != n₁ || i₀ != i₁ then
      return ExprDiff.withChange before after
    else
      exprDiffCore ⟨e₀, before.pos.pushProj⟩ ⟨e₁, after.pos.pushProj⟩
  | _, _ => return ExprDiff.withChange before after
  where
    piDiff (before after : SubExpr) : MetaM ExprDiff := do
      let .forallE n₀ d₀ b₀ i₀ := before.expr
        | return ∅
      if let .forallE n₁ d₁ b₁ i₁ := after.expr then
        if n₀ == n₁ && i₀ == i₁ then
          -- assume that these are the same binders
          let δd ← exprDiffCore
            ⟨d₀, before.pos.pushBindingDomain⟩
            ⟨d₁, after.pos.pushBindingDomain⟩
          if δd.isEmpty then
            -- the types have changed, so we can no longer meaningfully compare the targets
            let δt ← Lean.Meta.withLocalDecl n₀ i₀ d₀ fun x =>
              exprDiffCore
                ⟨b₀.instantiate1 x, before.pos.pushBindingBody⟩
                ⟨b₁.instantiate1 x, after.pos.pushBindingBody⟩
            return δt
          else
            return δd ++ ExprDiff.withChangePos before.pos.pushBindingBody after.pos.pushBindingBody
      -- in this case, the after expression does not match the before expression.
      -- however, a special case is intros:
      if let some s := List.isSuffixOf? after.expr.getForallBinderNames before.expr.getForallBinderNames then
        -- s ++ namesAfter = namesBefore
        if s.length == 0 then
          throwError "should not happen"
        let body₀ := before.expr.getForallBodyMaxDepth s.length
        let mut δ : ExprDiff ← (do
          -- this line can fail if we are using `before`'s mvar context, in which case
          -- we can skip giving a diff.
          let fvars ← s.mapM Lean.Meta.getFVarFromUserName
          return ← exprDiffCore
            ⟨body₀.instantiateRev fvars.toArray, before.pos.pushNthBindingBody s.length⟩
            after
        ) <|> (pure ∅)
        for i in *...s.length do
          δ := δ.insertBeforeChange (before.pos.pushNthBindingDomain i) .delete
        -- [todo] maybe here insert a tag on the after case indicating an expression was deleted above the expression?
        return δ
      return ExprDiff.withChange before after

/-- Computes the diff for `e₀` and `e₁`. If `useAfter` is `false`, `e₀, e₁` are interpreted as `after, before` instead of `before, after`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variant5a1e8bb9f25b29e8f87e8bde1d82d5b5f16fc6f1edd465aba6c3387e714abf00.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d4c076f068b4b9892a95cd0698c4fafc59edc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
