# mkCongrOfAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdcbd9eb233f0523c1fd0ed5ff4052b13542647dfea568c889470e9bd9aa2028",
  "kind": "def",
  "lexical_name": "mkCongrOfAux",
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
  "slug": "mkcongrofaux--2410ba6fd9c7f88d5baa1fd0",
  "source": {
    "blob": "0623f8b1fc5d36eb06aa5771519f24d226b99e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 484,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2410ba6fd9c7f88d5baa1fd0aea341284d6d5252ab4b6d3c98ef9b9c7252508b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdcbd9eb233f0523c1fd0ed5ff4052b13542647dfea568c889470e9bd9aa2028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkCongrOfAux (depth : Nat) (mvarCounterSaved : Nat) (lhs rhs : Expr) :
    M CongrResult := do
  trace[Elab.congr] "mkCongrOf: {depth}, {lhs}, {rhs}, {(← mkFreshExprMVar none).mvarId!}"
  if depth > 1000 then
    throwError "congr(...) internal error: out of gas"
  -- Potentially metavariables get assigned as we process congruence holes,
  -- so instantiate them to be safe. Placeholders and implicit arguments might
  -- end up with congruence holes, so they indeed might need a nontrivial congruence.
  let lhs ← instantiateMVars lhs
  let rhs ← instantiateMVars rhs
  checkCache (lhs, rhs) fun _ => do
    if let some res ← mkCongrOfCHole? mvarCounterSaved lhs rhs then
      trace[Elab.congr] "hole processing succeeded"
      return res
    if lhs == rhs then
      -- There should not be any cHoles, but to be safe let's remove them.
      return { lhs := removeCHoles lhs, rhs := removeCHoles rhs, pf? := none }
    if (hasCHole mvarCounterSaved lhs).isNone && (hasCHole mvarCounterSaved rhs).isNone then
      -- It's safe to fastforward if the lhs and rhs are defeq and have no congruence holes.
      -- This is more conservative than necessary since congruence holes might only be inside
      -- proofs, and it is OK to ignore these.
      if ← isDefEq lhs rhs then
        return { lhs, rhs, pf? := none }
    if ← (isProof lhs <||> isProof rhs) then
      -- We don't want to look inside proofs at all.
      return ← CongrResult.mkDefault lhs rhs
    match lhs, rhs with
    | .app .., .app .. =>
      mkCongrOfApp depth mvarCounterSaved lhs rhs
    | .lam .., .lam .. =>
      trace[Elab.congr] "lam"
      let resDom ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs.bindingDomain! rhs.bindingDomain!
      -- We do not yet support congruences in the binding domain for lambdas.
      discard <| resDom.defeq
      withLocalDecl lhs.bindingName! lhs.bindingInfo! resDom.lhs fun x => do
        let lhsb := lhs.bindingBody!.instantiate1 x
        let rhsb := rhs.bindingBody!.instantiate1 x
        let resBody ← mkCongrOfAux (depth + 1) mvarCounterSaved lhsb rhsb
        let lhs ← mkLambdaFVars #[x] resBody.lhs
        let rhs ← mkLambdaFVars #[x] resBody.rhs
        if resBody.isRfl then
          return {lhs, rhs, pf? := none}
        else
          let pf ← mkLambdaFVars #[x] (← resBody.eq)
          return CongrResult.mk' lhs rhs (← mkAppM ``funext #[pf])
    | .forallE .., .forallE .. =>
      trace[Elab.congr] "forallE"
      let resDom ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs.bindingDomain! rhs.bindingDomain!
      if lhs.isArrow && rhs.isArrow then
        let resBody ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs.bindingBody! rhs.bindingBody!
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
          let resBody ← mkCongrOfAux (depth + 1) mvarCounterSaved lhsb rhsb
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
      mkCongrOfAux (depth + 1) mvarCounterSaved lhs rhs
    | .mdata _ lhs', .mdata _ rhs' =>
      trace[Elab.congr] "mdata"
      let res ← mkCongrOfAux (depth + 1) mvarCounterSaved lhs' rhs'
      return {res with lhs := lhs.updateMData! res.lhs, rhs := rhs.updateMData! res.rhs}
    | .proj n1 i1 e1, .proj n2 i2 e2 =>
      trace[Elab.congr] "proj"
      -- Only handles defeq at the moment.
      unless n1 == n2 && i1 == i2 do
        throwCongrEx lhs rhs "Incompatible primitive projections"
      let res ← mkCongrOfAux (depth + 1) mvarCounterSaved e1 e2
      discard <| res.defeq
      return {lhs := lhs.updateProj! res.lhs, rhs := rhs.updateProj! res.rhs, pf? := none}
    | _, _ =>
      trace[Elab.congr] "base case"
      CongrResult.mkDefault' mvarCounterSaved lhs rhs

/--
Generate congruence for applications `lhs` and `rhs`.
Key detail: functions might be *overapplied* due to the values of their arguments.
For example, `id id 2` is overapplied.
To handle these, we need to segment the applications into their natural arities,
since `mkHCongrWithArity'` does not know how to generate congruence lemmas for the overapplied case.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0623f8b1fc5d36eb06aa5771519f24d226b99e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
