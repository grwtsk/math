# simpHaveTelescopeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d202f616127dcf71d25a84f65fca3ccd813de60cda14a199c837d564d5799b",
  "kind": "def",
  "lexical_name": "simpHaveTelescopeAux",
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
  "slug": "simphavetelescopeaux--82b6547305db2d87ef76723e",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82b6547305db2d87ef76723e4ae0c97a6327cd24c24615ede6686422ad2f14a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d202f616127dcf71d25a84f65fca3ccd813de60cda14a199c837d564d5799b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def simpHaveTelescopeAux (info : HaveTelescopeInfo) (fixed : Array Bool) (used : Array Bool)
      (e : Expr) (i : Nat) (xs : Array Expr) : m SimpHaveResult := do
  if h : i < info.haveInfo.size then
    let hinfo := info.haveInfo[i]
    -- `x` and `val` are the fvar and value with respect to the local context.
    let x := hinfo.decl.toExpr
    let val := hinfo.decl.value true
    -- Invariant: `v == val.abstract xs`.
    let .letE n t v b true := e | unreachable!
    -- Universe levels to use for each of the `have_*` theorems. It's the level of `val` and the level of the body.
    let us := [hinfo.level, info.level]
    if !used.getD i true then
      /-
      Unused `have`: do not add `x` to the local context then `simp` only the body.
      -/
      (do trace[Debug.Meta.Tactic.simp] "have telescope; unused {n} := {val}" : MetaM _)
      /-
      Complication: Unused `have`s might only be transitively unused.
      This means that `b.hasLooseBVar 0` might actually be true.
      This matters because `t` and `v` appear in the proof term.
      We use a dummy `x` for debugging purposes. (Recall that `Expr.abstract` skips non-fvar/mvars.)
      -/
      let x := mkConst `_simp_let_unused_dummy
      let rb ← simpHaveTelescopeAux info fixed used b (i + 1) (xs.push x)
      -- TODO(kmill): This is a source of quadratic complexity. It might be possible to avoid this,
      -- but we will need to carefully re-review the logic (note that `rb.proof` still refers to `x`).
      let expr := rb.expr.lowerLooseBVars 1 1
      let exprType := rb.exprType.lowerLooseBVars 1 1
      let exprInit := mkApp (mkLambda n .default t rb.exprInit) v
      let exprResult := rb.exprResult.lowerLooseBVars 1 1
      if rb.modified then
        let proof := mkApp6 (mkConst ``have_unused_dep' us) t exprType v (mkLambda n .default t rb.exprInit) expr
          (mkLambda n .default t rb.proof)
        return { expr, exprType, exprInit, exprResult, proof, modified := true }
      else
        -- If not modified, this must have been a non-transitively unused `have`, so no need for `dep` form.
        let proof := mkApp6 (mkConst ``have_unused' us) t exprType v expr expr
          (mkApp2 (mkConst ``Eq.refl [info.level]) exprType expr)
        return { expr, exprType, exprInit, exprResult, proof, modified := true }
    else if fixed.getD i true then
      /-
      Fixed `have` (like `CongrArgKind.fixed`): dsimp the value and simp the body.
      The variable appears in the type of the body.
      -/
      let val' ← MonadSimp.dsimp val
      (do trace[Debug.Meta.Tactic.simp] "have telescope; fixed {n} := {val} => {val'}" : MetaM _)
      let vModified := val != val'
      let v' := if vModified then val'.abstract xs else v
      withExistingLocalDecls [hinfo.decl] <| MonadSimp.withNewLemmas #[x] do
        let rb ← simpHaveTelescopeAux info fixed used b (i + 1) (xs.push x)
        let expr := mkApp (mkLambda n .default t rb.expr) v'
        let exprType := mkApp (mkLambda n .default t rb.exprType) v'
        let exprInit := mkApp (mkLambda n .default t rb.exprInit) v
        let exprResult := mkHave n t v' rb.exprResult
        -- Note: if `vModified`, then the kernel will reduce the telescopes and potentially do an expensive defeq check.
        -- If this is a performance issue, we could try using a `letFun` encoding here make use of the `is_def_eq_args` optimization.
        -- Namely, to guide the defeqs via the sequence
        --   `(fun x => b) v` = `letFun (fun x => b) v` = `letFun (fun x => b) v'` = `(fun x => b) v'`
        if rb.modified then
          let proof := mkApp6 (mkConst ``have_body_congr_dep' us) t (mkLambda n .default t rb.exprType) v'
            (mkLambda n .default t rb.exprInit) (mkLambda n .default t rb.expr) (mkLambda n .default t rb.proof)
          return { expr, exprType, exprInit, exprResult, proof, modified := true }
        else
          let proof := mkApp2 (mkConst ``Eq.refl [info.level]) exprType expr
          return { expr, exprType, exprInit, exprResult, proof, modified := vModified }
    else
      /-
      Non-fixed `have` (like `CongrArgKind.eq`): simp both the value and the body.
      The variable does not appear in the type of the body.
      -/
      let (v', valModified, vproof) ← match (← MonadSimp.simp val) with
        | .rfl => pure (v, false, mkApp2 (mkConst `Eq.refl [hinfo.level]) t v)
        | .step val' h =>
          (do trace[Debug.Meta.Tactic.simp] "have telescope; non-fixed {n} := {val} => {val'}" : MetaM _)
          pure (val'.abstract xs, true, h.abstract xs)
      withExistingLocalDecls [hinfo.decl] <| MonadSimp.withNewLemmas #[x] do
        let rb ← simpHaveTelescopeAux info fixed used b (i + 1) (xs.push x)
        let expr := mkApp (mkLambda n .default t rb.expr) v'
        assert! !rb.exprType.hasLooseBVar 0
        let exprType := rb.exprType.lowerLooseBVars 1 1
        let exprInit := mkApp (mkLambda n .default t rb.exprInit) v
        let exprResult := mkHave n t v' rb.exprResult
        match valModified, rb.modified with
        | false, false =>
          let proof := mkApp2 (mkConst `Eq.refl [info.level]) exprType expr
          return { expr, exprType, exprInit, exprResult, proof, modified := false }
        | true, false =>
          let proof := mkApp6 (mkConst ``have_val_congr' us) t exprType v v'
            (mkLambda n .default t rb.exprInit) vproof
          return { expr, exprType, exprInit, exprResult, proof, modified := true }
        | false, true =>
          let proof := mkApp6 (mkConst ``have_body_congr' us) t exprType v
            (mkLambda n .default t rb.exprInit) (mkLambda n .default t rb.expr) (mkLambda n .default t rb.proof)
          return { expr, exprType, exprInit, exprResult, proof, modified := true }
        | true, true =>
          let proof := mkApp8 (mkConst ``have_congr' us) t exprType v v'
            (mkLambda n .default t rb.exprInit) (mkLambda n .default t rb.expr) vproof (mkLambda n .default t rb.proof)
          return { expr, exprType, exprInit, exprResult, proof, modified := true }
  else
    -- Base case: simplify the body.
    (do trace[Debug.Meta.Tactic.simp] "have telescope; simplifying body {info.body}" : MetaM _)
    let exprType := info.bodyType.abstract xs
    match (← MonadSimp.simp info.body) with
    | .rfl =>
      let proof := mkApp2 (mkConst `Eq.refl [info.level]) exprType e
      return { expr := e, exprType, exprInit := e, exprResult := e, proof, modified := false }
    | .step body' h =>
      let expr := body'.abstract xs
      let proof := h.abstract xs
      -- Optimization: if the proof is a `simpHaveTelescope` proof, then remove the type hint
      -- to avoid the zeta/beta reductions that the kernel would otherwise do.
      -- In `SimpHaveResult.toResult` we insert two type hints; the inner one
      -- encodes the `exprInit` and `expr`.
      let detectSimpHaveLemma (proof : Expr) : Option SimpHaveResult := do
        let_expr id eq proof' := proof | failure
        guard <| eq.isAppOfArity ``Eq 3
        let_expr id eq' proof'' := proof' | failure
        let_expr Eq _ lhs rhs := eq' | failure
        let .const n _ := proof''.getAppFn | failure
        guard (n matches ``have_unused_dep' | ``have_unused' | ``have_body_congr_dep' | ``have_val_congr' | ``have_body_congr' | ``have_congr')
        return { expr := rhs, exprType, exprInit := lhs, exprResult := expr, proof := proof'', modified := true }
      if let some res := detectSimpHaveLemma proof then
        return res
      return { expr, exprType, exprInit := e, exprResult := expr, proof, modified := true }

/-- Configuration for specifying how unused let-declarations are eliminated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
