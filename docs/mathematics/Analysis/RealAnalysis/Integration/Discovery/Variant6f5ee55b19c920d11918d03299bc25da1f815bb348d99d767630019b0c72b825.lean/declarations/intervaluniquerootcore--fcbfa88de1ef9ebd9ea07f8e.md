# intervalUniqueRootCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6066a2ed7e7de4d75a165805a6e643ba2c5aafaf03827ef79ede090aa6787d1d",
  "kind": "def",
  "lexical_name": "intervalUniqueRootCore",
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
  "slug": "intervaluniquerootcore--fcbfa88de1ef9ebd9ea07f8e",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1667,
    "line": 1594,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcbfa88de1ef9ebd9ea07f8e531aef4ec77ca13b9aebf553245ef3ccbb98276b",
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

Occurrence: `declaration:6066a2ed7e7de4d75a165805a6e643ba2c5aafaf03827ef79ede090aa6787d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1594–1667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
unsafe def intervalUniqueRootCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse goal: ∃! x, x ∈ I ∧ f(x) = 0
  let some (_varName, interval, func) ← parseUniqueRootGoal goalType
    | throwError "interval_unique_root: Goal must be of form `∃! x, x ∈ I ∧ f(x) = 0`"

  let mut fromSetIcc := false
  let intervalExpr ←
    match ← tryConvertSetIcc interval with
    | some intervalRat =>
        fromSetIcc := true
        pure intervalRat
    | none =>
        let intervalTy ← inferType interval
        if intervalTy.isConstOf ``IntervalRat then
          pure interval
        else
          throwError "interval_unique_root: Only IntervalRat or literal Set.Icc intervals are supported"

  -- Extract AST
  let ast ← getAstFromFunc func

  -- Generate ExprSupported proof (required by verify_unique_root_computable)
  let supportProof ← mkSupportedProof ast

  -- Generate UsesOnlyVar0 proof
  let var0Proof ← mkUsesOnlyVar0Proof ast

  -- Generate ContinuousOn proof
  let contProof ← LeanCert.Meta.mkContinuousOnProof ast intervalExpr

  -- Build EvalConfig (for the computable core check)
  let evalCfgExpr ← mkAppM ``EvalConfig.mk #[toExpr taylorDepth]

  -- Apply verify_unique_root_computable (fully computable version)
  -- Args: e, hsupp, hvar0, I, cfg, hCont
  let proof ← mkAppM ``Validity.RootFinding.verify_unique_root_computable
    #[ast, supportProof, var0Proof, intervalExpr, evalCfgExpr, contProof]

    if fromSetIcc then
      let proofSyntax ← Term.exprToSyntax proof
      evalTactic (← `(tactic| refine (by
        have h := $proofSyntax (by native_decide)
        simpa [IntervalRat.mem_iff_mem_Icc, sub_eq_add_neg, sq, pow_two] using h)))
  else
    -- Apply the proof (leaves one certificate check goal)
    let newGoals ← goal.apply proof
    setGoals newGoals

    -- Solve certificate check: checkNewtonContractsCore e I cfg = true
    -- This is computable, so native_decide works
    for g in newGoals do
      setGoals [g]
      evalTactic (← `(tactic| native_decide))

/-- The interval_unique_root tactic.

Proves goals of the form `∃! x ∈ I, f(x) = 0` by:
1. Using Newton contraction to verify uniqueness (derivative bounded away from 0)
2. Applying the Intermediate Value Theorem for existence

**Usage:**
```lean
example : ∃! x ∈ I_1_2, Expr.eval (fun _ => x) (x² - 2) = 0 := by
  interval_unique_root
```

**Requirements:**
- Function must be in `ExprSupported` (const, var, add, mul, neg, sin, cos, exp only)
- Newton step must contract (derivative doesn't contain 0)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
