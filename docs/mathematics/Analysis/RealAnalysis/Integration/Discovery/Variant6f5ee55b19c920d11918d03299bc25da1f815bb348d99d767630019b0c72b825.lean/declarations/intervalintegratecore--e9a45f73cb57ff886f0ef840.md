# intervalIntegrateCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a6c09239a0aaf865570750eb65f09b5b4f5b8b6e2419b03c32718dc0398dc99",
  "kind": "def",
  "lexical_name": "intervalIntegrateCore",
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
  "slug": "intervalintegratecore--e9a45f73cb57ff886f0ef840",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1790,
    "line": 1706,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9a45f73cb57ff886f0ef840c4db1452d4fcb3fc0c2c06e65e71adfb6c4c3736",
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

Occurrence: `declaration:2a6c09239a0aaf865570750eb65f09b5b4f5b8b6e2419b03c32718dc0398dc99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1706–1790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
unsafe def intervalIntegrateCore (_taylorDepth : Nat) : TacticM Unit := do
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse the goal to extract the bound expression
  let some (_lo, _hi, _integral, bound) ← parseIntegrationGoal goalType
    | throwError "interval_integrate: Could not parse goal. Expected form: ∫ x in lo..hi, f(x) ∈ bound"

  -- The bound should be: Validity.Integration.integrateInterval1Core e I cfg
  -- Extract e, I, cfg from it
  if !bound.isAppOfArity ``Validity.Integration.integrateInterval1Core 3 then
    throwError "interval_integrate: Bound must be of form `Validity.Integration.integrateInterval1Core e I cfg`"

  let args := bound.getAppArgs
  let ast := args[0]!
  let interval := args[1]!
  let cfg := args[2]!

  -- Generate ExprSupportedCore proof for the AST
  let supportProof ← mkSupportedCoreProof ast

  -- Build domain validity type: evalDomainValid1 e I cfg
  let domValidType ← mkAppM ``LeanCert.Engine.evalDomainValid1 #[ast, interval, cfg]

  -- Try to generate domain validity proof using native_decide (since it's decidable)
  -- Fall back to sorry if that fails (e.g., for expressions with log that need positivity)
  let domValidProof ← try
    -- evalDomainValid1 is decidable, so we can use native_decide
    let domValidDecide ← mkAppM ``of_decide_eq_true #[domValidType]
    let rflProof ← mkAppM ``Eq.refl #[mkConst ``Bool.true]
    mkAppM' domValidDecide #[rflProof]
  catch _ =>
    -- If native_decide fails, try generating ExprSupported proof and use domainValid theorem
    try
      let suppProof ← mkSupportedProof ast
      mkAppM ``LeanCert.Engine.exprSupported_domainValid1 #[suppProof, interval, cfg]
    catch _ =>
      -- Last resort: use sorry
      mkSorry domValidType (synthetic := true)

  -- Build continuity domain validity type
  -- We need to get the interval bounds for the Set.Icc as reals
  -- Construct the Set.Icc (I.lo : ℝ) (I.hi : ℝ) expression
  let loExpr ← mkAppM ``IntervalRat.lo #[interval]
  let hiExpr ← mkAppM ``IntervalRat.hi #[interval]
  -- Construct (lo : ℝ) and (hi : ℝ) using Rat.cast
  -- @Rat.cast ℝ _ lo where _ is the RatCast instance
  let loRealExpr ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, loExpr]
  let hiRealExpr ← mkAppOptM ``Rat.cast #[mkConst ``Real, none, hiExpr]
  let setIccExpr ← mkAppM ``Set.Icc #[loRealExpr, hiRealExpr]
  let contDomValidType ← mkAppM ``LeanCert.Meta.exprContinuousDomainValid #[ast, setIccExpr]

  -- Try to generate continuity domain validity proof using ExprSupported
  -- ExprSupported expressions (no log) have trivial domain validity
  let contDomValidProof ← try
    let suppProof ← mkSupportedProof ast
    -- Need to instantiate the implicit {s : Set ℝ} parameter with setIccExpr
    mkAppOptM ``LeanCert.Meta.exprContinuousDomainValid_of_ExprSupported #[some ast, some suppProof, some setIccExpr]
  catch _ =>
    -- Fall back to sorry for expressions with log (need positivity proof)
    mkSorry contDomValidType (synthetic := true)

  -- Build the proof term: integrateInterval1Core_correct e supportProof I cfg hdom hcontdom
  let proof ← mkAppM ``Validity.Integration.integrateInterval1Core_correct
    #[ast, supportProof, interval, cfg, domValidProof, contDomValidProof]

  -- Assign the proof
  goal.assign proof

/-- The interval_integrate tactic.

Proves goals of the form `∫ x in (I.lo)...(I.hi), f(x) ∈ bound` by:
1. Computing the integral bound using interval arithmetic
2. Applying the integrateInterval1Core_correct theorem

**Usage:**
```lean
example : ∫ x in (0:ℝ)..1, x ∈ Validity.Integration.integrateInterval1Core (Expr.var 0) ⟨0, 1, by norm_num⟩ default := by
  interval_integrate
```

**Limitations:**
- The bound must exactly match `integrateInterval1Core e I cfg`
- The function must be in `ExprSupportedCore` (no log, inv)
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1706).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
