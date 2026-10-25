# tryDyadicBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d15918ff982914229a93ae04465eadd6115dea7941605ec240d61b4ea4f37e60",
  "kind": "def",
  "lexical_name": "tryDyadicBound",
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
  "slug": "trydyadicbound--5cf7a9a3e11d0ca90e903f85",
  "source": {
    "blob": "b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cf7a9a3e11d0ca90e903f85bf06c4b7eef09f28a199587bc9f81e31c791fa2c",
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

Occurrence: `declaration:d15918ff982914229a93ae04465eadd6115dea7941605ec240d61b4ea4f37e60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryDyadicBound (goal : MVarId) (ast boundRat : Lean.Expr)
    (intervalInfo : IntervalInfo) (taylorDepth : Nat)
    (isStrict isLower : Bool) : TacticM Bool := do
  try
    -- Try ExprSupported first, fall back to ExprSupportedWithInv
    let mut dyadicSupportProof ← mkSupportedWithInvProof ast
    let mut useWithInv := true
    try
      dyadicSupportProof ← mkSupportedProof ast
      useWithInv := false
    catch _ => pure ()
    let (theoremName, checkName) :=
      match useWithInv, isStrict, isLower with
      | false, false, false => (``LeanCert.Validity.verify_upper_bound_dyadic', ``LeanCert.Validity.checkUpperBoundDyadic)
      | false, false, true  => (``LeanCert.Validity.verify_lower_bound_dyadic', ``LeanCert.Validity.checkLowerBoundDyadic)
      | false, true,  false => (``LeanCert.Validity.verify_strict_upper_bound_dyadic', ``LeanCert.Validity.checkStrictUpperBoundDyadic)
      | false, true,  true  => (``LeanCert.Validity.verify_strict_lower_bound_dyadic', ``LeanCert.Validity.checkStrictLowerBoundDyadic)
      | true,  false, false => (``LeanCert.Validity.verify_upper_bound_dyadic_withInv, ``LeanCert.Validity.checkUpperBoundDyadicWithInv)
      | true,  false, true  => (``LeanCert.Validity.verify_lower_bound_dyadic_withInv, ``LeanCert.Validity.checkLowerBoundDyadicWithInv)
      | true,  true,  false => (``LeanCert.Validity.verify_strict_upper_bound_dyadic_withInv, ``LeanCert.Validity.checkStrictUpperBoundDyadicWithInv)
      | true,  true,  true  => (``LeanCert.Validity.verify_strict_lower_bound_dyadic_withInv, ``LeanCert.Validity.checkStrictLowerBoundDyadicWithInv)
    let prec : Int := -80
    let precExpr := toExpr prec
    let depthExpr := toExpr taylorDepth
    let precLeZeroProof ← mkDecideProof (← mkAppM ``LE.le #[precExpr, toExpr (0 : Int)])
    match intervalInfo.fromSetIcc with
    | some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _origLo, _origHi) =>
      let proof ← mkAppM theoremName
        #[ast, dyadicSupportProof, loRatExpr, hiRatExpr, leProof, boundRat,
          precExpr, depthExpr, precLeZeroProof]
      let checkExpr ← mkAppM checkName
        #[ast, loRatExpr, hiRatExpr, leProof, boundRat, precExpr, depthExpr]
      let certTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]
      let certGoal ← mkFreshExprMVar certTy
      let certGoalId := certGoal.mvarId!
      certGoalId.withContext do
        setGoals [certGoalId]
        evalTactic (← `(tactic| native_decide))
      let conclusionProof ← mkAppM' proof #[certGoal]
      setGoals [goal]
      let newGoals ← goal.apply conclusionProof
      setGoals newGoals
      -- Close any remaining side goals
      for g in newGoals do
        setGoals [g]
        try evalTactic (← `(tactic| rfl))
        catch _ =>
          try evalTactic (← `(tactic| norm_num))
          catch _ =>
            try evalTactic (← `(tactic| norm_cast))
            catch _ => pure ()
      if (← getGoals).isEmpty then
        return true
      return false
    | none => return false
  catch e =>
    trace[interval_decide] "Dyadic backend failed in interval_bound: {e.toMessageData}"
    return false

/-! ## Main Tactic Implementation -/

/-- The main interval_bound tactic implementation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantbe3ee65b14c32819757f83c163637c0d406005213214e83c34e699ea9169804c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a6728d5cc48227fbf9f08d7a8c8a0203cc050c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
