# proveClosedExpressionBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a61fd51f029415b075a96511c1287019900f2890922193aee355e4f5ebf5b891",
  "kind": "def",
  "lexical_name": "proveClosedExpressionBound",
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
  "slug": "proveclosedexpressionbound--3a03b9492ffd107b2d8a3c8b",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a03b9492ffd107b2d8a3c8bd3cafdad4796555690e9ac41b334dc2cd176a683",
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

Occurrence: `declaration:a61fd51f029415b075a96511c1287019900f2890922193aee355e4f5ebf5b891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveClosedExpressionBound (goal : MVarId) (goalType : Lean.Expr) (taylorDepth : Nat) : TacticM Unit := do
  trace[interval_decide] "proveClosedExpressionBound: Starting with goal {goalType}"
  goal.withContext do
    -- Parse the inequality
    let some (lhs, rhs, isStrict, isReversedOrig) ← parsePointIneq goalType
      | throwError "proveClosedExpressionBound: Expected a point inequality"
    trace[interval_decide] "Parsed: lhs={lhs}, rhs={rhs}, isStrict={isStrict}, isReversedOrig={isReversedOrig}"

    -- Determine which side has the function by checking if it converts to rational
    -- (same logic as intervalDecideCore for consistency)
    let lhsIsConst ← toRat? lhs
    let rhsIsConst ← toRat? rhs
    let lhsConsts ← collectConstants lhs
    let rhsConsts ← collectConstants rhs

    let (funcExpr, boundExpr, needsFlip) :=
      if lhsIsConst.isSome && rhsIsConst.isNone then
        -- LHS is a rational constant, RHS is the function
        (rhs, lhs, true)
      else if rhsIsConst.isSome && lhsIsConst.isNone then
        -- RHS is a rational constant, LHS is the function
        (lhs, rhs, false)
      else if lhsConsts.isEmpty && !rhsConsts.isEmpty then
        (lhs, rhs, false)
      else if rhsConsts.isEmpty && !lhsConsts.isEmpty then
        (rhs, lhs, true)
      else
        if isReversedOrig then (rhs, lhs, false) else (lhs, rhs, false)

    let isReversed := isReversedOrig != needsFlip
    trace[interval_decide] "funcExpr={funcExpr}, boundExpr={boundExpr}, needsFlip={needsFlip}, isReversed={isReversed}"

    -- Try to extract the bound as a rational
    let boundRat? ← extractRatFromReal boundExpr

    -- If bound is not a rational, we have two transcendental expressions
    if boundRat?.isNone then
      trace[interval_decide] "Bound is not rational, trying difference approach"
      let diffExpr ←
        if isStrict then
          if isReversed then
            mkAppM ``HSub.hSub #[boundExpr, funcExpr]
          else
            mkAppM ``HSub.hSub #[boundExpr, funcExpr]
        else
          if isReversed then
            mkAppM ``HSub.hSub #[boundExpr, funcExpr]
          else
            mkAppM ``HSub.hSub #[boundExpr, funcExpr]

      trace[interval_decide] "diffExpr = {diffExpr}"

      let diffAst ← reify diffExpr
      let supportProof ← mkSupportedCoreProof diffAst
      let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

      let zeroRat : ℚ := 0
      let leProof ← mkAppM ``le_refl #[toExpr zeroRat]
      let intervalExpr ← mkAppM ``IntervalRat.mk #[toExpr zeroRat, toExpr zeroRat, leProof]

      let theoremName := if isStrict then ``verify_strict_lower_bound else ``verify_lower_bound
      let checkName := if isStrict then ``LeanCert.Validity.checkStrictLowerBound
                       else ``LeanCert.Validity.checkLowerBound

      let checkExpr ← mkAppM checkName #[diffAst, intervalExpr, toExpr zeroRat, cfgExpr]
      let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
      let certGoal ← mkFreshExprMVar certTy
      let certGoalId := certGoal.mvarId!
      certGoalId.withContext do
        try
          setGoals [certGoalId]
          evalTactic (← `(tactic| native_decide))
        catch _ =>
          throwError "proveClosedExpressionBound: Certificate check failed for difference expression"

      let proof ← mkAppM theoremName #[diffAst, supportProof, intervalExpr, toExpr zeroRat, cfgExpr, certGoal]

      let zeroRatAsReal ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, toExpr (0 : ℚ)]
      let h1 ← mkAppM ``le_refl #[zeroRatAsReal]
      let h2 ← mkAppM ``le_refl #[zeroRatAsReal]
      let memProof ← mkAppM ``And.intro #[h1, h2]
      let proofAtZero := Lean.mkApp2 proof zeroRatAsReal memProof

      let proofType ← inferType proofAtZero
      trace[interval_decide] "Difference proof type: {proofType}"

      setGoals [goal]
      let proofStx ← Term.exprToSyntax proofAtZero

      try
        evalTactic (← `(tactic| (
          have h0 := $proofStx;
          simp only [LeanCert.Core.Expr.eval, LeanCert.Core.Expr.eval_pi,
                     LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_sqrt,
                     LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_sub,
                     LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg,
                     LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_log,
                     LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos,
                     Rat.cast_ofNat, Rat.cast_intCast, Rat.cast_natCast,
                     Rat.cast_zero, sub_zero, zero_sub, neg_neg] at h0
        )))

        let hyps ← getLCtx
        for d in hyps do
          if d.userName.toString.startsWith "h0" then
            trace[interval_decide] "After first simp, h0 type: {← inferType d.toExpr}"

        evalTactic (← `(tactic| norm_num at h0))

        let hyps2 ← getLCtx
        for d in hyps2 do
          if d.userName.toString.startsWith "h0" then
            trace[interval_decide] "After norm_num, h0 type: {← inferType d.toExpr}"

        evalTactic (← `(tactic| (
          first
          | linarith
          | (simp only [Rat.divInt_eq_div, Rat.cast_div, Rat.cast_intCast, Rat.cast_natCast] at h0; linarith)
          | (norm_cast at h0; linarith)
          | (simp only [← sub_eq_add_neg] at h0; exact sub_pos.mp h0)
          | (simp only [← sub_eq_add_neg, sub_pos] at h0; exact h0)
          | (have h1 := lt_add_of_neg_add_lt_first h0; simp at h1; exact h1)
          | (have h1 := h0; ring_nf at h1; linarith)
        )))
        let remainingGoals ← getGoals
        if !remainingGoals.isEmpty then
          throwError "proveClosedExpressionBound: Goal not closed after difference approach"
        return
      catch e =>
        trace[interval_decide] "Difference approach error: {e.toMessageData}"
        throwError "proveClosedExpressionBound: Difference approach failed: {e.toMessageData}"

    let some boundRat := boundRat?
      | throwError "proveClosedExpressionBound: Could not extract rational bound from {boundExpr}"

    trace[interval_decide] "boundRat extracted: {boundRat}"

    let ast ← reify funcExpr
    trace[interval_decide] "ast reified"

    let supportProof ← mkSupportedCoreProof ast
    trace[interval_decide] "supportProof generated"

    -- Helper: try to close the goal given a proof term for the bound
    let tryCloseWith (proofStx : TSyntax `term) : TacticM Bool := do
      -- Approach 1: Direct simp + exact
      try
        setGoals [goal]
        evalTactic (← `(tactic| have h0 := $proofStx))
        evalTactic (← `(tactic| (
          simp only [LeanCert.Core.Expr.eval, LeanCert.Core.Expr.eval_pi,
                     LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_sqrt,
                     LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_sub,
                     LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg,
                     LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_log,
                     LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos,
                     Rat.cast_ofNat, Rat.cast_intCast, Rat.cast_natCast] at h0
        )))
        evalTactic (← `(tactic| exact h0))
        return true
      catch _ => pure ()

      -- Approach 2: convert with norm_num
      setGoals [goal]
      try
        evalTactic (← `(tactic| (
          have h0 := $proofStx;
          simp only [LeanCert.Core.Expr.eval, LeanCert.Core.Expr.eval_pi,
                     LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_sqrt,
                     LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_sub,
                     LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg,
                     LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_log,
                     LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos,
                     Rat.cast_ofNat, Rat.cast_intCast, Rat.cast_natCast,
                     Rat.divInt_eq_div] at h0;
          convert h0 using 1 <;> norm_num
        )))
        return true
      catch e2 =>
        trace[interval_decide] "Approach 2 failed: {e2.toMessageData}"

      -- Approach 3: Normalize goal bound first
      setGoals [goal]
      let boundRatStx ← Term.exprToSyntax (toExpr boundRat)
      try
        evalTactic (← `(tactic| (
          show $(← Term.exprToSyntax funcExpr) ≤ ↑($boundRatStx : ℚ)
        )))
        evalTactic (← `(tactic| (
          have h0 := $proofStx;
          simp only [LeanCert.Core.Expr.eval, LeanCert.Core.Expr.eval_pi,
                     LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_sqrt,
                     LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_sub,
                     LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg,
                     LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_log,
                     LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos,
                     Rat.cast_ofNat, Rat.cast_intCast, Rat.cast_natCast,
                     Rat.divInt_eq_div] at h0;
          exact h0
        )))
        return true
      catch e3 =>
        trace[interval_decide] "Approach 3 failed: {e3.toMessageData}"

      -- Approach 4: Use refine with explicit type cast
      setGoals [goal]
      try
        evalTactic (← `(tactic| (
          refine ?_;
          have h0 := $proofStx;
          simp only [LeanCert.Core.Expr.eval, LeanCert.Core.Expr.eval_pi,
                     LeanCert.Core.Expr.eval_const, LeanCert.Core.Expr.eval_sqrt,
                     LeanCert.Core.Expr.eval_add, LeanCert.Core.Expr.eval_sub,
                     LeanCert.Core.Expr.eval_mul, LeanCert.Core.Expr.eval_neg,
                     LeanCert.Core.Expr.eval_exp, LeanCert.Core.Expr.eval_log,
                     LeanCert.Core.Expr.eval_sin, LeanCert.Core.Expr.eval_cos,
                     Rat.cast_ofNat, Rat.cast_intCast, Rat.cast_natCast,
                     Rat.divInt_eq_div] at h0;
          exact_mod_cast h0
        )))
        return true
      catch e4 =>
        trace[interval_decide] "Approach 4 failed: {e4.toMessageData}"

      return false

    -- Try dyadic backend first for supported expressions (all inequality types)
    try
      -- Try ExprSupported first, fall back to ExprSupportedWithInv
      let mut dyadicSupportProof ← mkSupportedWithInvProof ast
      let mut useDyadicWithInv := true
      try
        dyadicSupportProof ← mkSupportedProof ast
        useDyadicWithInv := false
      catch _ => pure ()
      trace[interval_decide] "dyadic supportProof generated (withInv={useDyadicWithInv})"

      let prec : Int := -80
      let precExpr := toExpr prec
      let depthExpr := toExpr taylorDepth
      let precLeZeroTy ← mkAppM ``LE.le #[precExpr, toExpr (0 : Int)]
      let precLeZeroProof ← mkDecideProof precLeZeroTy

      let zeroRat : ℚ := 0
      let leProof ← mkAppM ``le_refl #[toExpr zeroRat]

      let (dyadicTheoremName, dyadicCheckName) :=
        match useDyadicWithInv, isStrict, isReversed with
        | false, false, false => (``LeanCert.Validity.verify_upper_bound_dyadic', ``LeanCert.Validity.checkUpperBoundDyadic)
        | false, false, true  => (``LeanCert.Validity.verify_lower_bound_dyadic', ``LeanCert.Validity.checkLowerBoundDyadic)
        | false, true,  false => (``LeanCert.Validity.verify_strict_upper_bound_dyadic', ``LeanCert.Validity.checkStrictUpperBoundDyadic)
        | false, true,  true  => (``LeanCert.Validity.verify_strict_lower_bound_dyadic', ``LeanCert.Validity.checkStrictLowerBoundDyadic)
        | true,  false, false => (``LeanCert.Validity.verify_upper_bound_dyadic_withInv, ``LeanCert.Validity.checkUpperBoundDyadicWithInv)
        | true,  false, true  => (``LeanCert.Validity.verify_lower_bound_dyadic_withInv, ``LeanCert.Validity.checkLowerBoundDyadicWithInv)
        | true,  true,  false => (``LeanCert.Validity.verify_strict_upper_bound_dyadic_withInv, ``LeanCert.Validity.checkStrictUpperBoundDyadicWithInv)
        | true,  true,  true  => (``LeanCert.Validity.verify_strict_lower_bound_dyadic_withInv, ``LeanCert.Validity.checkStrictLowerBoundDyadicWithInv)

      trace[interval_decide] "Building dyadic certificate check"
      let dyadicCheckExpr ← mkAppM dyadicCheckName
        #[ast, toExpr zeroRat, toExpr zeroRat, leProof, toExpr boundRat, precExpr, depthExpr]
      let dyadicCertTy ← mkAppM ``Eq #[dyadicCheckExpr, mkConst ``Bool.true]
      let dyadicCertGoal ← mkFreshExprMVar dyadicCertTy
      let dyadicCertGoalId := dyadicCertGoal.mvarId!
      dyadicCertGoalId.withContext do
        setGoals [dyadicCertGoalId]
        trace[interval_decide] "Running native_decide (dyadic)"
        evalTactic (← `(tactic| native_decide))
        trace[interval_decide] "Dyadic certificate verified"

      let dyadicProof ← mkAppM dyadicTheoremName
        #[ast, dyadicSupportProof, toExpr zeroRat, toExpr zeroRat, leProof, toExpr boundRat,
          precExpr, depthExpr, precLeZeroProof, dyadicCertGoal]

      let zeroRatAsReal ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, toExpr (0 : ℚ)]
      let h1 ← mkAppM ``le_refl #[zeroRatAsReal]
      let h2 ← mkAppM ``le_refl #[zeroRatAsReal]
      let memProof ← mkAppM ``And.intro #[h1, h2]
      let dyadicProofAtZero := Lean.mkApp2 dyadicProof zeroRatAsReal memProof

      let dyadicProofStxRaw ← Term.exprToSyntax dyadicProofAtZero
      let dyadicProofStx : TSyntax `term := ⟨dyadicProofStxRaw⟩
      let closed ← tryCloseWith dyadicProofStx
      if closed then
        return
    catch e =>
      trace[interval_decide] "Dyadic backend failed: {e.toMessageData}"

    let cfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

    let zeroRat : ℚ := 0
    let leProof ← mkAppM ``le_refl #[toExpr zeroRat]
    let intervalExpr ← mkAppM ``IntervalRat.mk #[toExpr zeroRat, toExpr zeroRat, leProof]

    let theoremName :=
      if isStrict then
        if isReversed then ``verify_strict_lower_bound else ``verify_strict_upper_bound
      else
        if isReversed then ``verify_lower_bound else ``verify_upper_bound

    let checkName :=
      if isStrict then
        if isReversed then ``LeanCert.Validity.checkStrictLowerBound
        else ``LeanCert.Validity.checkStrictUpperBound
      else
        if isReversed then ``LeanCert.Validity.checkLowerBound
        else ``LeanCert.Validity.checkUpperBound

    trace[interval_decide] "Building certificate check"
    let checkExpr ← mkAppM checkName #[ast, intervalExpr, toExpr boundRat, cfgExpr]
    trace[interval_decide] "checkExpr built"
    let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
    let certGoal ← mkFreshExprMVar certTy
    let certGoalId := certGoal.mvarId!
    certGoalId.withContext do
      try
        setGoals [certGoalId]
        trace[interval_decide] "Running native_decide"
        evalTactic (← `(tactic| native_decide))
        trace[interval_decide] "Certificate verified"
      catch e =>
        trace[interval_decide] "native_decide failed: {e.toMessageData}"
        throwError "proveClosedExpressionBound: Certificate check failed for closed expression"

    let proof ← mkAppM theoremName #[ast, supportProof, intervalExpr, toExpr boundRat, cfgExpr, certGoal]

    let zeroRatAsReal ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, toExpr (0 : ℚ)]
    let h1 ← mkAppM ``le_refl #[zeroRatAsReal]
    let h2 ← mkAppM ``le_refl #[zeroRatAsReal]
    let memProof ← mkAppM ``And.intro #[h1, h2]
    let proofAtZero := Lean.mkApp2 proof zeroRatAsReal memProof

    setGoals [goal]

    let proofStxRaw ← Term.exprToSyntax proofAtZero
    let proofStx : TSyntax `term := ⟨proofStxRaw⟩

    let proofType ← inferType proofAtZero
    trace[interval_decide] "Proof type: {proofType}"
    trace[interval_decide] "Goal type: {goalType}"

    let closed ← tryCloseWith proofStx
    if closed then
      return
    throwError "proveClosedExpressionBound: Failed to close goal after all attempts"

/-- The interval_decide tactic implementation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
