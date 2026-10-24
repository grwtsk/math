# proveForallGeAdaptive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de05b71bf998fe1c4877b4189851ac0aa537500ad9052856304df67e7ce44b6e",
  "kind": "def",
  "lexical_name": "proveForallGeAdaptive",
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
  "slug": "proveforallgeadaptive--92e61a56fa33d8b4ad54cb05",
  "source": {
    "blob": "a956fde47298bba8b6adc5bb036638f874b0784d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 125,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Adaptive/Varianta21044ce2020156b79022b20d28307fd41489878eb5f43015b80a0071b23653d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92e61a56fa33d8b4ad54cb059dce5cbb0b4cedfd1cceebef0acc832d407684a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Adaptive/Varianta21044ce2020156b79022b20d28307fd41489878eb5f43015b80a0071b23653d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de05b71bf998fe1c4877b4189851ac0aa537500ad9052856304df67e7ce44b6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def proveForallGeAdaptive (goal : MVarId) (intervalInfo : IntervalInfo)
    (func bound : Lean.Expr) (maxIters : Nat) : TacticM Unit := do
  goal.withContext do
    let ast ← getAst func
    let boundRat ← extractRatBound bound
    let supportProof ← LeanCert.Meta.mkSupportedProof ast

    let some bounds ← getSubdivBounds intervalInfo
      | throwError "interval_bound_adaptive: Only literal Set.Icc or IntervalRat intervals supported"
    let (_lo, _hi, loRatExpr, hiRatExpr, leProof, fromSetIcc) := bounds

    let globalOptCfgExpr ← mkAppM ``GlobalOptConfig.mk
      #[toExpr maxIters, toExpr (1/10000 : ℚ), toExpr false, toExpr (15 : Nat)]

    let intervalRatExpr ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
    let box ← mkListLit (mkConst ``IntervalRat) [intervalRatExpr]

    let checkExpr ← mkAppM ``checkGlobalLowerBound #[ast, box, boundRat, globalOptCfgExpr]
    let checkTy ← mkAppM ``Eq #[checkExpr, mkConst ``Bool.true]

    let savedGoals ← getGoals
    let checkGoal ← mkFreshExprMVar checkTy
    setGoals [checkGoal.mvarId!]
    try
      evalTactic (← `(tactic| native_decide))
    catch _ =>
      throwError "interval_bound_adaptive: Adaptive verification failed - bound not tight enough"
    let checkProof := checkGoal

    setGoals savedGoals

    let proof ← mkAppM ``verify_global_lower_bound
      #[ast, supportProof, box, boundRat, globalOptCfgExpr, checkProof]

    let conclusionTerm ← Lean.Elab.Term.exprToSyntax proof
    let intervalRatSyntax ← Lean.Elab.Term.exprToSyntax intervalRatExpr
    if fromSetIcc then
      evalTactic (← `(tactic| intro _x _hx))
      evalTactic (← `(tactic|
        have hρ : Box.envMem (fun i => List.getD [_x] i 0) [$intervalRatSyntax] := by
          intro ⟨i, hi⟩
          simp only [List.length_singleton] at hi
          have hi' : i = 0 := Nat.lt_one_iff.mp hi
          subst hi'
          simp only [List.getD_cons_zero, List.getElem_cons_zero, IntervalRat.mem_def]
          constructor <;> (push_cast; linarith [_hx.1, _hx.2])))
      evalTactic (← `(tactic|
        have hzero : ∀ i, i ≥ ([$intervalRatSyntax] : Box).length → (fun j => List.getD [_x] j 0) i = 0 := by
          intro i hi
          simp only [List.length_singleton, ge_iff_le] at hi
          have hnot : ¬ i < [_x].length := Nat.not_lt.mpr hi
          simp [List.getD, List.getElem?_eq_none (Nat.not_lt.mp hnot)]))
      evalTactic (← `(tactic| have heval := $conclusionTerm (fun i => List.getD [_x] i 0) hρ hzero))
      evalTactic (← `(tactic| simp only [List.getD_cons_zero] at heval))
      evalTactic (← `(tactic| convert heval using 1))
      let goals ← getGoals
      for g in goals do
        setGoals [g]
        try evalTactic (← `(tactic| rfl))
        catch _ =>
          try evalTactic (← `(tactic| simp only [Rat.divInt_eq_div]; push_cast; ring))
          catch _ => pure ()
    else
      evalTactic (← `(tactic| intro _x _hx))
      evalTactic (← `(tactic|
        have hρ : Box.envMem (fun i => List.getD [_x] i 0) [$intervalRatSyntax] := by
          intro ⟨i, hi⟩
          simp only [List.length_singleton] at hi
          have hi' : i = 0 := Nat.lt_one_iff.mp hi
          subst hi'
          simp only [List.getD_cons_zero, List.getElem_cons_zero]
          exact _hx))
      evalTactic (← `(tactic|
        have hzero : ∀ i, i ≥ ([$intervalRatSyntax] : Box).length → (fun j => List.getD [_x] j 0) i = 0 := by
          intro i hi
          simp only [List.length_singleton, ge_iff_le] at hi
          have hnot : ¬ i < [_x].length := Nat.not_lt.mpr hi
          simp [List.getD, List.getElem?_eq_none (Nat.not_lt.mp hnot)]))
      evalTactic (← `(tactic| have heval := $conclusionTerm (fun i => List.getD [_x] i 0) hρ hzero))
      evalTactic (← `(tactic| simp only [List.getD_cons_zero] at heval))
      evalTactic (← `(tactic| convert heval using 1))
      let goals ← getGoals
      for g in goals do
        setGoals [g]
        try evalTactic (← `(tactic| rfl))
        catch _ => pure ()

/-- The interval_bound_adaptive tactic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Adaptive/Varianta21044ce2020156b79022b20d28307fd41489878eb5f43015b80a0071b23653d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Adaptive/Varianta21044ce2020156b79022b20d28307fd41489878eb5f43015b80a0071b23653d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a956fde47298bba8b6adc5bb036638f874b0784d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
