# mkCongrOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04ba89584ca3e7a453c1fe71ee1f3f123e9ac5fed9e46c9c3b78769e8ce7cbf7",
  "kind": "def",
  "lexical_name": "mkCongrOf",
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
  "slug": "mkcongrof--70bcdfec165eb842db8527b8",
  "source": {
    "blob": "48c2c2ac2291f3db25e5541b52945c4d78ce245d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 456,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70bcdfec165eb842db8527b8f596cee6a17d323ce224ed48e30422db7de513f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04ba89584ca3e7a453c1fe71ee1f3f123e9ac5fed9e46c9c3b78769e8ce7cbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrOf (depth : Nat) (mvarCounterSaved : Nat) (lhs rhs : Expr) :
    MetaM CongrResult := do
  trace[Elab.congr] "mkCongrOf: {depth}, {lhs}, {rhs}, {(← mkFreshExprMVar none).mvarId!}"
  if depth > 1000 then
    throwError "congr(...) internal error: out of gas"
  -- Potentially metavariables get assigned as we process congruence holes,
  -- so instantiate them to be safe. Placeholders and implicit arguments might
  -- end up with congruence holes, so they indeed might need a nontrivial congruence.
  let lhs ← instantiateMVars lhs
  let rhs ← instantiateMVars rhs
  if let some res ← mkCongrOfCHole? mvarCounterSaved lhs rhs then
    trace[Elab.congr] "hole processing succeeded"
    return res
  if (hasCHole mvarCounterSaved lhs).isNone && (hasCHole mvarCounterSaved rhs).isNone then
    -- It's safe to fastforward if the lhs and rhs are defeq and have no congruence holes.
    -- This is more conservative than necessary since congruence holes might only be inside proofs.
    if ← isDefEq lhs rhs then
      return {lhs, rhs, pf? := none}
  if ← (isProof lhs <||> isProof rhs) then
    -- We don't want to look inside proofs at all.
    return ← CongrResult.mkDefault lhs rhs
  match lhs, rhs with
  | .app .., .app .. =>
    trace[Elab.congr] "app"
    let arity := lhs.getAppNumArgs
    unless arity == rhs.getAppNumArgs do
      trace[Elab.congr] "app desync (arity)"
      return ← CongrResult.mkDefault' mvarCounterSaved lhs rhs
    let f := lhs.getAppFn
    let f' := rhs.getAppFn
    unless ← isDefEq (← inferType f) (← inferType f') do
      trace[Elab.congr] "app desync (function types)"
      return ← CongrResult.mkDefault' mvarCounterSaved lhs rhs
    let fnRes ← mkCongrOf (depth + 1) mvarCounterSaved f f'
    trace[Elab.congr] "mkCongrOf functions {f}, {f'} has isRfl = {fnRes.isRfl}"
    if !fnRes.isRfl then
      -- If there's a nontrivial proof, then since mkHCongrWithArity fixes the function
      -- we need to handle this ourselves.
      let lhs := mkAppN fnRes.lhs lhs.getAppArgs
      let lhs' := mkAppN fnRes.rhs lhs.getAppArgs
      let rhs := mkAppN fnRes.rhs rhs.getAppArgs
      let mut pf ← fnRes.eq
      for arg in lhs.getAppArgs do
        pf ← mkCongrFun pf arg
      let res1 := CongrResult.mk' lhs lhs' pf
      let res2 ← mkCongrOf (depth + 1) mvarCounterSaved lhs' rhs
      return res1.trans res2
    let thm ← mkHCongrWithArity' fnRes.lhs arity
    let mut args := #[]
    let mut lhsArgs := #[]
    let mut rhsArgs := #[]
    let mut nontriv : Bool := false
    for lhs' in lhs.getAppArgs, rhs' in rhs.getAppArgs, kind in thm.argKinds do
      match kind with
      | .eq =>
        let res ← mkCongrOf (depth + 1) mvarCounterSaved lhs' rhs'
        nontriv := nontriv || !res.isRfl
        args := args |>.push res.lhs |>.push res.rhs |>.push (← res.eq)
        lhsArgs := lhsArgs.push res.lhs
        rhsArgs := rhsArgs.push res.rhs
      | .heq =>
        let res ← mkCongrOf (depth + 1) mvarCounterSaved lhs' rhs'
        nontriv := nontriv || !res.isRfl
        args := args |>.push res.lhs |>.push res.rhs |>.push (← res.heq)
        lhsArgs := lhsArgs.push res.lhs
        rhsArgs := rhsArgs.push res.rhs
      | .subsingletonInst =>
        -- Warning: we're not processing any congruence holes here.
        -- Users shouldn't be intentionally placing them in such arguments anyway.
        -- We can't throw an error because these arguments might incidentally have
        -- congruence holes by unification.
        nontriv := true
        let lhs := removeCHoles lhs'
        let rhs := removeCHoles rhs'
        args := args |>.push lhs |>.push rhs
        lhsArgs := lhsArgs.push lhs
        rhsArgs := rhsArgs.push rhs
      | _ => panic! "unexpected hcongr argument kind"
    let lhs := mkAppN fnRes.lhs lhsArgs
    let rhs := mkAppN fnRes.rhs rhsArgs
    if nontriv then
      return CongrResult.mk' lhs rhs (mkAppN thm.proof args)
    else
      -- `lhs` and `rhs` *should* be defeq, but use `mkDefault` just to be safe.
      CongrResult.mkDefault lhs rhs
  | .lam .., .lam .. =>
    trace[Elab.congr] "lam"
    let resDom ← mkCongrOf (depth + 1) mvarCounterSaved lhs.bindingDomain! rhs.bindingDomain!
    -- We do not yet support congruences in the binding domain for lambdas.
    discard <| resDom.defeq
    withLocalDecl lhs.bindingName! lhs.bindingInfo! resDom.lhs fun x => do
      let lhsb := lhs.bindingBody!.instantiate1 x
      let rhsb := rhs.bindingBody!.instantiate1 x
      let resBody ← mkCongrOf (depth + 1) mvarCounterSaved lhsb rhsb
      let lhs ← mkLambdaFVars #[x] resBody.lhs
      let rhs ← mkLambdaFVars #[x] resBody.rhs
      if resBody.isRfl then
        return {lhs, rhs, pf? := none}
      else
        let pf ← mkLambdaFVars #[x] (← resBody.eq)
        return CongrResult.mk' lhs rhs (← mkAppM ``funext #[pf])
  | .forallE .., .forallE .. =>
    trace[Elab.congr] "forallE"
    let resDom ← mkCongrOf (depth + 1) mvarCounterSaved lhs.bindingDomain! rhs.bindingDomain!
    if lhs.isArrow && rhs.isArrow then
      let resBody ← mkCongrOf (depth + 1) mvarCounterSaved lhs.bindingBody! rhs.bindingBody!
      let lhs := Expr.forallE lhs.bindingName! resDom.lhs resBody.lhs lhs.bindingInfo!
      let rhs := Expr.forallE rhs.bindingName! resDom.rhs resBody.rhs rhs.bindingInfo!
      if resDom.isRfl && resBody.isRfl then
        return {lhs, rhs, pf? := none}
      else
        return CongrResult.mk' lhs rhs (← mkImpCongr (← resDom.eq) (← resBody.eq))
    else
      -- We do not yet support congruences in the binding domain for dependent pi types.
      discard <| resDom.defeq
      withLocalDecl lhs.bindingName! lhs.bindingInfo! resDom.lhs fun x => do
        let lhsb := lhs.bindingBody!.instantiate1 x
        let rhsb := rhs.bindingBody!.instantiate1 x
        let resBody ← mkCongrOf (depth + 1) mvarCounterSaved lhsb rhsb
        let lhs ← mkForallFVars #[x] resBody.lhs
        let rhs ← mkForallFVars #[x] resBody.rhs
        if resBody.isRfl then
          return {lhs, rhs, pf? := none}
        else
          let pf ← mkLambdaFVars #[x] (← resBody.eq)
          return CongrResult.mk' lhs rhs (← mkAppM ``pi_congr #[pf])
  | .letE .., .letE .. =>
    trace[Elab.congr] "letE"
    -- Just zeta reduce for now. Could look at `Lean.Meta.Simp.simp.simpLet`
    let lhs := lhs.letBody!.instantiate1 lhs.letValue!
    let rhs := rhs.letBody!.instantiate1 rhs.letValue!
    mkCongrOf (depth + 1) mvarCounterSaved lhs rhs
  | .mdata _ lhs', .mdata _ rhs' =>
    trace[Elab.congr] "mdata"
    let res ← mkCongrOf (depth + 1) mvarCounterSaved lhs' rhs'
    return {res with lhs := lhs.updateMData! res.lhs, rhs := rhs.updateMData! res.rhs}
  | .proj n1 i1 e1, .proj n2 i2 e2 =>
    trace[Elab.congr] "proj"
    -- Only handles defeq at the moment.
    unless n1 == n2 && i1 == i2 do
      throwCongrEx lhs rhs "Incompatible primitive projections"
    let res ← mkCongrOf (depth + 1) mvarCounterSaved e1 e2
    discard <| res.defeq
    return {lhs := lhs.updateProj! res.lhs, rhs := rhs.updateProj! res.rhs, pf? := none}
  | _, _ =>
    trace[Elab.congr] "base case"
    CongrResult.mkDefault' mvarCounterSaved lhs rhs

/-! ### Elaborating congruence quotations -/

@[term_elab termCongr, inherit_doc termCongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c2c2ac2291f3db25e5541b52945c4d78ce245d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
