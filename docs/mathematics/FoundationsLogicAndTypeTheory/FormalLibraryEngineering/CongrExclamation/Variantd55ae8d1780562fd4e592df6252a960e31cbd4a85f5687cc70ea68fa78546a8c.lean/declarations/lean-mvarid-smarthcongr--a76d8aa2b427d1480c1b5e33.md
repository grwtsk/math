# Lean.MVarId.smartHCongr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c446b6e668ffaa9b0b003aa4f4562b984fd5d4dd51c5378ffb0633db4fad45de",
  "kind": "def",
  "lexical_name": "Lean.MVarId.smartHCongr?",
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
  "slug": "lean-mvarid-smarthcongr--a76d8aa2b427d1480c1b5e33",
  "source": {
    "blob": "c39698c53abaa2d5431201f627f6fc34b2385acb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 210,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a76d8aa2b427d1480c1b5e3380ec76eb4201e62c713d87b896972696c3cc7494",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c446b6e668ffaa9b0b003aa4f4562b984fd5d4dd51c5378ffb0633db4fad45de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.MVarId.smartHCongr? (config : Congr!.Config) (mvarId : MVarId) :
    MetaM (Option (List MVarId)) :=
  mvarId.withContext do
    mvarId.checkNotAssigned `congr!
    commitWhenSome? do
      let mvarId ← mvarId.eqOfHEq
      let some (_, lhs, _, rhs) := (← withReducible mvarId.getType').heq? | return none
      if let some mvars ← loop mvarId 0 lhs rhs [] [] then
        return mvars
      -- The "correct" behavior failed. However, it's often useful
      -- to apply congruence lemmas while unfolding definitions, which is what the
      -- basic `congr` tactic does due to limitations in how congruence lemmas are generated.
      -- We simulate this behavior here by generating congruence lemmas for the LHS and RHS and
      -- then applying them.
      trace[congr!] "Default smartHCongr? failed, trying LHS/RHS method"
      let (fst, snd) := if config.preferLHS then (lhs, rhs) else (rhs, lhs)
      if let some mvars ← forSide mvarId fst then
        return mvars
      else if let some mvars ← forSide mvarId snd then
        return mvars
      else
        return none
where
  loop (mvarId : MVarId) (numArgs : Nat) (lhs rhs : Expr) (lhsArgs rhsArgs : List Expr) :
      MetaM (Option (List MVarId)) :=
    match lhs.cleanupAnnotations, rhs.cleanupAnnotations with
    | .app f a, .app f' b => do
      if not (config.numArgsOk (numArgs + 1)) then
        return none
      let lhsArgs' := a :: lhsArgs
      let rhsArgs' := b :: rhsArgs
      -- We try to generate a theorem for the maximal number of arguments
      if let some mvars ← loop mvarId (numArgs + 1) f f' lhsArgs' rhsArgs' then
        return mvars
      -- That failing, we now try for the present number of arguments.
      if not config.partialApp && f.isApp && f'.isApp then
        -- It's a partial application on both sides though.
        return none
      -- The congruence generator only handles the case where both functions have
      -- definitionally equal types.
      unless ← withNewMCtxDepth <| isDefEq (← inferType f) (← inferType f') do
        return none
      let funDefEq ← withReducible <| withNewMCtxDepth <| isDefEq f f'
      if config.sameFun && not funDefEq then
        return none
      let info ← getFunInfoNArgs f (numArgs + 1)
      let mut fixed : Array Bool := #[]
      for larg in lhsArgs', rarg in rhsArgs', pinfo in info.paramInfo do
        if !config.typeEqs && (!pinfo.isExplicit || pinfo.hasFwdDeps) then
          -- When `typeEqs = false` then for non-explicit arguments or
          -- arguments with forward dependencies, we want type arguments
          -- to be plausibly equal.
          if ← isType larg then
            -- ^ since `f` and `f'` have defeq types, this implies `isType rarg`.
            unless ← Congr!.plausiblyEqualTypes larg rarg do
              fixed := fixed.push true
              continue
        fixed := fixed.push (← withReducible <| withNewMCtxDepth <| isDefEq larg rarg)
      let cthm ← mkRichHCongr (forceHEq := true) (← inferType f) info
                  (fixedFun := funDefEq) (fixedParams := fixed)
      -- Now see if the congruence theorem actually applies in this situation by applying it!
      let (congrThm', congrProof') :=
        if funDefEq then
          (cthm.type.bindingBody!.instantiate1 f, cthm.proof.beta #[f])
        else
          (cthm.type.bindingBody!.bindingBody!.instantiateRev #[f, f'],
           cthm.proof.beta #[f, f'])
      observing? <| applyCongrThm? config mvarId congrThm' congrProof'
    | _, _ => return none
  forSide (mvarId : MVarId) (side : Expr) : MetaM (Option (List MVarId)) := do
    let side := side.cleanupAnnotations
    if not side.isApp then return none
    let numArgs := config.maxArgsFor side.getAppNumArgs
    if not config.partialApp && numArgs < side.getAppNumArgs then
        return none
    let mut f := side
    for _ in [:numArgs] do
      f := f.appFn!'
    let info ← getFunInfoNArgs f numArgs
    let mut fixed : Array Bool := #[]
    if !config.typeEqs then
      -- We need some strategy for fixed parameters to keep `forSide` from applying
      -- in cases where `Congr!.possiblyEqualTypes` suggested not to in the previous pass.
      for pinfo in info.paramInfo, arg in side.getAppArgs do
        if pinfo.isProp || !(← isType arg) then
          fixed := fixed.push false
        else if pinfo.isExplicit && !pinfo.hasFwdDeps then
          -- It's fine generating equalities for explicit type arguments without forward
          -- dependencies. Only allowing these is a little strict, because an argument
          -- might be something like `Fin n`. We might consider being able to generate
          -- congruence lemmas that only allow equalities where they can plausibly go,
          -- but that would take looking at a whole application tree.
          fixed := fixed.push false
        else
          fixed := fixed.push true
    let cthm ← mkRichHCongr (forceHEq := true) (← inferType f) info
                (fixedFun := true) (fixedParams := fixed)
    let congrThm' := cthm.type.bindingBody!.instantiate1 f
    let congrProof' := cthm.proof.beta #[f]
    observing? <| applyCongrThm? config mvarId congrThm' congrProof'

/--
Like `Lean.MVarId.congr?` but instead of using only the congruence lemma associated to the LHS,
it tries the RHS too, in the order specified by `config.preferLHS`.

It uses `Lean.Meta.mkCongrSimp?` to generate a congruence lemma, like in the `congr` tactic.

Applies the congruence generated congruence lemmas according to `config`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantd55ae8d1780562fd4e592df6252a960e31cbd4a85f5687cc70ea68fa78546a8c.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39698c53abaa2d5431201f627f6fc34b2385acb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
