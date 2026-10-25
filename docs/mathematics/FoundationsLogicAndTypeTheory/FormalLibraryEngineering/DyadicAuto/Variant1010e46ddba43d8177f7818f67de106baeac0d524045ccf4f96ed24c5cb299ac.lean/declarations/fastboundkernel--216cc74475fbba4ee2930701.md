# fastBoundKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa8b067ca60c5fecf39cf19a572ef02e0af1f26b841bdb5cadcf2e83d6c853f",
  "kind": "def",
  "lexical_name": "fastBoundKernel",
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
  "slug": "fastboundkernel--216cc74475fbba4ee2930701",
  "source": {
    "blob": "8716f3dcdd22612d381900eaa26d4ba6b3dd8fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:216cc74475fbba4ee2930701ae69fc2256011df1a2c73750c2aac1363201eb25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa8b067ca60c5fecf39cf19a572ef02e0af1f26b841bdb5cadcf2e83d6c853f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def fastBoundKernel (prec : Int) (taylorDepth : Nat) : TacticM KernelVerifyResult := do
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- 1. Parse the goal
  let some boundGoal ← Auto.parseBoundGoal goalType
    | return .parseError

  goal.withContext do
    match boundGoal with
    | .forallLe _name interval func boundExpr =>
      -- 2. Extract interval bounds
      let some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _loRealExpr, _hiRealExpr) := interval.fromSetIcc
        | return .parseError

      -- 3. Extract bound as rational
      let some c ← Auto.extractRatFromReal boundExpr
        | return .parseError
      let cExpr := toExpr c

      -- 4. Extract AST (from Expr.eval) or reify (from raw expression)
      let (ast, isExprEval) ← extractOrReifyAst func
      let supportProof ← mkSupportedCoreProof ast

      -- For non-Expr.eval goals, kernel verification won't type-match, so skip
      if !isExprEval then
        return .nativeExpression

      -- 5. Build configuration expressions
      let precExpr := toExpr prec
      let depthExpr := toExpr taylorDepth

      -- 6. Build the proof that prec ≤ 0
      let precLeZeroTy ← mkAppM ``LE.le #[precExpr, toExpr (0 : Int)]
      let precLeZeroProof ← mkDecideProof precLeZeroTy

      -- 7. Build the interval and environment
      let intervalRatExpr ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]

      -- 8. Build the certificate check expression
      let natTy := Lean.mkConst ``Nat
      let envExpr ← withLocalDeclD `i natTy fun i => do
        let body ← mkAppM ``IntervalDyadic.ofIntervalRat #[intervalRatExpr, precExpr]
        mkLambdaFVars #[i] body

      let cfgExpr ← mkAppM ``DyadicConfig.mk #[precExpr, depthExpr, toExpr (0 : Nat)]
      let evalExpr ← mkAppM ``evalIntervalDyadic #[ast, envExpr, cfgExpr]
      let checkExpr ← mkAppM ``IntervalDyadic.upperBoundedBy #[evalExpr, cExpr]

      -- 9. Build proof that check = true using KERNEL REDUCTION (decide)
      let checkEqTrueTy ← mkAppM ``Eq #[checkExpr, Lean.mkConst ``Bool.true]
      let checkProof ← try
        mkDecideProof checkEqTrueTy
      catch _ =>
        return .boundCheckFailed

      -- 9b. Build domain validity proof (trivial for expressions without log)
      let domTy ← mkAppM ``evalDomainValidDyadic #[ast, envExpr, cfgExpr]
      let domProof ← try
        mkDecideProof domTy  -- Works because evalDomainValidDyadic is decidable (True for non-log)
      catch _ =>
        return .boundCheckFailed  -- Log expressions not supported in kernel mode

      -- 10. Apply the bridge theorem
      let proof ← mkAppM ``verify_upper_bound_dyadic
        #[ast, supportProof, loRatExpr, hiRatExpr, leProof, cExpr,
          precExpr, depthExpr, precLeZeroProof, domProof, checkProof]

      -- 11. Check if proof type matches goal type
      let proofTy ← inferType proof
      let goalTy ← goal.getType
      if ← isDefEq proofTy goalTy then
        goal.assign proof
        trace[fast_bound] "Kernel verification succeeded (via decide)"
        return .success
      else
        return .boundsNotDefeq

    | .forallGe _name interval func boundExpr =>
      -- Similar for lower bound
      let some (_lo, _hi, loRatExpr, hiRatExpr, leProof, _loRealExpr, _hiRealExpr) := interval.fromSetIcc
        | return .parseError

      let some c ← Auto.extractRatFromReal boundExpr
        | return .parseError
      let cExpr := toExpr c

      -- Extract AST (from Expr.eval) or reify (from raw expression)
      let (ast, isExprEval) ← extractOrReifyAst func
      let supportProof ← mkSupportedCoreProof ast

      -- For non-Expr.eval goals, kernel verification won't type-match, so skip
      if !isExprEval then
        return .nativeExpression

      let precExpr := toExpr prec
      let depthExpr := toExpr taylorDepth

      let precLeZeroTy ← mkAppM ``LE.le #[precExpr, toExpr (0 : Int)]
      let precLeZeroProof ← mkDecideProof precLeZeroTy

      let intervalRatExpr ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]

      let natTy := Lean.mkConst ``Nat
      let envExpr ← withLocalDeclD `i natTy fun i => do
        let body ← mkAppM ``IntervalDyadic.ofIntervalRat #[intervalRatExpr, precExpr]
        mkLambdaFVars #[i] body

      let cfgExpr ← mkAppM ``DyadicConfig.mk #[precExpr, depthExpr, toExpr (0 : Nat)]
      let evalExpr ← mkAppM ``evalIntervalDyadic #[ast, envExpr, cfgExpr]
      let checkExpr ← mkAppM ``IntervalDyadic.lowerBoundedBy #[evalExpr, cExpr]

      let checkEqTrueTy ← mkAppM ``Eq #[checkExpr, Lean.mkConst ``Bool.true]
      let checkProof ← try
        mkDecideProof checkEqTrueTy
      catch _ =>
        return .boundCheckFailed

      -- Build domain validity proof (trivial for expressions without log)
      let domTy ← mkAppM ``evalDomainValidDyadic #[ast, envExpr, cfgExpr]
      let domProof ← try
        mkDecideProof domTy
      catch _ =>
        return .boundCheckFailed

      let proof ← mkAppM ``verify_lower_bound_dyadic
        #[ast, supportProof, loRatExpr, hiRatExpr, leProof, cExpr,
          precExpr, depthExpr, precLeZeroProof, domProof, checkProof]

      let proofTy ← inferType proof
      let goalTy ← goal.getType
      if ← isDefEq proofTy goalTy then
        goal.assign proof
        trace[fast_bound] "Kernel verification succeeded (via decide)"
        return .success
      else
        return .boundsNotDefeq

    | _ =>
      -- Strict inequalities not yet supported in kernel mode
      return .unsupportedGoal

