# intervalBoundCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:169ada3631105d024f70f58ca79edb826035328376266c727725e2c8f0ee9357",
  "kind": "def",
  "lexical_name": "intervalBoundCore",
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
  "slug": "intervalboundcore--81c28daab03fa898bce715df",
  "source": {
    "blob": "b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c28daab03fa898bce715df95d013ab6ed8eb905e9a27f2fbfffca49b7909fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:169ada3631105d024f70f58ca79edb826035328376266c727725e2c8f0ee9357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intervalBoundCore (taylorDepth : Nat) : TacticM Unit := do
  intervalNormCore
  -- Pre-process: convert ≥ to ≤ and > to < for uniform handling
  -- First intro variables to get into the body of the forall
  let preprocessed ← do
    try
      evalTactic (← `(tactic| intro _x _hx; simp only [ge_iff_le, gt_iff_lt]; revert _x _hx))
      pure true
    catch e =>
      trace[interval_decide] "Forall preprocessing failed: {e.toMessageData}"
      try
        evalTactic (← `(tactic| simp only [ge_iff_le, gt_iff_lt]))
        pure true
      catch _ => pure false
  if preprocessed then
    trace[interval_decide] "Preprocessing applied ≥/> → ≤/<"

  -- Pre-process: lightweight power cleanup after intervalNormCore.
  try
    evalTactic (← `(tactic| simp only [pow_zero, pow_one, one_mul, mul_one] at *))
  catch _ => pure ()

  -- Check if the goal was already solved by simplification (e.g., x^0 ≤ 1 → 1 ≤ 1)
  let goals ← getGoals
  if goals.isEmpty then
    return

  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse the goal
  let some boundGoal ← parseBoundGoal goalType
    | do
      -- If parsing fails, try to solve trivially (e.g., after x^0 → 1, goal becomes 1 ≤ 1)
      try
        evalTactic (← `(tactic| intro _ _; norm_num))
        return
      catch _ => pure ()
      -- Debug: show the goal structure
      let goalWhnf ← whnf goalType
      throwError "interval_bound: Could not parse goal as a bound. Expected:\n\
                  • ∀ x ∈ I, f x ≤ c\n\
                  • ∀ x ∈ I, c ≤ f x\n\
                  • ∀ x ∈ I, f x < c\n\
                  • ∀ x ∈ I, c < f x\n\
                  \nGoal type: {goalType}\n\
                  Goal (whnf): {goalWhnf}"

  match boundGoal with
  | .forallLe _name interval func bound =>
    proveForallLe goal interval func bound taylorDepth
  | .forallGe _name interval func bound =>
    proveForallGe goal interval func bound taylorDepth
  | .forallLt _name interval func bound =>
    proveForallLt goal interval func bound taylorDepth
  | .forallGt _name interval func bound =>
    proveForallGt goal interval func bound taylorDepth


where
  /-- Prove ∀ x ∈ I, f x ≤ c -/
  proveForallLe (goal : MVarId) (intervalInfo : IntervalInfo) (func bound : Lean.Expr)
      (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      discard <| tryNormalizeGoalToIcc
      let goal ← getMainGoal
      -- 1. Get AST (either from Expr.eval or by reifying)
      let ast ← getAst func

      -- 2. Extract rational bound from possible coercion
      let boundRat ← extractRatBound bound

      -- 2.5. Try Dyadic backend first
      let savedState ← saveState
      if ← tryDyadicBound goal ast boundRat intervalInfo taylorDepth false false then
        return
      restoreState savedState

      -- 3. Generate support proof (tries Core first, falls back to WithInv for log/inv)
      let (supportProof, useWithInv) ← getSupportProof ast

      -- 4. Build config expression
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      -- 5. Apply appropriate theorem based on interval source and support type
      match intervalInfo.fromSetIcc with
        | some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _origLo, _origHi) =>
          -- Choose theorem and arguments based on support type
          -- Note: WithInv theorems don't take a cfg parameter
          let proof ← if useWithInv then
            mkAppM ``verify_upper_bound_Icc_withInv #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat]
          else
            mkAppM ``verify_upper_bound_Icc_core #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat, cfgExpr]

          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then
                continue
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, so we need to use convert
            setGoals [goal]

            -- Build the certificate expression (using appropriate check function)
            -- Note: WithInv check functions don't take a cfg parameter
            let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkUpperBoundWithInv #[ast, intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkUpperBound #[ast, intervalRat, boundRat, cfgExpr]

            -- Build proof that checkUpperBound ... = true using native_decide via an auxiliary goal
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal

            -- Apply the theorem with the certificate to get the conclusion
            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof

            -- Now use convert on the conclusion (not the full proof)
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))

            -- Close side goals (usually equality goals for Set.Icc and bounds)
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              -- Helper: try a tactic and check if goal was actually closed
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              -- Try decimal-specific tactic first for efficiency
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              -- Handle negative decimals (-(1/2) = ↑(Rat.divInt (-1) 2))
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; try (push_cast; try ring)))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              -- For Set.Icc equality, use congr_arg with norm_num
              if ← tryClose (evalTactic (← `(tactic| congr 1 <;> norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              -- Handle power expansion (x^2 = x*x, x^3 = x*x*x, etc.)
              if ← tryClose (evalTactic (← `(tactic| simp only [sq, pow_two, pow_succ, pow_zero, pow_one, one_mul, mul_one]))) then continue
              -- Handle Expr.eval unfolding - unfolds Expr.eval to raw arithmetic, then uses ring to close
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              -- Same but with push_cast for rational coercion issues
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              -- Handle decimal bounds (2.72 = ↑(Rat.divInt 68 25))
              -- norm_num converts 2.72 to 68/25, then simp+push_cast closes the equality
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp [Rat.divInt_eq_div]))) then continue
              if ← tryClose (evalTactic (← `(tactic| push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.cast_natCast, Rat.cast_intCast, Nat.cast_ofNat, Int.cast_ofNat, NNRat.cast_natCast]))) then continue
              -- Last resort - leave the goal for the user but warn
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

        | none =>
          -- Direct IntervalRat goal - use appropriate verify_upper_bound theorem
          let proof ← if useWithInv then
            mkAppM ``verify_upper_bound_withInv #[ast, supportProof, intervalInfo.intervalRat, boundRat]
          else
            mkAppM ``verify_upper_bound #[ast, supportProof, intervalInfo.intervalRat, boundRat, cfgExpr]
          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, use convert
            setGoals [goal]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkUpperBoundWithInv #[ast, intervalInfo.intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkUpperBound #[ast, intervalInfo.intervalRat, boundRat, cfgExpr]
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal
            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

  /-- Prove ∀ x ∈ I, c ≤ f x -/
  proveForallGe (goal : MVarId) (intervalInfo : IntervalInfo) (func bound : Lean.Expr)
      (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      discard <| tryNormalizeGoalToIcc
      let goal ← getMainGoal
      let ast ← getAst func
      let boundRat ← extractRatBound bound

      -- Try Dyadic backend first
      let savedState ← saveState
      if ← tryDyadicBound goal ast boundRat intervalInfo taylorDepth false true then
        return
      restoreState savedState

      let (supportProof, useWithInv) ← getSupportProof ast
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      -- Handle based on interval source
      match intervalInfo.fromSetIcc with
        | some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _origLo, _origHi) =>
          -- Choose theorem and arguments based on support type
          -- Note: WithInv theorems don't take a cfg parameter
          let proof ← if useWithInv then
            mkAppM ``verify_lower_bound_Icc_withInv #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat]
          else
            mkAppM ``verify_lower_bound_Icc_core #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat, cfgExpr]

          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then
                continue
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, use convert
            setGoals [goal]
            let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkLowerBoundWithInv #[ast, intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkLowerBound #[ast, intervalRat, boundRat, cfgExpr]

            -- Build proof using native_decide via an auxiliary goal
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal

            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))

            -- Close side goals
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              -- Helper: try a tactic and check if goal was actually closed
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              -- Try decimal-specific tactic first for efficiency
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              -- Handle negative decimals (-(1/2) = ↑(Rat.divInt (-1) 2))
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; try (push_cast; try ring)))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| congr 1 <;> norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              -- Handle power expansion (x^2 = x*x, x^3 = x*x*x, etc.)
              if ← tryClose (evalTactic (← `(tactic| simp only [sq, pow_two, pow_succ, pow_zero, pow_one, one_mul, mul_one]))) then continue
              -- Handle Expr.eval unfolding - unfolds Expr.eval to raw arithmetic, then uses ring to close
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              -- Same but with push_cast for rational coercion issues
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              -- Handle decimal bounds (2.72 = ↑(Rat.divInt 68 25)) - fallback tactics
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp [Rat.divInt_eq_div]))) then continue
              if ← tryClose (evalTactic (← `(tactic| push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.cast_natCast, Rat.cast_intCast, Nat.cast_ofNat, Int.cast_ofNat, NNRat.cast_natCast]))) then continue
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

        | none =>
          -- Direct IntervalRat goal - use appropriate verify_lower_bound theorem
          let proof ← if useWithInv then
            mkAppM ``verify_lower_bound_withInv #[ast, supportProof, intervalInfo.intervalRat, boundRat]
          else
            mkAppM ``verify_lower_bound #[ast, supportProof, intervalInfo.intervalRat, boundRat, cfgExpr]
          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, use convert
            setGoals [goal]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkLowerBoundWithInv #[ast, intervalInfo.intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkLowerBound #[ast, intervalInfo.intervalRat, boundRat, cfgExpr]
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal
            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

  /-- Prove ∀ x ∈ I, f x < c -/
  proveForallLt (goal : MVarId) (intervalInfo : IntervalInfo) (func bound : Lean.Expr)
      (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      discard <| tryNormalizeGoalToIcc
      let goal ← getMainGoal
      let ast ← getAst func
      let boundRat ← extractRatBound bound

      -- Try Dyadic backend first
      let savedState ← saveState
      if ← tryDyadicBound goal ast boundRat intervalInfo taylorDepth true false then
        return
      restoreState savedState

      let (supportProof, useWithInv) ← getSupportProof ast
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      -- Handle based on interval source
      match intervalInfo.fromSetIcc with
        | some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _origLo, _origHi) =>
          -- Choose theorem and arguments based on support type
          -- Note: WithInv theorems don't take a cfg parameter
          let proof ← if useWithInv then
            mkAppM ``verify_strict_upper_bound_Icc_withInv #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat]
          else
            mkAppM ``verify_strict_upper_bound_Icc_core #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat, cfgExpr]

          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then
                continue
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, use convert
            setGoals [goal]
            let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkStrictUpperBoundWithInv #[ast, intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkStrictUpperBound #[ast, intervalRat, boundRat, cfgExpr]

            -- Build proof using native_decide via an auxiliary goal
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal

            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))

            -- Close side goals
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              -- Helper: try a tactic and check if goal was actually closed
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              -- Try decimal-specific tactic first for efficiency
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              -- Handle negative decimals (-(1/2) = ↑(Rat.divInt (-1) 2))
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; try (push_cast; try ring)))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| congr 1 <;> norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              -- Handle power expansion (x^2 = x*x, x^3 = x*x*x, etc.)
              if ← tryClose (evalTactic (← `(tactic| simp only [sq, pow_two, pow_succ, pow_zero, pow_one, one_mul, mul_one]))) then continue
              -- Handle Expr.eval unfolding - unfolds Expr.eval to raw arithmetic, then uses ring to close
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              -- Same but with push_cast for rational coercion issues
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              -- Handle decimal bounds - fallback tactics
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp [Rat.divInt_eq_div]))) then continue
              if ← tryClose (evalTactic (← `(tactic| push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.cast_natCast, Rat.cast_intCast, Nat.cast_ofNat, Int.cast_ofNat, NNRat.cast_natCast]))) then continue
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

        | none =>
          -- Direct IntervalRat goal - use appropriate theorem
          let proof ← if useWithInv then
            mkAppM ``verify_strict_upper_bound_withInv #[ast, supportProof, intervalInfo.intervalRat, boundRat]
          else
            mkAppM ``verify_strict_upper_bound #[ast, supportProof, intervalInfo.intervalRat, boundRat, cfgExpr]
          let newGoals ← goal.apply proof
          setGoals newGoals
          for g in newGoals do
            setGoals [g]
            try
              evalTactic (← `(tactic| native_decide))
            catch _ =>
              try
                evalTactic (← `(tactic| norm_cast))
              catch _ =>
                evalTactic (← `(tactic| simp only [Rat.cast_zero, Rat.cast_one, Rat.cast_intCast, Rat.cast_natCast]))

  /-- Prove ∀ x ∈ I, c < f x -/
  proveForallGt (goal : MVarId) (intervalInfo : IntervalInfo) (func bound : Lean.Expr)
      (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      discard <| tryNormalizeGoalToIcc
      let goal ← getMainGoal
      let ast ← getAst func
      let boundRat ← extractRatBound bound

      -- Try Dyadic backend first
      let savedState ← saveState
      if ← tryDyadicBound goal ast boundRat intervalInfo taylorDepth true true then
        return
      restoreState savedState

      let (supportProof, useWithInv) ← getSupportProof ast
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      -- Handle based on interval source
      match intervalInfo.fromSetIcc with
        | some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _origLo, _origHi) =>
          -- Choose theorem and arguments based on support type
          -- Note: WithInv theorems don't take a cfg parameter
          let proof ← if useWithInv then
            mkAppM ``verify_strict_lower_bound_Icc_withInv #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat]
          else
            mkAppM ``verify_strict_lower_bound_Icc_core #[ast, supportProof, loRatExpr, hiRatExpr, leProof, boundRat, cfgExpr]

          -- Try direct apply first
          setGoals [goal]
          try
            let newGoals ← goal.apply proof
            setGoals newGoals
            for g in newGoals do
              setGoals [g]
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              if ← tryClose (evalTactic (← `(tactic| rfl))) then
                continue
              evalTactic (← `(tactic| native_decide))
          catch _ =>
            -- Apply failed, use convert
            setGoals [goal]
            let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
            let checkExpr ← if useWithInv then
              mkAppM ``LeanCert.Validity.checkStrictLowerBoundWithInv #[ast, intervalRat, boundRat]
            else
              mkAppM ``LeanCert.Validity.checkStrictLowerBound #[ast, intervalRat, boundRat, cfgExpr]

            -- Build proof using native_decide via an auxiliary goal
            let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
            let certGoal ← mkFreshExprMVar certTy
            let certGoalId := certGoal.mvarId!
            setGoals [certGoalId]
            evalTactic (← `(tactic| native_decide))
            let certProof := certGoal

            let conclusionProof ← mkAppM' proof #[certProof]
            let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof
            setGoals [goal]
            evalTactic (← `(tactic| convert ($conclusionTerm) using 3))

            -- Close side goals
            let goals ← getGoals
            for g in goals do
              setGoals [g]
              -- Helper: try a tactic and check if goal was actually closed
              let tryClose (tac : TacticM Unit) : TacticM Bool := do
                let saved ← saveState
                try
                  tac
                  if (← getGoals).isEmpty then
                    return true
                  saved.restore
                  return false
                catch _ =>
                  saved.restore
                  return false
              -- Try decimal-specific tactic first for efficiency
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryCloseRpowSideGoal then continue
              -- Handle negative decimals (-(1/2) = ↑(Rat.divInt (-1) 2))
              if ← tryClose (evalTactic (← `(tactic| norm_num; simp only [Rat.divInt_eq_div]; try (push_cast; try ring)))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| congr 1 <;> norm_num))) then continue
              if ← tryClose (evalTactic (← `(tactic| rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_cast))) then continue
              if ← tryClose (evalTactic (← `(tactic| norm_num))) then continue
              -- Handle power expansion (x^2 = x*x, x^3 = x*x*x, etc.)
              if ← tryClose (evalTactic (← `(tactic| simp only [sq, pow_two, pow_succ, pow_zero, pow_one, one_mul, mul_one]))) then continue
              -- Handle Expr.eval unfolding - unfolds Expr.eval to raw arithmetic, then uses ring to close
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]))) then continue
              -- Same but with push_cast for rational coercion issues
              if ← tryClose (evalTactic (← `(tactic| simp only [LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg, LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_var, LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos, LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_sqrt, LeanCert.Core.Expr.eval_sub, Real.sqrt_mul_self_eq_abs, LeanCert.Meta.max_eq_half_add_abs_sub, LeanCert.Meta.min_eq_half_sub_abs_sub, div_eq_mul_inv, sub_eq_add_neg]; try (push_cast; try ring)))) then continue
              -- Handle decimal bounds - fallback tactics
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp [Rat.divInt_eq_div]))) then continue
              if ← tryClose (evalTactic (← `(tactic| push_cast; rfl))) then continue
              if ← tryClose (evalTactic (← `(tactic| simp only [Rat.cast_natCast, Rat.cast_intCast, Nat.cast_ofNat, Int.cast_ofNat, NNRat.cast_natCast]))) then continue
              logWarning m!"interval_bound: Could not close side goal: {← g.getType}"

        | none =>
          -- Direct IntervalRat goal - use appropriate theorem
          let proof ← if useWithInv then
            mkAppM ``verify_strict_lower_bound_withInv #[ast, supportProof, intervalInfo.intervalRat, boundRat]
          else
            mkAppM ``verify_strict_lower_bound #[ast, supportProof, intervalInfo.intervalRat, boundRat, cfgExpr]
          let newGoals ← goal.apply proof
          setGoals newGoals
          for g in newGoals do
            setGoals [g]
            try
              evalTactic (← `(tactic| native_decide))
            catch _ =>
              try
                evalTactic (← `(tactic| norm_cast))
              catch _ =>
                evalTactic (← `(tactic| simp only [Rat.cast_zero, Rat.cast_one, Rat.cast_intCast, Rat.cast_natCast]))


/-! ## Tactic Syntax -/

/-- The certify_bound tactic.

    Automatically proves bounds on expressions using interval arithmetic.

    Usage:
    - `certify_bound` - uses adaptive precision (tries depths 10, 15, 20, 25, 30)
    - `certify_bound 20` - uses fixed Taylor depth of 20

    Supports goals of the form:
    - `∀ x ∈ I, f x ≤ c`
    - `∀ x ∈ I, c ≤ f x`
    - `∀ x ∈ I, f x < c`
    - `∀ x ∈ I, c < f x`

    Note: `interval_bound` is an alias for backward compatibility.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
