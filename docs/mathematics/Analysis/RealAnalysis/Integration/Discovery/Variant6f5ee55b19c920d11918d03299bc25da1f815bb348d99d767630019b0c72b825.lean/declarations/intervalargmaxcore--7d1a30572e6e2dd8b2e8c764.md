# intervalArgmaxCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:662cb99f3a14224ce334330870457e235ce2d1f12a41fdb0ecf6d50ed5a1cfc0",
  "kind": "def",
  "lexical_name": "intervalArgmaxCore",
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
  "slug": "intervalargmaxcore--7d1a30572e6e2dd8b2e8c764",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 675,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1a30572e6e2dd8b2e8c764fe492b31886500429151298ac43cec8335651aa8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:662cb99f3a14224ce334330870457e235ce2d1f12a41fdb0ecf6d50ed5a1cfc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def intervalArgmaxCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType

  let some (.argmax _varName domainExpr funcExpr) ← parseArgmaxGoal goalType
    | let diagReport ← LeanCert.Tactic.Auto.mkDiagnosticReport "interval_argmax" goalType "parse"
        (some m!"Expected form: ∃ x ∈ I, ∀ y ∈ I, f(y) ≤ f(x)\n\n\
                 This proves existence of a maximizer point x in I.")
      throwError "interval_argmax: Could not parse goal.\n\n{diagReport}"

  trace[LeanCert.discovery] "Parsing argmax goal: ∃ x ∈ I, ∀ y ∈ I, f(y) ≤ f(x)"
  trace[LeanCert.discovery] "Function expression: {funcExpr}"

  -- Check if using native syntax (not Expr.eval)
  let isNativeSyntax := !(← isExprEvalFunc funcExpr)
  trace[LeanCert.discovery] "Using native syntax: {isNativeSyntax}"

  -- 1. Reify the function
  let ast ← getAstFromFunc funcExpr
  trace[LeanCert.discovery] "Reified AST: {ast}"

  -- 2. Prepare optimization config
  let cfg : GuidedOptConfig := {
    maxIterations := 1000,
    tolerance := 1/1000,
    taylorDepth := taylorDepth,
    useMonotonicity := true,
    heuristicSamples := 200,
    seed := 12345,
    useGridSearch := true,
    gridPointsPerDim := 10
  }

  let domainExpr ←
    match ← tryConvertSetIcc domainExpr with
    | some intervalRat => pure intervalRat
    | none => pure domainExpr
  let domainVal ← evalExpr IntervalRat (mkConst ``IntervalRat) domainExpr
  let boxVal : Box := [domainVal]
  trace[LeanCert.discovery] "Domain: [{domainVal.lo}, {domainVal.hi}]"

  -- 3. Run optimization to find the argmax
  trace[LeanCert.discovery] "Running float-guided maximization..."
  let astVal ← evalExpr LExpr (mkConst ``LeanCert.Core.Expr) ast
  let result := globalMaximizeGuided astVal boxVal cfg

  -- 4. Extract the midpoint of the best box as witness
  let bestBox := result.bound.bestBox
  let xOpt : ℚ := match bestBox with
    | [I] => (I.lo + I.hi) / 2
    | _ => domainVal.lo  -- Fallback

  trace[LeanCert.discovery] "Best box: {bestBox.map (fun I => s!"[{I.lo}, {I.hi}]")}"
  trace[LeanCert.discovery] "Witness point: x = {xOpt}"
  trace[LeanCert.discovery] "Maximum value ≈ {result.bound.hi}"

  -- 5. Evaluate f at xOpt to get a concrete lower bound
  -- We use the lower bound of interval evaluation at the point as our transitivity constant
  let evalCfg : EvalConfig := { taylorDepth := taylorDepth }
  let pointInterval : IntervalRat := ⟨xOpt, xOpt, le_refl xOpt⟩
  let fAtXOpt := evalIntervalCore1 astVal pointInterval evalCfg
  let cBound := fAtXOpt.lo  -- c such that c ≤ f(xOpt)

  trace[LeanCert.discovery] "f(xOpt) ∈ [{fAtXOpt.lo}, {fAtXOpt.hi}]"
  trace[LeanCert.discovery] "Using bound c = {cBound} for transitivity"

  -- 6. Check that ∀ y ∈ I, f(y) ≤ c (upper bound check)
  let upperOk := LeanCert.Validity.checkUpperBound astVal domainVal cBound evalCfg
  trace[LeanCert.discovery] "checkUpperBound: {upperOk}"

  -- 7. Check that c ≤ f(xOpt) (point lower bound check)
  let pointOk := LeanCert.Validity.checkPointLowerBound astVal xOpt cBound evalCfg
  trace[LeanCert.discovery] "checkPointLowerBound: {pointOk}"

  if !upperOk || !pointOk then
    throwError "interval_argmax: Bound verification failed.\n\
      • checkUpperBound (∀ y ∈ I, f(y) ≤ {cBound}): {upperOk}\n\
      • checkPointLowerBound ({cBound} ≤ f({xOpt})): {pointOk}\n\
      Try increasing Taylor depth or using a different witness."

  -- 8. Generate support proof
  let suppProof ← LeanCert.Meta.mkSupportedCoreProof ast

  -- 9. Provide witness: refine ⟨xOpt, ?memProof, ?boundProof⟩
  let xOptExpr := toExpr xOpt
  let xOptSyntax ← Term.exprToSyntax xOptExpr
  evalTactic (← `(tactic| refine ⟨(($xOptSyntax : ℚ) : ℝ), ?_, ?_⟩))

  -- 10. Prove membership (x ∈ I)
  trace[LeanCert.discovery] "Proving membership..."
  try
    let memGoal ← getMainGoal
    let memType ← memGoal.getType
    let memTypeWhnf ← whnf memType
    match_expr memTypeWhnf with
    | And _ _ =>
      let memTypeWhnfSyntax ← Term.exprToSyntax memTypeWhnf
      evalTactic (← `(tactic| change $memTypeWhnfSyntax))
      evalTactic (← `(tactic| constructor <;> norm_cast))
    | _ =>
      match_expr memType with
      | Membership.mem _ _ _ interval _xExpr =>
        let intervalSyntax ← Term.exprToSyntax interval
        evalTactic (← `(tactic| simp [($intervalSyntax:term), Set.mem_Icc]))
      | _ =>
        evalTactic (← `(tactic| simp [Set.mem_Icc]))
      if (← getGoals).isEmpty then
        pure ()
      else
        let memGoal ← getMainGoal
        let memType ← memGoal.getType
        match_expr memType with
        | And _ _ =>
          evalTactic (← `(tactic| constructor <;> norm_cast))
        | _ =>
          evalTactic (← `(tactic| norm_cast))
  catch _ =>
    try
      evalTactic (← `(tactic| decide))
    catch _ =>
      logWarning m!"Could not automatically prove {xOpt} ∈ [{domainVal.lo}, {domainVal.hi}]. Goal left open."
      return

  -- 11. Prove the bound: ∀ y ∈ I, f(y) ≤ f(xOpt)
  trace[LeanCert.discovery] "Proving universal bound..."

  if isNativeSyntax then
    -- For native syntax, simplify and use intervalBoundCore directly
    trace[LeanCert.discovery] "Using native syntax path with intervalBoundCore"
    try
      -- The goal is: ∀ y ∈ Set.Icc a b, f(y) ≤ f(xOpt)
      -- where f(xOpt) involves xOpt which is (q : ℚ) : ℝ

      -- First, simplify the goal to reduce f(xOpt) to a concrete form
      -- Use push_cast and norm_num to simplify rational arithmetic
      try evalTactic (← `(tactic| simp only [Rat.cast_intCast, Rat.cast_natCast])) catch _ => pure ()
      try evalTactic (← `(tactic| push_cast)) catch _ => pure ()
      try evalTactic (← `(tactic| norm_num [Rat.divInt_eq_div])) catch _ => pure ()

      -- Now call intervalBoundCore on the simplified goal
      LeanCert.Tactic.Auto.intervalBoundCore taylorDepth
      trace[LeanCert.discovery] "✓ Proof complete (native syntax)"
    catch e =>
      throwError "interval_argmax: Could not prove universal bound.\n\
        Error: {e.toMessageData}\n\
        The witness x = {xOpt} may need higher precision."
  else
    -- For Expr.eval syntax, use verify_argmax
    trace[LeanCert.discovery] "Using verify_argmax path"
    try
      -- Build the proof term using verify_argmax
      let astSyntax ← Term.exprToSyntax ast
      let suppSyntax ← Term.exprToSyntax suppProof
      let domainSyntax ← Term.exprToSyntax domainExpr
      let cBoundExpr := toExpr cBound
      let cBoundSyntax ← Term.exprToSyntax cBoundExpr
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]
      let cfgSyntax ← Term.exprToSyntax cfgExpr

      -- Membership proof for xOpt
      evalTactic (← `(tactic|
        apply LeanCert.Validity.verify_argmax $astSyntax $suppSyntax $domainSyntax $xOptSyntax $cBoundSyntax $cfgSyntax
          ?_ (by native_decide) (by native_decide)))

      -- Prove xOpt ∈ I
      if !(← getGoals).isEmpty then
        evalTactic (← `(tactic| constructor <;> norm_cast))

      trace[LeanCert.discovery] "✓ Proof complete"
    catch e =>
      -- Fallback to intervalBoundCore
      trace[LeanCert.discovery] "verify_argmax failed, trying intervalBoundCore fallback..."
      try
        LeanCert.Tactic.Auto.intervalBoundCore taylorDepth
        trace[LeanCert.discovery] "✓ Proof complete (via fallback)"
      catch e2 =>
        throwError "interval_argmax: Could not prove universal bound.\n\
          Primary method (verify_argmax): {e.toMessageData}\n\
          Fallback method (intervalBoundCore): {e2.toMessageData}\n\
          The witness x = {xOpt} may need higher precision."

/-- The interval_argmax tactic.

Proves goals of the form `∃ x ∈ I, ∀ y ∈ I, f(y) ≤ f(x)` by:
1. Running global optimization to find the point x where f is maximized.
2. Instantiating the existential with x.
3. Proving membership x ∈ I.
4. Proving the universal bound using interval arithmetic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
