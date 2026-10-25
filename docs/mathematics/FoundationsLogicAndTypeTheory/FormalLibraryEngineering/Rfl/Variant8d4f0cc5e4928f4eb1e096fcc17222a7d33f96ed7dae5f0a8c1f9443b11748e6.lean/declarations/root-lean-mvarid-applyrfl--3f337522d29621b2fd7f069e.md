# _root_.Lean.MVarId.applyRfl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:043e24809c971e1e4cfa25f7e6b5c27bc0487184bb81e87c2718933cbaa54443",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.applyRfl",
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
  "slug": "root-lean-mvarid-applyrfl--3f337522d29621b2fd7f069e",
  "source": {
    "blob": "3204c5a627e78d6937885b914e954d3382978ca3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f337522d29621b2fd7f069e71baec77d94ccf90130fe00e2625a360f621f2a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:043e24809c971e1e4cfa25f7e6b5c27bc0487184bb81e87c2718933cbaa54443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.applyRfl (goal : MVarId) : MetaM Unit := goal.withContext do
  -- NB: uses whnfR, we do not want to unfold the relation itself
  let t ← whnfR <|← instantiateMVars <|← goal.getType
  if t.getAppNumArgs < 2 then
    throwTacticEx `rfl goal <| m!"Expected the goal to be a binary relation"
      ++ MessageData.hint' m!"Reflexivity tactics can only be used on goals of the form `x ~ x` or `R x x`"

  -- Special case HEq here as it has a different argument order.
  if t.isAppOfArity ``HEq 4 then
    let gs ← goal.applyConst ``HEq.refl
    unless gs.isEmpty do
      throwTacticEx `rfl goal <| MessageData.tagged `Tactic.unsolvedGoals <| m!"unsolved goals\n{
        goalsToMessageData gs}"
    return

  let rel := t.appFn!.appFn!
  let lhs := t.appFn!.appArg!
  let rhs := t.appArg!

  let success ← approxDefEq <| isDefEqGuarded lhs rhs
  unless success do
    let explanation := MessageData.ofLazyM (es := #[lhs, rhs]) do
      let (lhs, rhs) ← addPPExplicitToExposeDiff lhs rhs
      return m!"The left-hand side{indentExpr lhs}\nis not definitionally equal to the right-hand side{indentExpr rhs}"
    throwTacticEx `rfl goal explanation

  if rel.isAppOfArity `Eq 1 then
    -- The common case is equality: just use `Eq.refl`
    let us := rel.appFn!.constLevels!
    let α :=  rel.appArg!
    goal.assign (mkApp2 (mkConst ``Eq.refl us) α lhs)
  else
    -- Else search through `@refl` keyed by the relation
    -- We change the type to `lhs ~ lhs` so that we don't do the (possibly costly) `lhs =?= rhs`
    -- check again.
    goal.setType (.app t.appFn! lhs)
    let s ← saveState
    let mut ex? := none
    for lem in ← (reflExt.getState (← getEnv)).getMatch rel do
      try
        let gs ← goal.apply (← mkConstWithFreshMVarLevels lem) (term? := m!"'{.ofConstName lem}'")
        if gs.isEmpty then return () else
          throwError MessageData.tagged `Tactic.unsolvedGoals <| m!"unsolved goals\n{
            goalsToMessageData gs}"
      catch e =>
        unless ex?.isSome do
          ex? := some (← saveState, e) -- stash the first failure of `apply`
      s.restore
    if let some (sErr, e) := ex? then
      sErr.restore
      throw e
    else
      throwTacticEx `rfl goal <| m!"No `[refl]` lemma registered for relation{indentExpr rel}"
        ++ MessageData.hint' m!"Add the `[refl]` attribute to reflexivity lemmas for{inlineExpr rel}to use this tactic"

/-- Helper theorem for `Lean.MVarId.liftReflToEq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3204c5a627e78d6937885b914e954d3382978ca3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
