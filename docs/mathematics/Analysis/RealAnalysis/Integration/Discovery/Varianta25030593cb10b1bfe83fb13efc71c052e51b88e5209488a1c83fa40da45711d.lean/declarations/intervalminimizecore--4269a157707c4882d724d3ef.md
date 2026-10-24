# intervalMinimizeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59dbde1a2b112c3ad744605d83193418ef853400bc4e906ff035b2bd2fdccfc9",
  "kind": "def",
  "lexical_name": "intervalMinimizeCore",
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
  "slug": "intervalminimizecore--4269a157707c4882d724d3ef",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 383,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4269a157707c4882d724d3ef89c7808f2c92a01b1b5b6a4b9fbd55c584afba5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59dbde1a2b112c3ad744605d83193418ef853400bc4e906ff035b2bd2fdccfc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def intervalMinimizeCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType

  let some (.minimize _varName varType domainExpr funcExpr) ← parseExistentialGoal goalType
    | let diagReport ← LeanCert.Tactic.Auto.mkDiagnosticReport "interval_minimize" goalType "parse"
        (some m!"Expected form: ∃ m, ∀ x ∈ I, f(x) ≥ m\n\n\
                 Where:\n\
                 • m is a rational bound variable\n\
                 • x is the quantified variable over interval I\n\
                 • f(x) is an expression supported by LeanCert")
      throwError "interval_minimize: Could not parse goal.\n\n{diagReport}"

  trace[LeanCert.discovery] "Parsing goal: ∃ m, ∀ x ∈ I, f(x) ≥ m"
  trace[LeanCert.discovery] "Function expression: {funcExpr}"

  -- 1. Reify the function (or extract from Expr.eval)
  let ast ← getAstFromFunc funcExpr
  trace[LeanCert.discovery] "Reified AST: {ast}"

  -- 2. Prepare for evaluation with guided optimization
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

  -- Note: safely evaluating the domain expression from syntax to a value
  let domainExpr ←
    match ← tryConvertSetIcc domainExpr with
    | some intervalRat => pure intervalRat
    | none => pure domainExpr
  let domainVal ← evalExpr IntervalRat (mkConst ``IntervalRat) domainExpr
  let boxVal : Box := [domainVal]
  trace[LeanCert.discovery] "Domain: [{domainVal.lo}, {domainVal.hi}]"

  -- 3. Run float-guided optimization
  trace[LeanCert.discovery] "Running float-guided optimization (heuristic samples={cfg.heuristicSamples}, maxIters={cfg.maxIterations}, taylorDepth={taylorDepth})..."
  let astVal ← evalExpr LExpr (mkConst ``LeanCert.Core.Expr) ast
  let result := globalMinimizeGuided astVal boxVal cfg
  let boundVal := result.bound.lo

  trace[LeanCert.discovery] "Optimization complete: {result.bound.iterations} iterations"
  trace[LeanCert.discovery] "Found minimum bound: {boundVal}"
  trace[LeanCert.discovery] "Gap: [{result.bound.lo}, {result.bound.hi}]"

  -- Check if optimization converged well
  let gap := result.bound.hi - result.bound.lo
  if gap > cfg.tolerance then
    logWarning m!"⚠️ Optimization gap [{result.bound.lo}, {result.bound.hi}] exceeds tolerance {cfg.tolerance}.\n\
                  Consider increasing maxIterations or taylorDepth."

  -- 4. Provide witness and prove the bound
  -- Note: Coerce to ℝ since Expr.eval returns ℝ
  let boundRatExpr := toExpr boundVal
  let boundTerm ←
    match (← whnf varType) with
    | ty =>
      if ty.isConstOf ``Rat then
        pure boundRatExpr
      else if ty.isConstOf ``Real then
        mkAppOptM ``Rat.cast #[mkConst ``Real, none, boundRatExpr]
      else
        throwError "interval_minimize: Unsupported bound type. Use ℚ or ℝ."
  let boundSyntax ← Term.exprToSyntax boundTerm
  trace[LeanCert.discovery] "Providing witness: m = {boundVal}"
  evalTactic (← `(tactic| refine ⟨$boundSyntax, ?_⟩))

  -- 5. Now we have a goal `∀ x ∈ I, f(x) ≥ bound`
  trace[LeanCert.discovery] "Proving universal bound with interval_bound..."
  LeanCert.Tactic.Auto.intervalBoundCore taylorDepth
  trace[LeanCert.discovery] "✓ Proof complete"

/-- The interval_minimize tactic.

Proves goals of the form `∃ m, ∀ x ∈ I, f(x) ≥ m` by:
1. Running global optimization to find the minimum `m`.
2. Instantiating the existential with `m`.
3. Proving the bound using `opt_bound`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
