# parseUniqueRootGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0072e65ffc83bae26731c01deb5095d6e1c88272adfb3beb3b94958de5eb5f88",
  "kind": "def",
  "lexical_name": "parseUniqueRootGoal",
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
  "slug": "parseuniquerootgoal--cc5834555f3be093a7b1a821",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1593,
    "line": 1510,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc5834555f3be093a7b1a821c1caaf5be7436404d6bd4bdf0bb20e7ffd28a512",
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

Occurrence: `declaration:0072e65ffc83bae26731c01deb5095d6e1c88272adfb3beb3b94958de5eb5f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1510–1593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseUniqueRootGoal (goalType : Lean.Expr) : MetaM (Option (Name × Lean.Expr × Lean.Expr)) := do
  -- Match: ∃! x, P x where P x = (x ∈ I ∧ f(x) = 0)
  -- NOTE: Don't call whnf before matching ExistsUnique - it would expand to Exists!
  match_expr goalType with
  | ExistsUnique _ body =>
    -- body is `fun x => x ∈ I ∧ f x = 0`
    if let .lam name ty innerBody _ := body then
      withLocalDeclD name ty fun x => do
        let bodyInst := innerBody.instantiate1 x
        let bodyInst ← whnf bodyInst
        let getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
          let fn := e.getAppFn
          let args := e.getAppArgs
          if fn.isConstOf ``LE.le && args.size >= 4 then
            return some (args[2]!, args[3]!)
          return none
        let extractLowerBound (e : Lean.Expr) : MetaM (Option Lean.Expr) := do
          if let some (a, b) ← getLeArgs e then
            if ← isDefEq b x then
              return some a
          return none
        let extractUpperBound (e : Lean.Expr) : MetaM (Option Lean.Expr) := do
          if let some (a, b) ← getLeArgs e then
            if ← isDefEq a x then
              return some b
          return none
        let extractBoundsFromAnd (memExpr : Lean.Expr) :
            MetaM (Option (Lean.Expr × Lean.Expr)) := do
          match_expr memExpr with
          | And a b =>
            if let some lo ← extractLowerBound a then
              if let some hi ← extractUpperBound b then
                return some (lo, hi)
            if let some lo ← extractLowerBound b then
              if let some hi ← extractUpperBound a then
                return some (lo, hi)
            return none
          | _ => return none
        let extractInterval (memExpr : Lean.Expr) : MetaM (Option Lean.Expr) := do
          match_expr memExpr with
          | Membership.mem _ _ _ interval xExpr =>
            if ← isDefEq xExpr x then return some interval else return none
          | _ =>
            if let some (loExpr, hiExpr) ← extractBoundsFromAnd memExpr then
              return some (← mkAppM ``Set.Icc #[loExpr, hiExpr])
            let memExprWhnf ← withTransparency TransparencyMode.all <| whnf memExpr
            if memExprWhnf == memExpr then
              return none
            if let some (loExpr, hiExpr) ← extractBoundsFromAnd memExprWhnf then
              return some (← mkAppM ``Set.Icc #[loExpr, hiExpr])
            return none
        -- bodyInst should be x ∈ I ∧ f x = 0
        match_expr bodyInst with
        | And memExpr eqExpr =>
          -- Extract interval from membership (use pattern matching)
          let some interval ← extractInterval memExpr | return none
          -- Extract function from equality
          let some func := ← (do
            match_expr eqExpr with
            | Eq _ lhs rhs =>
              let zero ← mkAppOptM ``OfNat.ofNat #[mkConst ``Real, mkRawNatLit 0, none]
              let rhs ← whnf rhs
              let isZero ← isDefEq rhs zero
              if !isZero then return none
              if lhs.containsFVar x.fvarId! then
                return some (← mkLambdaFVars #[x] lhs)
              else
                return none
            | _ => return none) | return none
          return some (name, interval, func)
        | _ => return none
    else return none
  | _ => return none

/-- Core implementation for interval_unique_root tactic.

    Proves `∃! x ∈ I, f(x) = 0` by:
    1. Checking Newton contraction (derivative bounded away from 0)
    2. Applying verify_unique_root_computable theorem

    Uses the fully computable `verify_unique_root_computable` theorem which only
    requires `checkNewtonContractsCore`. This allows `native_decide` to work
    without noncomputable Real functions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L1510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
