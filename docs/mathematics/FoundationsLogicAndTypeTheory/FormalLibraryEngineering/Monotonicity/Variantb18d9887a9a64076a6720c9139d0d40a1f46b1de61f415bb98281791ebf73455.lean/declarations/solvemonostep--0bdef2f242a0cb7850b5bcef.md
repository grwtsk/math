# solveMonoStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c5ecd8103a4f33e818c3243fa56d863f5297e2996d56b8c3ac560a8a2be3adf",
  "kind": "def",
  "lexical_name": "solveMonoStep",
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
  "slug": "solvemonostep--0bdef2f242a0cb7850b5bcef",
  "source": {
    "blob": "afed40d077abcad06375086ad108eaea8db261a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantb18d9887a9a64076a6720c9139d0d40a1f46b1de61f415bb98281791ebf73455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bdef2f242a0cb7850b5bcefb72b3077d9645e7e07e0ae98d89375a267ff614b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantb18d9887a9a64076a6720c9139d0d40a1f46b1de61f415bb98281791ebf73455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c5ecd8103a4f33e818c3243fa56d863f5297e2996d56b8c3ac560a8a2be3adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveMonoStep (failK : ∀ {α}, Expr → Array Name → MetaM α := @defaultFailK) (goal : MVarId) : MetaM (List MVarId) :=
  goal.withContext do
  trace[Elab.Tactic.monotonicity] "monotonicity at\n{goal}"
  let type ← goal.getType
  if type.isForall then
    let (_, goal) ← goal.intro1P
    return [goal]

  match_expr type with
  | monotone α inst_α _ _ f =>
    -- Ensure f is not headed by a redex and headed by at least one lambda, and clean some
    -- redexes left by some of the lemmas we tend to apply
    let f ← instantiateMVars f
    let f := f.headBeta
    let f ← if f.isLambda then pure f else etaExpand f
    let f := headBetaUnderLambda f
    let e := f.bindingBody!

    -- No recursive calls left
    if !e.hasLooseBVars then
      return ← applyConst goal ``monotone_const

    -- NB: `e` is now an open term.

    -- Look through mdata
    if e.isMData then
      let f' := f.updateLambdaE! f.bindingDomain! e.mdataExpr!
      let goal' ← mkFreshExprSyntheticOpaqueMVar (mkApp type.appFn! f')
      goal.assign goal'
      return [goal'.mvarId!]

    -- Handle let
    if let .letE n t v b nondep := e then
      if t.hasLooseBVars || v.hasLooseBVars then
        -- We cannot float the let to the context, so just zeta-reduce.
        let b' := f.updateLambdaE! f.bindingDomain! (b.instantiate1 v)
        let goal' ← mkFreshExprSyntheticOpaqueMVar (mkApp type.appFn! b')
        goal.assign goal'
        return [goal'.mvarId!]
      else
        -- No recursive call in t or v, so float out
        let goal' ← withLetDecl n t v (nondep := nondep) fun x => do
          let b' := f.updateLambdaE! f.bindingDomain! (b.instantiate1 x)
          let goal' ← mkFreshExprSyntheticOpaqueMVar (mkApp type.appFn! b')
          goal.assign (← mkLetFVars (generalizeNondepLet := false) #[x] goal')
          pure goal'
        return [goal'.mvarId!]

    -- Handle lambdas, preserving the name of the binder
    if e.isLambda then
      let [new_goal] ← applyConst goal ``monotone_of_monotone_apply
        | throwError "Unexpected number of goals after `{.ofConstName ``monotone_of_monotone_apply}`."
      let (_, new_goal) ← new_goal.intro e.bindingName!
      return [new_goal]

    -- A recursive call directly here
    if e.isBVar then
      return ← applyConst goal ``monotone_id

    -- A recursive call
    if let some hmono ← solveMonoCall α inst_α e then
      trace[Elab.Tactic.monotonicity] "Found recursive call {e}:{indentExpr hmono}"
      let hmonoType ← inferType hmono
      unless ← isDefEq hmonoType type do
        trace[Elab.Tactic.monotonicity] "Failed to assign {hmono} : {← inferType hmono} to goal"
        failK f #[]
      goal.assign hmono
      return []
    let monoThms ← withLocalDeclD `f f.bindingDomain! fun f =>
      -- The discrimination tree does not like open terms
      findMonoThms (e.instantiate1 f)
    trace[Elab.Tactic.monotonicity] "Found monoThms: {monoThms.map MessageData.ofConstName}"
    for monoThm in monoThms do
      let new_goals? ← try
        let new_goals ← applyConst goal monoThm
        trace[Elab.Tactic.monotonicity] "Succeeded with {.ofConstName monoThm}"
        pure (some new_goals)
      catch e =>
        trace[Elab.Tactic.monotonicity] "{e.toMessageData}"
        pure none
      if let some new_goals := new_goals? then
        return new_goals

    -- Split match-expressions
    if let some info := isMatcherAppCore? (← getEnv) e then
      let candidate ← id do
        let args := e.getAppArgs
        for i in info.getFirstDiscrPos...(info.getFirstDiscrPos + info.numDiscrs) do
          if args[i]!.hasLooseBVars then
            return false
        return true
      if candidate then
        -- We could be even more deliberate here and use the `lifter` lemmas
        -- for the match statements instead of the `split` tactic.
        -- For now using `splitMatch` works fine.
        return ← Split.splitMatch goal e

    failK f monoThms
  | _ =>
    throwError "Unexpected goal:{goal}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantb18d9887a9a64076a6720c9139d0d40a1f46b1de61f415bb98281791ebf73455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monotonicity/Variantb18d9887a9a64076a6720c9139d0d40a1f46b1de61f415bb98281791ebf73455.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afed40d077abcad06375086ad108eaea8db261a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
