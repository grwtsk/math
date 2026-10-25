# tryCeilPreprocess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00979a36cda805884f321080a62fa423adef75aa706eea5de7e1dfdc97c0ee4f",
  "kind": "def",
  "lexical_name": "tryCeilPreprocess",
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
  "slug": "tryceilpreprocess--1b82cb2b2b9da3b3e46a40dc",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 705,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b82cb2b2b9da3b3e46a40dcd7e9f50d62f83c19be7899a2faccf0977059c810",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00979a36cda805884f321080a62fa423adef75aa706eea5de7e1dfdc97c0ee4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryCeilPreprocess (taylorDepth : Nat) : TacticM Bool := do
  let goal ← getMainGoal
  let goalType ← goal.getType
  let goalTypeW ← whnf goalType
  let fn := goalTypeW.getAppFn
  let args := goalTypeW.getAppArgs
  -- Must be an inequality on ℕ.  After whnf it might be:
  --   LE.le  ℕ inst lhs rhs  (4 args)
  --   Nat.le lhs rhs          (2 args, whnf-reduced)
  --   GE.ge  ℕ inst lhs rhs  (4 args)
  let (lhs, rhs, isGe) ←
    if fn.isConstOf ``LE.le && args.size >= 4 then
      let ty ← whnf args[0]!
      unless ty.isConstOf ``Nat do return false
      pure (args[2]!, args[3]!, false)
    else if fn.isConstOf ``Nat.le && args.size >= 2 then
      pure (args[0]!, args[1]!, false)
    else if fn.isConstOf ``GE.ge && args.size >= 4 then
      let ty ← whnf args[0]!
      unless ty.isConstOf ``Nat do return false
      pure (args[2]!, args[3]!, true)
    else return false
  -- Orient so that the ceil is on the "small" side: ceil_side ≤ bound_side
  let (ceilSide, boundSide) := if isGe then (rhs, lhs) else (lhs, rhs)
  -- Find Nat.ceil in the ceil side
  let some (_ceilApp, innerExpr, offset) ← parseCeilPlusOffset ceilSide | return false
  trace[interval_decide] "Ceil preprocessing: inner = {innerExpr}, offset = {offset}"
  -- Evaluate RHS to a concrete ℕ
  let boundRed ← withTransparency TransparencyMode.all <| reduce boundSide
  let some boundVal := boundRed.rawNatLit? | return false
  -- Compute the target: n − k (in ℕ)
  if offset > boundVal then return false
  let targetVal := boundVal - offset
  trace[interval_decide] "Ceil preprocessing: proving {innerExpr} ≤ ({targetVal} : ℝ)"
  try
    -- Build  (targetVal : ℝ)  as  @OfNat.ofNat ℝ targetVal inst
    let realTy := Lean.mkConst ``Real
    let targetNatLit := mkNatLit targetVal
    let targetRealExpr ← mkAppOptM ``OfNat.ofNat #[some realTy, some targetNatLit, none]
    -- Build the real inequality type:  innerExpr ≤ (targetVal : ℝ)
    let realIneqType ← mkAppM ``LE.le #[innerExpr, targetRealExpr]
    -- Create a fresh metavariable for the proof
    let realProofMVar ← mkFreshExprMVar (some realIneqType) .natural `h_real_bound
    let realGoalId := realProofMVar.mvarId!
    -- Save original goals, focus on the real sub-goal
    let origGoals ← getGoals
    setGoals [realGoalId]
    -- Prove the real inequality with intervalDecideCore
    intervalDecideCore taylorDepth
    trace[interval_decide] "Ceil preprocessing: real inequality proved"
    -- Now build  ⌈innerExpr⌉₊ ≤ targetVal  via Nat.ceil_le.mpr
    -- Nat.ceil_le has type: ⌈a⌉₊ ≤ n ↔ a ≤ ↑n
    -- The RHS of the iff is  a ≤ ↑n  where ↑n = @Nat.cast ℝ _ n
    -- Our proof is  a ≤ (targetVal : ℝ)  which uses OfNat, not Nat.cast.
    -- These should be definitionally equal.  Use `Iff.mpr` with the proof.
    let ceilLeIff ← mkAppOptM ``Nat.ceil_le
      #[some realTy, none, none, none, some innerExpr, some targetNatLit]
    let ceilLeProof ← mkAppM ``Iff.mpr #[ceilLeIff, realProofMVar]
    let ceilIneqType ← inferType ceilLeProof
    -- Restore original goal and add h_ceil_bound as hypothesis, then omega
    setGoals origGoals
    let mainGoal ← getMainGoal
    let newGoal ← mainGoal.assert `h_ceil_bound ceilIneqType ceilLeProof
    let (_, newGoal) ← newGoal.intro `h_ceil_bound
    replaceMainGoal [newGoal]
    evalTactic (← `(tactic| omega))
    return true
  catch e =>
    trace[interval_decide] "Ceil preprocessing failed: {e.toMessageData}"
    return false

/-- Run interval_decide on a single goal (non-conjunction) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
