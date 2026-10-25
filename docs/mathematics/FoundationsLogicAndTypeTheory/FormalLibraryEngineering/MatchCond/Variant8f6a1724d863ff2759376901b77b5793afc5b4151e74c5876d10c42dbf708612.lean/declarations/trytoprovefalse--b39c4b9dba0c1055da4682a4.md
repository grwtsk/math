# tryToProveFalse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00203d2091cc89ca0505ef5223989dfd1f14a3bb1794797c404a825af4c1e5a6",
  "kind": "def",
  "lexical_name": "tryToProveFalse",
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
  "slug": "trytoprovefalse--b39c4b9dba0c1055da4682a4",
  "source": {
    "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b39c4b9dba0c1055da4682a447ee3aa1ff414a30def4e300c930c6340f7d72a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00203d2091cc89ca0505ef5223989dfd1f14a3bb1794797c404a825af4c1e5a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def tryToProveFalse (e : Expr) : GoalM Unit := do
  trace_goal[grind.debug.matchCond.proveFalse] "{e}"
  let_expr Grind.MatchCond body ← e | return ()
  let proof? ← withNewMCtxDepth do
    let (args, _, _) ← forallMetaTelescope body
    let mask := mkGenDiseqMask body
    for arg in args, target in mask do
      if target then
        let some (α?, lhs, rhs) := isEqHEq? (← inferType arg)
          | return none
        let lhs' ← go lhs
        trace[grind.debug.matchCond.proveFalse] "{lhs'} =?= {rhs}"
        unless (← isDefEqD lhs' rhs) do
          return none
        let isHEq := α?.isSome
        let some lhsEqLhs' ← if isHEq then proveHEq? lhs lhs' else proveEq? lhs lhs'
          | return none
        unless (← isDefEq arg lhsEqLhs') do
          return none
    let he := mkOfEqTrueCore e (← mkEqTrueProof e)
    let falseProof ← instantiateMVars (mkAppN he args)
    if (← hasAssignableMVar falseProof) then
      return none
    trace[grind.debug.matchCond.proveFalse] "{falseProof} : {← inferType falseProof}"
    return some falseProof
  let some proof := proof? | return ()
  closeGoal proof
where
  /--
  Returns a term that is equal to `e`, but containing constructor applications
  and literal values. `e` is the left-hand side of the equations in a `match`-expression
  condition.
  Remark: we could use the right-hand side to interrupt the recursion. For example,
  suppose the equation is `x = ?head :: ?tail`. We only need to show that `x` is equal to
  some term of the form `a :: as` to satisfy it. This function may return `a₁ :: b :: bs`,
  which still allows us to satisfy the equation, but may have a bigger proof (e.g.,
  a proof that `as` is equal to `b::bs`)
  -/
  go (e : Expr) : GoalM Expr := do
    let root ← getRootENode e
    if root.ctor then
      let ctor := root.self
      let some ctorInfo ← isConstructorApp? ctor | return ctor
      let mut ctorArgs := ctor.getAppArgs
      let mut modified := false
      for i in ctorInfo.numParams...(ctorInfo.numParams + ctorInfo.numFields) do
        let arg  := ctorArgs[i]!
        let arg' ← go arg
        unless isSameExpr arg arg' do
          ctorArgs := ctorArgs.set! i arg'
          modified := true
      if modified then
        shareCommon <| mkAppN ctor.getAppFn ctorArgs
      else
        return root.self
    else if root.interpreted then
      return root.self
    else
      return e

/-- Propagates `MatchCond` upwards -/
builtin_grind_propagator propagateMatchCondUp ↑Grind.MatchCond := fun e => do
  trace_goal[grind.debug.matchCond] "visiting{indentExpr e}"
  if (← isEqTrue e) then
    unless (← isSatisfied e) do
      tryToProveFalse e
  else
    if !(← isSatisfied e) then return ()
    let some h ← mkMatchCondProof? e
       | reportIssue! "failed to construct proof for{indentExpr e}"; return ()
    trace_goal[grind.debug.matchCond] "{← inferType h}"
    pushEqTrue e <| mkEqTrueCore e h

/-- Propagates `MatchCond` downwards -/
builtin_grind_propagator propagateMatchCondDown ↓Grind.MatchCond := fun e => do
  if (← isEqTrue e) then
    unless (← isSatisfied e) do
      tryToProveFalse e

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