/-! ## Main Tactic -/

/--
The certify_kernel tactic. Proves bounds using Dyadic arithmetic with kernel
verification when possible.

## Trust Levels

| Mode | Verification | When Used |
|------|-------------|-----------|
| Kernel | `decide` | Goal in `Core.Expr.eval` form |
| Fallback | `native_decide` | General expressions |

Kernel verification provides maximum trust (only the Lean kernel is trusted).
Fallback mode trusts the Lean compiler and runtime in addition to the kernel.

## Kernel Verification

For goals expressed using `Core.Expr.eval`, the tactic uses kernel-verified
arithmetic via `decide`. This requires the goal's interval bounds to be
definitionally equal to rational casts:

```lean
open LeanCert.Core

-- This uses kernel verification (Expr.eval form)
example : ∀ x ∈ Set.Icc (0 : ℝ) 1,
    Expr.eval (fun _ => x) (Expr.mul (Expr.var 0) (Expr.var 0)) ≤ 2 := by
  certify_kernel
```

## General Usage

For native Lean expressions, the tactic falls back to `certify_bound`
which uses `native_decide`:

```lean
-- This falls back to native_decide
example : ∀ x ∈ Set.Icc (0 : ℝ) 1, x * x ≤ 2 := by
  certify_kernel
```

Usage:
- `certify_kernel` - Use default precision (53 bits)
- `certify_kernel n` - Use n bits of precision

Note: `fast_bound` is an alias for backward compatibility.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicAuto/Variant1010e46ddba43d8177f7818f67de106baeac0d524045ccf4f96ed24c5cb299ac.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8716f3dcdd22612d381900eaa26d4ba6b3dd8fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
