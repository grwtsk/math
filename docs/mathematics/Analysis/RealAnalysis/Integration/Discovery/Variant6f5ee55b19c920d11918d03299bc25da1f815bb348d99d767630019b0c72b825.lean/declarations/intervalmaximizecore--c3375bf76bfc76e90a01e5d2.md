# intervalMaximizeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31183bbafd9e2877f53dbad64eb140371e6de526724e5b2d3a35f249c29fdcbb",
  "kind": "def",
  "lexical_name": "intervalMaximizeCore",
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
  "slug": "intervalmaximizecore--c3375bf76bfc76e90a01e5d2",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 473,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3375bf76bfc76e90a01e5d241dae3940c6f3a645205e4f3975b462c088a8268",
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

Occurrence: `declaration:31183bbafd9e2877f53dbad64eb140371e6de526724e5b2d3a35f249c29fdcbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def intervalMaximizeCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType

  let some (.maximize _varName varType domainExpr funcExpr) ← parseExistentialGoal goalType
    | let diagReport ← LeanCert.Tactic.Auto.mkDiagnosticReport "interval_maximize" goalType "parse"
        (some m!"Expected form: ∃ M, ∀ x ∈ I, f(x) ≤ M\n\n\
                 Where:\n\
                 • M is a rational bound variable\n\
                 • x is the quantified variable over interval I\n\
                 • f(x) is an expression supported by LeanCert")
      throwError "interval_maximize: Could not parse goal.\n\n{diagReport}"

  trace[LeanCert.discovery] "Parsing goal: ∃ M, ∀ x ∈ I, f(x) ≤ M"
  trace[LeanCert.discovery] "Function expression: {funcExpr}"

  -- Use getAstFromFunc to handle both Expr.eval and raw expressions
  let ast ← getAstFromFunc funcExpr
  trace[LeanCert.discovery] "Reified AST: {ast}"

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

  trace[LeanCert.discovery] "Running float-guided optimization (heuristic samples={cfg.heuristicSamples}, maxIters={cfg.maxIterations}, taylorDepth={taylorDepth})..."
  let astVal ← evalExpr LExpr (mkConst ``LeanCert.Core.Expr) ast
  let result := globalMaximizeGuided astVal boxVal cfg
  let boundVal := result.bound.hi

  trace[LeanCert.discovery] "Optimization complete: {result.bound.iterations} iterations"
  trace[LeanCert.discovery] "Found maximum bound: {boundVal}"
  trace[LeanCert.discovery] "Gap: [{result.bound.lo}, {result.bound.hi}]"

  -- Check if optimization converged well
  let gap := result.bound.hi - result.bound.lo
  if gap > cfg.tolerance then
    logWarning m!"⚠️ Optimization gap [{result.bound.lo}, {result.bound.hi}] exceeds tolerance {cfg.tolerance}.\n\
                  Consider increasing maxIterations or taylorDepth."

  let boundRatExpr := toExpr boundVal
  let boundTerm ←
    match (← whnf varType) with
    | ty =>
      if ty.isConstOf ``Rat then
        pure boundRatExpr
      else if ty.isConstOf ``Real then
        mkAppOptM ``Rat.cast #[mkConst ``Real, none, boundRatExpr]
      else
        throwError "interval_maximize: Unsupported bound type. Use ℚ or ℝ."
  let boundSyntax ← Term.exprToSyntax boundTerm
  trace[LeanCert.discovery] "Providing witness: M = {boundVal}"
  evalTactic (← `(tactic| refine ⟨$boundSyntax, ?_⟩))

  -- Now prove the bound using intervalBoundCore
  trace[LeanCert.discovery] "Proving universal bound with interval_bound..."
  LeanCert.Tactic.Auto.intervalBoundCore taylorDepth
  trace[LeanCert.discovery] "✓ Proof complete"

/-- The interval_maximize tactic.

Proves goals of the form `∃ M, ∀ x ∈ I, f(x) ≤ M`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
