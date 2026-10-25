# parseRootGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97de44dc6c56e2da3b97ed15f1080ffc705f1d07198f6c93085d69e5e66bce8b",
  "kind": "def",
  "lexical_name": "parseRootGoal",
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
  "slug": "parserootgoal--27f0b48a8f8c022d18969cc5",
  "source": {
    "blob": "35cc34a5c46fe85c18fc2fea04bd9ca1753fed55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 717,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27f0b48a8f8c022d18969cc522ca8a26f9797c4c7233f267519931a3ded22c52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97de44dc6c56e2da3b97ed15f1080ffc705f1d07198f6c93085d69e5e66bce8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 717–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseRootGoal (goal : Lean.Expr) : MetaM (Option RootGoal) := do
  let goal ← whnf goal

  -- Check for ∀ x, x ∈ I → f x ≠ 0
  if goal.isForall then
    let .forallE name ty body _ := goal | return none

    withLocalDeclD name ty fun x => do
      let body := body.instantiate1 x
      let body ← whnf body
      if body.isForall then
        let .forallE _ memTy innerBody _ := body | return none

        -- Extract interval from membership
        let interval? ← extractInterval memTy x
        let some interval := interval? | return none

        -- innerBody should be f x ≠ 0 (which is f x = 0 → False)
        withLocalDeclD `hx memTy fun _hx => do
          let neqExpr := innerBody.instantiate1 _hx

          -- Try to match Ne (f x) 0 or f x ≠ 0
          match_expr neqExpr with
          | Ne _ lhs _rhs =>
            -- Check if lhs (the function value) depends on x
            let lhsHasX := lhs.containsFVar x.fvarId!
            if lhsHasX then
              return some (.forallNeZero name interval (← mkLambdaFVars #[x] lhs))
            else
              return none
          | _ =>
            -- Also check for Not (Eq ...)
            match_expr neqExpr with
            | Not eqExpr =>
              match_expr eqExpr with
              | Eq _ lhs _rhs =>
                let lhsHasX := lhs.containsFVar x.fvarId!
                if lhsHasX then
                  return some (.forallNeZero name interval (← mkLambdaFVars #[x] lhs))
                else
                  return none
              | _ => return none
            | _ => return none
      else
        return none
  else
    return none

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

  extractBoundsFromAnd (memTy : Lean.Expr) (x : Lean.Expr) :
      MetaM (Option (Lean.Expr × Lean.Expr)) := do
    match_expr memTy with
    | And a b =>
      if let some lo ← extractLowerBound a x then
        if let some hi ← extractUpperBound b x then
          return some (lo, hi)
      if let some lo ← extractLowerBound b x then
        if let some hi ← extractUpperBound a x then
          return some (lo, hi)
      return none
    | _ => return none

  mkIntervalRatFromBounds (loExpr hiExpr : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some lo ← extractRatFromReal loExpr then
      if let some hi ← extractRatFromReal hiExpr then
        let loRatExpr := toExpr lo
        let hiRatExpr := toExpr hi
        let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
        let leProof ← mkDecideProof leProofTy
        let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
        return some intervalRat
    return none

  /-- Extract the interval from a membership expression -/
  extractInterval (memTy : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr memTy with
    | Membership.mem _ _ _ interval xExpr =>
      if ← isDefEq xExpr x then return some interval else return none
    | _ =>
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memTy x then
        return ← mkIntervalRatFromBounds loExpr hiExpr
      let memTyWhnf ← withTransparency TransparencyMode.all <| whnf memTy
      if memTyWhnf == memTy then
        return none
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memTyWhnf x then
        return ← mkIntervalRatFromBounds loExpr hiExpr
      return none

/-! ## Global Optimization Goal Parsing -/

/-- Check if expression is Expr.eval (checking both short and full names) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variantd0244788cc371c85a777cae516f2e879f725e77f00979ab9ee5bc4b64cfe356d.lean#L717).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35cc34a5c46fe85c18fc2fea04bd9ca1753fed55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
