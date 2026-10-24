# multivariateBoundCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bef6c7ca70667ae246bc8b5996714e88dc8e23015ceec3056cf1fd6ebca1f72",
  "kind": "def",
  "lexical_name": "multivariateBoundCore",
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
  "slug": "multivariateboundcore--a7c26b7af3ea12e2c1846701",
  "source": {
    "blob": "4aba3dee2f596fa117d9bbc3a11c46d1176c7911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multivariate/Variantc853100bf43af6d2b3b5b24d508eee8cff5dd56b1740f5cfe31448c159eb47ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7c26b7af3ea12e2c184670125cf601316a5ca6ec56e6f10f7f627e762023ede",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multivariate/Variantc853100bf43af6d2b3b5b24d508eee8cff5dd56b1740f5cfe31448c159eb47ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bef6c7ca70667ae246bc8b5996714e88dc8e23015ceec3056cf1fd6ebca1f72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multivariateBoundCore (maxIters : Nat) (tolerance : ℚ) (useMonotonicity : Bool) (taylorDepth : Nat) : TacticM Unit := do
  intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType
  trace[LeanCert.discovery] "multivariate_bound goal: {goalType}"

  -- Parse the multivariate goal
  let parsed ← parseMultivariateBoundGoal goalType
  let some boundGoal := parsed
    | let diagReport ← mkDiagnosticReport "multivariate_bound" goalType "parse"
        (some m!"Expected forms:\n\
                 • ∀ x ∈ I, ∀ y ∈ J, ... f(x,y,...) ≤ c\n\
                 • ∀ x ∈ I, ∀ y ∈ J, ... c ≤ f(x,y,...)\n\n\
                 Domain formats accepted:\n\
                 • x ∈ Set.Icc a b\n\
                 • a ≤ x ∧ x ≤ b\n\
                 • a ≤ x → x ≤ b → ...")
      throwError "multivariate_bound: Could not parse goal as multivariate bound.\n\n{diagReport}"

  match boundGoal with
  | .forallLe vars func bound =>
    proveMultivariateLe goal vars func bound maxIters tolerance useMonotonicity taylorDepth
  | .forallGe vars func bound =>
    proveMultivariateGe goal vars func bound maxIters tolerance useMonotonicity taylorDepth

where
  /-- Extract rational bound from possible coercion (reusing logic from intervalBoundCore) -/
  extractRatBound (bound : Lean.Expr) : TacticM Lean.Expr := do
    let fn := bound.getAppFn
    let args := bound.getAppArgs

    -- Check for Rat.cast (which is what ↑ becomes for ℚ → ℝ)
    if fn.isConstOf ``Rat.cast then
      if args.size > 0 then
        return args.back!
      else
        throwError "Unexpected Rat.cast structure"
    else if fn.isConstOf ``RatCast.ratCast then
      if args.size > 0 then
        return args.back!
      else
        throwError "Unexpected RatCast.ratCast structure"
    else
      let boundTy ← inferType bound
      if boundTy.isConstOf ``Rat then
        return bound
      else
        if let some q ← extractRatFromReal bound then
          return toExpr q
        else
          let boundReduced ← whnf bound
          let fnReduced := boundReduced.getAppFn
          if fnReduced.isConstOf ``Rat.cast || fnReduced.isConstOf ``RatCast.ratCast then
            let argsReduced := boundReduced.getAppArgs
            if argsReduced.size > 0 then
              return argsReduced.back!
          throwError m!"Cannot extract rational from bound: {bound}\n\n\
                        This happens when the bound contains non-computable constants.\n\
                        Suggestions:\n\
                        • Use a rational approximation\n\
                        • Use interval_decide for point inequalities with transcendentals"

  /-- Fetch local variable expressions in the order of VarIntervalInfo. -/
  getVarExprs (vars : Array VarIntervalInfo) : TacticM (Array Lean.Expr) := do
    let lctx ← getLCtx
    let mut out : Array Lean.Expr := #[]
    let mut used : Array Lean.FVarId := #[]
    for info in vars do
      match lctx.findFromUserName? info.varName with
      | some decl =>
          out := out.push (Lean.mkFVar decl.fvarId)
          used := used.push decl.fvarId
      | none =>
          let mut fallback : Option Lean.LocalDecl := none
          for decl in lctx do
            if !(used.any (fun id => id == decl.fvarId)) then
              if (← isDefEq decl.type info.varType) then
                fallback := some decl
                break
          match fallback with
          | some decl =>
              out := out.push (Lean.mkFVar decl.fvarId)
              used := used.push decl.fvarId
          | none =>
              throwError m!"multivariate_bound: missing local {info.varName}"
    return out

  /-- Build an environment function ρ from a list of variables. -/
  mkEnvExpr (varsListExpr : Lean.Expr) : TacticM Lean.Expr := do
    withLocalDeclD `i (Lean.mkConst ``Nat) fun i => do
      let zeroRat := toExpr (0 : ℚ)
      let zeroReal ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, zeroRat]
      let body ← mkAppM ``List.getD #[varsListExpr, i, zeroReal]
      mkLambdaFVars #[i] body

  /-- Prove ∀ x₁ ∈ I₁, ..., ∀ xₙ ∈ Iₙ, f(x) ≤ c using verify_global_upper_bound -/
  proveMultivariateLe (goal : MVarId) (vars : Array VarIntervalInfo) (func bound : Lean.Expr)
      (maxIters : Nat) (tolerance : ℚ) (useMonotonicity : Bool) (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      let boxExpr ← mkBoxExpr vars
      let ast ← reify func
      let boundRat ← extractRatBound bound
      let supportProof ← mkSupportedProof ast
      let cfgExpr ← mkAppM ``GlobalOptConfig.mk #[toExpr maxIters, toExpr tolerance, toExpr useMonotonicity, toExpr taylorDepth]
      let proof ← mkAppM ``verify_global_upper_bound #[ast, supportProof, boxExpr, boundRat, cfgExpr]

      setGoals [goal]
      try
        evalTactic (← `(tactic| repeat intro))
      catch _ => pure ()

      let mainGoalAfterIntro ← getMainGoal

      let (rhoSyntax, varsListSyntax, boxSyntax) ← withMainContext do
        let varExprs ← getVarExprs vars
        let varsListExpr ← mkListLit (Lean.mkConst ``Real) varExprs.toList
        let rhoExpr ← mkEnvExpr varsListExpr
        let rhoSyntax ← Lean.Elab.Term.exprToSyntax rhoExpr
        let varsListSyntax ← Lean.Elab.Term.exprToSyntax varsListExpr
        let boxSyntax ← Lean.Elab.Term.exprToSyntax boxExpr
        return (rhoSyntax, varsListSyntax, boxSyntax)

      let checkExpr ← mkAppM ``checkGlobalUpperBound #[ast, boxExpr, boundRat, cfgExpr]
      let certTy ← mkAppM ``Eq #[checkExpr, Lean.mkConst ``Bool.true]
      let certGoal ← mkFreshExprMVar certTy
      let certGoalId := certGoal.mvarId!
      setGoals [certGoalId]
      try
        evalTactic (← `(tactic| native_decide))
      catch e =>
        throwError "multivariate_bound: Certificate check failed. The bound may be too tight.\n{e.toMessageData}"

      let conclusionProof ← mkAppM' proof #[certGoal]
      let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof

      setGoals [mainGoalAfterIntro]
      evalTactic (← `(tactic| exact (by
        have hmem : Box.envMem $rhoSyntax $boxSyntax := by
          intro i
          fin_cases i <;>
            simp [Box.envMem, IntervalRat.mem_iff_mem_Icc, Set.mem_Icc] at * <;>
            first | assumption | constructor <;> assumption
        have hzero : ∀ i, i ≥ ($boxSyntax).length → $rhoSyntax i = 0 := by
          intro i hi
          have hnot : ¬ i < ($boxSyntax).length := by exact not_lt.mpr hi
          have hnot' : ¬ i < ($varsListSyntax).length := by
            simpa using hnot
          have hge' : ($varsListSyntax).length ≤ i := by
            exact not_lt.mp hnot'
          simp [List.getD, List.getElem?_eq_none hge', Option.getD]
        exact $conclusionTerm $rhoSyntax hmem hzero
      )))

  /-- Prove ∀ x₁ ∈ I₁, ..., ∀ xₙ ∈ Iₙ, c ≤ f(x) using verify_global_lower_bound -/
  proveMultivariateGe (goal : MVarId) (vars : Array VarIntervalInfo) (func bound : Lean.Expr)
      (maxIters : Nat) (tolerance : ℚ) (useMonotonicity : Bool) (taylorDepth : Nat) : TacticM Unit := do
    goal.withContext do
      let boxExpr ← mkBoxExpr vars
      let ast ← reify func
      let boundRat ← extractRatBound bound
      let supportProof ← mkSupportedProof ast
      let cfgExpr ← mkAppM ``GlobalOptConfig.mk #[toExpr maxIters, toExpr tolerance, toExpr useMonotonicity, toExpr taylorDepth]

      let proof ← mkAppM ``verify_global_lower_bound #[ast, supportProof, boxExpr, boundRat, cfgExpr]

      setGoals [goal]
      try
        evalTactic (← `(tactic| repeat intro))
      catch _ => pure ()

      let mainGoalAfterIntro ← getMainGoal

      let (rhoSyntax, varsListSyntax, boxSyntax) ← withMainContext do
        let varExprs ← getVarExprs vars
        let varsListExpr ← mkListLit (Lean.mkConst ``Real) varExprs.toList
        let rhoExpr ← mkEnvExpr varsListExpr
        let rhoSyntax ← Lean.Elab.Term.exprToSyntax rhoExpr
        let varsListSyntax ← Lean.Elab.Term.exprToSyntax varsListExpr
        let boxSyntax ← Lean.Elab.Term.exprToSyntax boxExpr
        return (rhoSyntax, varsListSyntax, boxSyntax)

      let checkExpr ← mkAppM ``checkGlobalLowerBound #[ast, boxExpr, boundRat, cfgExpr]
      let certTy ← mkAppM ``Eq #[checkExpr, Lean.mkConst ``Bool.true]
      let certGoal ← mkFreshExprMVar certTy
      let certGoalId := certGoal.mvarId!
      setGoals [certGoalId]
      try
        evalTactic (← `(tactic| native_decide))
      catch e =>
        throwError "multivariate_bound: Certificate check failed. The bound may be too tight.\n{e.toMessageData}"

      let conclusionProof ← mkAppM' proof #[certGoal]
      let conclusionTerm ← Lean.Elab.Term.exprToSyntax conclusionProof

      setGoals [mainGoalAfterIntro]
      evalTactic (← `(tactic| exact (by
        have hmem : Box.envMem $rhoSyntax $boxSyntax := by
          intro i
          fin_cases i <;>
            simp [Box.envMem, IntervalRat.mem_iff_mem_Icc, Set.mem_Icc] at * <;>
            first | assumption | constructor <;> assumption
        have hzero : ∀ i, i ≥ ($boxSyntax).length → $rhoSyntax i = 0 := by
          intro i hi
          have hnot : ¬ i < ($boxSyntax).length := by exact not_lt.mpr hi
          have hnot' : ¬ i < ($varsListSyntax).length := by
            simpa using hnot
          have hge' : ($varsListSyntax).length ≤ i := by
            exact not_lt.mp hnot'
          simp [List.getD, List.getElem?_eq_none hge', Option.getD]
        exact $conclusionTerm $rhoSyntax hmem hzero
      )))

/-- The multivariate_bound tactic.

    Automatically proves bounds on multivariate expressions using global optimization.

    Usage:
    - `multivariate_bound` - uses defaults (1000 iterations, tolerance 1/1000, Taylor depth 10)
    - `multivariate_bound 2000` - uses 2000 iterations

    Supports goals of the form:
    - `∀ x ∈ I, ∀ y ∈ J, f(x,y) ≤ c`
    - `∀ x ∈ I, ∀ y ∈ J, c ≤ f(x,y)`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multivariate/Variantc853100bf43af6d2b3b5b24d508eee8cff5dd56b1740f5cfe31448c159eb47ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multivariate/Variantc853100bf43af6d2b3b5b24d508eee8cff5dd56b1740f5cfe31448c159eb47ed.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aba3dee2f596fa117d9bbc3a11c46d1176c7911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
