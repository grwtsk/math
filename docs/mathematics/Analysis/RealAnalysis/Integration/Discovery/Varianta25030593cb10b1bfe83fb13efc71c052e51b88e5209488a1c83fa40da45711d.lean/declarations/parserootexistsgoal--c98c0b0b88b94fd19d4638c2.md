# parseRootExistsGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:087f1bad73b21441f1abfe6cb66fee2ffa38ae4c0fd3b031b57ace056cf6b7bd",
  "kind": "def",
  "lexical_name": "parseRootExistsGoal",
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
  "slug": "parserootexistsgoal--c98c0b0b88b94fd19d4638c2",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1400,
    "line": 1309,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c98c0b0b88b94fd19d4638c259d6e7d3c24975a19dec27a7ac9e27c468ab2f6d",
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

Occurrence: `declaration:087f1bad73b21441f1abfe6cb66fee2ffa38ae4c0fd3b031b57ace056cf6b7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1309–1400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseRootExistsGoal (goal : Lean.Expr) : MetaM (Option RootExistsGoal) := do
  let goal ← whnf goal
  -- Check for ∃ x, x ∈ I ∧ f x = 0
  -- Mathlib notation ∃ x ∈ I, P x expands to ∃ x, x ∈ I ∧ P x
  match_expr goal with
  | Exists _ body =>
    -- body is `fun x => x ∈ I ∧ f x = 0`
    if let .lam name ty innerBody _ := body then
      withLocalDeclD name ty fun x => do
        let bodyInst := innerBody.instantiate1 x
        let bodyInst ← whnf bodyInst
        -- bodyInst should be x ∈ I ∧ f x = 0
        match_expr bodyInst with
        | And memExpr eqExpr =>
          -- Extract interval from membership
          let interval? ← extractInterval memExpr x
          let some interval := interval? | return none
          -- Extract function from equality f(x) = 0
          let func? ← extractFuncFromEqZero eqExpr x
          let some func := func? | return none
          return some (.existsRoot name interval func)
        | _ => return none
    else return none
  | _ => return none
where
  getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let fn := e.getAppFn
    let args := e.getAppArgs
    if fn.isConstOf ``LE.le && args.size >= 4 then
      return some (args[2]!, args[3]!)
    return none

  extractLowerBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq b x then
        return some a
    return none

  extractUpperBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq a x then
        return some b
    return none

  extractBoundsFromAnd (memExpr : Lean.Expr) (x : Lean.Expr) :
      MetaM (Option (Lean.Expr × Lean.Expr)) := do
    match_expr memExpr with
    | And a b =>
      if let some lo ← extractLowerBound a x then
        if let some hi ← extractUpperBound b x then
          return some (lo, hi)
      if let some lo ← extractLowerBound b x then
        if let some hi ← extractUpperBound a x then
          return some (lo, hi)
      return none
    | _ => return none

  mkSetIccFromBounds (loExpr hiExpr : Lean.Expr) : MetaM Lean.Expr := do
    mkAppM ``Set.Icc #[loExpr, hiExpr]

  /-- Extract the interval from a membership expression x ∈ I -/
  extractInterval (memExpr : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr memExpr with
    | Membership.mem _ _ _ interval xExpr =>
      if ← isDefEq xExpr x then return some interval else return none
    | _ =>
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memExpr x then
        return some (← mkSetIccFromBounds loExpr hiExpr)
      let memExprWhnf ← withTransparency TransparencyMode.all <| whnf memExpr
      if memExprWhnf == memExpr then
        return none
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memExprWhnf x then
        return some (← mkSetIccFromBounds loExpr hiExpr)
      return none

  /-- Extract function from f(x) = 0 -/
  extractFuncFromEqZero (eqExpr : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr eqExpr with
    | Eq _ lhs rhs =>
      -- Check if rhs is 0 by constructing (0 : ℝ) and checking definitional equality
      let zero ← mkAppOptM ``OfNat.ofNat #[mkConst ``Real, mkRawNatLit 0, none]
      let rhs ← whnf rhs
      let isZero ← isDefEq rhs zero
      if !isZero then return none
      -- lhs should contain x
      if lhs.containsFVar x.fvarId! then
        return some (← mkLambdaFVars #[x] lhs)
      else
        return none
    | _ => return none

/-- Check if a root goal needs normalization (f = c where c ≠ 0) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L1309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
