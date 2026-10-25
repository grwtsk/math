# Congr!.mkHCongrThm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46fc1cc94c100d1cfe27eac195faf8ea65121e5ec6f8987ee608d8c99add64d1",
  "kind": "def",
  "lexical_name": "Congr!.mkHCongrThm",
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
  "slug": "congr-mkhcongrthm--1a3891968a5d7aba8040ea3c",
  "source": {
    "blob": "c3c4de23449c1822e987fa2b2b16809b1de82fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 236,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a3891968a5d7aba8040ea3c4b571a7846c5c8dd8d84e20ad85bae03c469011e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46fc1cc94c100d1cfe27eac195faf8ea65121e5ec6f8987ee608d8c99add64d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Congr!.mkHCongrThm (fType : Expr) (info : FunInfo)
    (fixedFun : Bool := false) (fixedParams : Array Bool := #[]) :
    MetaM (Expr × Expr) := do
  trace[congr!.synthesize] "ftype: {fType}"
  trace[congr!.synthesize] "deps: {info.paramInfo.map (fun p => p.backDeps)}"
  trace[congr!.synthesize] "fixedFun={fixedFun}, fixedParams={fixedParams}"
  doubleTelescope fType info.getArity fixedParams fun xs ys fixedParams => do
    trace[congr!.synthesize] "xs = {xs}"
    trace[congr!.synthesize] "ys = {ys}"
    trace[congr!.synthesize] "computed fixedParams={fixedParams}"
    let lctx := (← getLCtx) -- checkpoint of local context that only has parameters
    withLocalDeclD `f fType fun ef => withLocalDeclD `f' fType fun pef' => do
    let ef' := if fixedFun then ef else pef'
    withLocalDeclD `e (← mkEq ef ef') fun ee => do
    withNewEqs xs ys fixedParams fun eqs => do
      let fParams := if fixedFun then #[ef] else #[ef, ef', ee]
      let mut hs := fParams     -- parameters to the basic congruence lemma
      let mut hs' := fParams    -- parameters to the richer congruence lemma
      let mut vals' := fParams  -- how to calculate the basic parameters from the richer ones
      for i in [0 : info.getArity] do
        hs := hs.push xs[i]!
        hs' := hs'.push xs[i]!
        vals' := vals'.push xs[i]!
        if let some (eq, eq', val) := eqs[i]! then
          -- Not a fixed argument
          hs := hs.push ys[i]! |>.push eq
          hs' := hs'.push ys[i]! |>.push eq'
          vals' := vals'.push ys[i]! |>.push val
      -- Generate the theorem with respect to the simpler hypotheses
      let congrType ← mkForallFVars hs (← mkHEq (mkAppN ef xs) (mkAppN ef' ys))
      trace[congr!.synthesize] "simple congrType: {congrType}"
      let some proof ← withLCtx lctx (← getLocalInstances) <| trySolve congrType
        | throwError "Internal error when constructing congruence lemma proof"
      -- At this point, `mkLambdaFVars hs' (mkAppN proof vals')` is the richer proof.
      -- We try to precompute some of the arguments using `trySolve`.
      let mut hs'' := #[] -- eq' parameters that are actually used beyond those in `fParams`
      let mut pfVars := #[] -- eq' parameters that can be solved for already
      let mut pfVals := #[] -- the values to use for these parameters
      for i in [0 : info.getArity] do
        hs'' := hs''.push xs[i]!
        if let some (_, eq', _) := eqs[i]! then
          -- Not a fixed argument
          hs'' := hs''.push ys[i]!
          let pf? ← withLCtx lctx (← getLocalInstances) <| trySolve (← inferType eq')
          if let some pf := pf? then
            pfVars := pfVars.push eq'
            pfVals := pfVals.push pf
          else
            hs'' := hs''.push eq'
      -- Take `proof`, abstract the pfVars and provide the solved-for proofs (as an
      -- optimization for proof term size) then abstract the remaining variables.
      -- The `usedOnly` probably has no affect.
      -- Note that since we are doing `proof.beta vals'` there is technically some quadratic
      -- complexity, but it shouldn't be too bad since they're some applications of just variables.
      let proof' ← mkLambdaFVars fParams (← mkLambdaFVars (usedOnly := true) hs''
                    (mkAppN (← mkLambdaFVars pfVars (proof.beta vals')) pfVals))
      return (← inferType proof', proof')
where
  /-- Similar to doing `forallBoundedTelescope` twice, but makes use of the `fixed` array, which
  is used as a hint for whether both variables should be the same. This is only a hint though,
  since we respect it only if the binding domains are equal.
  We affix `'` to the second list of variables, and all the variables are introduced
  with default binder info. Calls `k` with the xs, ys, and a revised `fixed` array -/
  doubleTelescope {α} (fty : Expr) (numVars : Nat) (fixed : Array Bool)
      (k : Array Expr → Array Expr → Array Bool → MetaM α) : MetaM α := do
    let rec loop (i : Nat)
        (ftyx ftyy : Expr) (xs ys : Array Expr) (fixed' : Array Bool) : MetaM α := do
      if i < numVars then
        let ftyx ← whnf ftyx
        let ftyy ← whnf ftyy
        unless ftyx.isForall do
          throwError "doubleTelescope: function doesn't have enough parameters"
        withLocalDeclD ftyx.bindingName! ftyx.bindingDomain! fun fvarx => do
          let ftyx' := ftyx.bindingBody!.instantiate1 fvarx
          if fixed.getD i false && ftyx.bindingDomain! == ftyy.bindingDomain! then
            -- Fixed: use the same variable for both
            let ftyy' := ftyy.bindingBody!.instantiate1 fvarx
            loop (i + 1) ftyx' ftyy' (xs.push fvarx) (ys.push fvarx) (fixed'.push true)
          else
            -- Not fixed: use different variables
            let yname := ftyy.bindingName!.appendAfter "'"
            withLocalDeclD yname ftyy.bindingDomain! fun fvary => do
              let ftyy' := ftyy.bindingBody!.instantiate1 fvary
              loop (i + 1) ftyx' ftyy' (xs.push fvarx) (ys.push fvary) (fixed'.push false)
      else
        k xs ys fixed'
    loop 0 fty fty #[] #[] #[]
  /-- Introduce variables for equalities between the arrays of variables. Uses `fixedParams`
  to control whether to introduce an equality for each pair. The array of triples passed to `k`
  consists of (1) the simple congr lemma HEq arg, (2) the richer HEq arg, and (3) how to
  compute 1 in terms of 2. -/
  withNewEqs {α} (xs ys : Array Expr) (fixedParams : Array Bool)
      (k : Array (Option (Expr × Expr × Expr)) → MetaM α) : MetaM α :=
    let rec loop (i : Nat) (eqs : Array (Option (Expr × Expr × Expr))) := do
      if i < xs.size then
        let x := xs[i]!
        let y := ys[i]!
        if fixedParams[i]! then
          loop (i+1) (eqs.push none)
        else
          let deps := info.paramInfo[i]!.backDeps.filterMap (fun j => eqs[j]!)
          let eq' ← mkForallFVars (deps.map fun (eq, _, _) => eq) (← mkEqHEq x y)
          withLocalDeclD ((`e).appendIndexAfter (i+1)) (← mkEqHEq x y) fun h =>
          withLocalDeclD ((`e').appendIndexAfter (i+1)) eq' fun h' =>
            let v := mkAppN h' (deps.map fun (_, _, val) => val)
            loop (i+1) (eqs.push (h, h', v))
      else
        k eqs
    loop 0 #[]
  /-- Given a type that is a bunch of equalities implying a goal (for example, a basic
  congruence lemma), prove it if possible. Basic congruence lemmas should be provable by this.
  There are some extra tricks for handling arguments to richer congruence lemmas. -/
  trySolveCore (mvarId : MVarId) : MetaM Unit := do
    -- First cleanup the context since we're going to do `substEqs` and we don't want to
    -- accidentally use variables not actually used by the theorem.
    let mvarId ← mvarId.cleanup
    let (_, mvarId) ← mvarId.intros
    let mvarId := (← mvarId.substEqs).getD mvarId
    try mvarId.refl; return catch _ => pure ()
    try mvarId.hrefl; return catch _ => pure ()
    if ← mvarId.proofIrrelHeq then return
    -- Make the goal be an eq and then try `Subsingleton.elim`
    let mvarId ← mvarId.heqOfEq
    if ← mvarId.subsingletonElim then return
    -- We have no more tricks.
    throwError "was not able to solve for proof"
  trySolve (ty : Expr) : MetaM (Option Expr) := observing? do
    let mvar ← mkFreshExprMVar ty
    trace[congr!.synthesize] "trySolve {mvar.mvarId!}"
    -- The proofs we generate shouldn't require unfolding anything.
    withReducible <| trySolveCore mvar.mvarId!
    trace[congr!.synthesize] "trySolve success!"
    let pf ← instantiateMVars mvar
    return pf

/-- Returns whether or not it's reasonable to consider an equality between types `ty1` and `ty2`.
The heuristic is the following:

- If `ty1` and `ty2` are in `Prop`, then yes.
- If in whnf both `ty1` and `ty2` have the same head and if (recursively) it's reasonable to
  consider an equality between corresponding type arguments, then yes.
- Otherwise, no.

This helps keep congr from going too far and generating hypotheses like `ℝ = ℤ`.

To keep things from going out of control, there is a `maxDepth`. Additionally, if we do the check
with `maxDepth = 0` then the heuristic answers "no". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c4de23449c1822e987fa2b2b16809b1de82fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
