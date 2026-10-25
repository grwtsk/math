# intervalDecideCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d544c088bc403d0e0be65d8405b8025ac6b8860e2d5abadc5fc25b8f868020f",
  "kind": "def",
  "lexical_name": "intervalDecideCore",
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
  "slug": "intervaldecidecore--7ee4afd0aefd5b071ba712ec",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ee4afd0aefd5b071ba712ecf9ec65c5bfdfc1c32655edec57c2767f2291b491",
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

Occurrence: `declaration:6d544c088bc403d0e0be65d8405b8025ac6b8860e2d5abadc5fc25b8f868020f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def intervalDecideCore (taylorDepth : Nat) : TacticM Unit := do
  intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType
  trace[interval_decide] "intervalDecideCore: goal type = {goalType}"

  let some (lhs, rhs, _isStrict, isReversed) ← parsePointIneq goalType
    | let diagReport ← mkDiagnosticReport "interval_decide" goalType "parse"
        (some m!"Expected a point inequality of form:\n\
                 • expr ≤ bound  (or <, ≥, >)\n\
                 • e.g., Real.exp 1 ≤ 3\n\n\
                 For universally quantified goals, use `interval_bound` instead.")
      throwError "interval_decide: Could not parse as point inequality.\n\n{diagReport}"

  let lhsIsConst ← toRat? lhs
  let rhsIsConst ← toRat? rhs
  let lhsConsts ← collectConstants lhs
  let rhsConsts ← collectConstants rhs

  let (funcExpr, boundExpr, needsFlip) :=
    if lhsIsConst.isSome && rhsIsConst.isNone then
      (rhs, lhs, true)
    else if rhsIsConst.isSome && lhsIsConst.isNone then
      (lhs, rhs, false)
    else if lhsConsts.isEmpty && !rhsConsts.isEmpty then
      (lhs, rhs, false)
    else if rhsConsts.isEmpty && !lhsConsts.isEmpty then
      (rhs, lhs, true)
    else
      if isReversed then (rhs, lhs, false) else (lhs, rhs, false)

  let actualIsReversed := isReversed != needsFlip
  trace[interval_decide] "funcExpr = {funcExpr}, boundExpr = {boundExpr}, needsFlip = {needsFlip}, actualIsReversed = {actualIsReversed}"

  let consts ← collectConstants funcExpr
  trace[interval_decide] "consts = {consts}"

  let hasFreeVars := funcExpr.hasFVar
  trace[interval_decide] "hasFreeVars = {hasFreeVars}"

  let c : ℚ ←
    if !hasFreeVars then
      trace[interval_decide] "No free variables, trying closed expression path"
      let mut currentGoal := goal
      let mut currentGoalType := goalType
      try
        evalTactic (← `(tactic| norm_num))
        let remainingGoals ← getGoals
        if remainingGoals.isEmpty then
          return
        else
          let isAssignedAfter ← goal.isAssigned
          if isAssignedAfter && !remainingGoals.isEmpty then
            currentGoal := remainingGoals.head!
            currentGoalType ← currentGoal.getType
      catch _ => pure ()

      try
        proveClosedExpressionBound currentGoal currentGoalType taylorDepth
        return
      catch _ => pure ()

      trace[interval_decide] "Falling through to fallback"
      if consts.isEmpty then pure 0 else pure consts.head!
    else
      if consts.isEmpty then pure 0 else pure consts.head!

  let goalsBefore ← getGoals
  try
    evalTactic (← `(tactic| norm_num))
    let goalsAfter ← getGoals
    if goalsAfter.isEmpty || goalsAfter.length < goalsBefore.length then
      return
  catch _ => pure ()

  let cStx : Lean.Term ←
    if c.den == 1 then
      if c.num >= 0 then
        pure ⟨Syntax.mkNumLit (toString c.num)⟩
      else
        `(- $(Syntax.mkNumLit (toString (-c.num))))
    else
      if c.num >= 0 then
        `($(Syntax.mkNumLit (toString c.num)) / $(Syntax.mkNumLit (toString c.den)))
      else
        `(- ($(Syntax.mkNumLit (toString (-c.num))) / $(Syntax.mkNumLit (toString c.den))))

  let depthStx := Syntax.mkNumLit (toString taylorDepth)

  try
    evalTactic (← `(tactic|
      (have h : ∀ x ∈ Set.Icc ($cStx : ℝ) $cStx, _ := by interval_bound $depthStx) <;>
      exact h $cStx ⟨le_refl $cStx, le_refl $cStx⟩
    ))
    return
  catch _ => pure ()

  let cStr := if c.den == 1 then s!"{c.num}" else s!"{c.num}/{c.den}"
  let funcStr ← Meta.ppExpr funcExpr
  let boundStr ← Meta.ppExpr boundExpr
  throwError "interval_decide: Could not automatically prove this inequality.\n\n\
              Detected:\n\
              • Function: {funcStr}\n\
              • Bound: {boundStr}\n\
              • Evaluation point: {cStr}\n\n\
              Suggestions:\n\
              • Try increasing depth: `interval_decide 30`\n\
              • Check if the bound is mathematically correct\n\n\
              Manual workaround pattern:\n\
              ```lean\n\
              have h : ∀ x ∈ Set.Icc ({cStr}:ℝ) {cStr}, f x ≤ bound := by interval_bound\n\
              exact h {cStr} ⟨le_refl {cStr}, le_refl {cStr}⟩\n\
              ```\n\
              Replace `f x` with your expression (using `x` instead of `{cStr}`)."

/-! ### Depth estimation helpers -/

/-- Compute `ceil(|q|)` for a rational `q` as a `Nat`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
