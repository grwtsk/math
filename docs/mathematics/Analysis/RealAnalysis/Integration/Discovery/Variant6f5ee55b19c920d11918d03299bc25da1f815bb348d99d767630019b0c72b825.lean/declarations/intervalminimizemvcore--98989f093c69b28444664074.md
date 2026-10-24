# intervalMinimizeMvCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3223dcf90c7f83ee3297b246b92e7d76cbcbfc1f085ea323a85f2854731f7a0",
  "kind": "def",
  "lexical_name": "intervalMinimizeMvCore",
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
  "slug": "intervalminimizemvcore--98989f093c69b28444664074",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1191,
    "line": 1111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98989f093c69b28444664074c6dd1e284830aa0635b8cd823cb601bb9f125e22",
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

Occurrence: `declaration:a3223dcf90c7f83ee3297b246b92e7d76cbcbfc1f085ea323a85f2854731f7a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def intervalMinimizeMvCore (taylorDepth : Nat) : TacticM Unit := do
  LeanCert.Tactic.Auto.intervalNormCore
  let goal ← getMainGoal
  let goalType ← goal.getType

  let some (.minimize varType vars funcExpr) ← parseMultivariateExistentialGoal goalType
    | throwError "interval_minimize_mv: Goal must be of form `∃ m, ∀ x ∈ I, ∀ y ∈ J, ..., f(...) ≥ m`"

  trace[LeanCert.discovery] "Parsing multivariate goal: ∃ m, ∀ vars ∈ domains, f(...) ≥ m"
  trace[LeanCert.discovery] "Number of variables: {vars.size}"
  trace[LeanCert.discovery] "Function expression: {funcExpr}"

  -- 1. Reify the function
  let ast ← getAstFromFunc funcExpr
  trace[LeanCert.discovery] "Reified AST: {ast}"

  -- 2. Build the box from all variable intervals
  let mut boxVals : Array IntervalRat := #[]
  for v in vars do
    let intervalVal ← evalExpr IntervalRat (mkConst ``IntervalRat) v.intervalRat
    boxVals := boxVals.push intervalVal
    trace[LeanCert.discovery] "Variable {v.varName}: [{intervalVal.lo}, {intervalVal.hi}]"

  let boxVal : Box := boxVals.toList

  -- 3. Prepare config for multivariate guided optimization
  let cfg : GuidedOptConfig := {
    maxIterations := 2000,  -- More iterations for multivariate
    tolerance := 1/1000,
    taylorDepth := taylorDepth,
    useMonotonicity := true,
    heuristicSamples := 300,  -- More samples for higher dimensions
    seed := 12345,
    useGridSearch := true,
    gridPointsPerDim := 5  -- Fewer points per dim for multivariate
  }

  -- 4. Run float-guided optimization
  trace[LeanCert.discovery] "Running multivariate float-guided optimization..."
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

  -- 5. Provide witness and prove the bound
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
        throwError "interval_minimize_mv: Unsupported bound type. Use ℚ or ℝ."
  let boundSyntax ← Term.exprToSyntax boundTerm
  trace[LeanCert.discovery] "Providing witness: m = {boundVal}"
  evalTactic (← `(tactic| refine ⟨$boundSyntax, ?_⟩))

  -- 6. Now we have a multivariate goal `∀ x ∈ I, ∀ y ∈ J, ..., f(...) ≥ bound`
  trace[LeanCert.discovery] "Proving multivariate universal bound with interval_bound..."
  LeanCert.Tactic.Auto.multivariateBoundCore cfg.maxIterations cfg.tolerance cfg.useMonotonicity taylorDepth
  trace[LeanCert.discovery] "✓ Proof complete"

/-- The interval_minimize_mv tactic.

Proves multivariate goals of the form `∃ m, ∀ x ∈ I, ∀ y ∈ J, f(x,y) ≥ m` by:
1. Running global optimization over the n-dimensional domain.
2. Instantiating the existential with the found minimum.
3. Proving the bound using `interval_bound`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
