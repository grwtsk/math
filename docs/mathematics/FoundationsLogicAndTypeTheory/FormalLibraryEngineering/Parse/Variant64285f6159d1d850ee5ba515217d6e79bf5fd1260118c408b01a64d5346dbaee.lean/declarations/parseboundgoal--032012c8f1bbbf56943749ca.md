# parseBoundGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a241c71f7ad01d65e26659f52e44f7a2bcbdda2473a1c8b471253d2659fc1ad0",
  "kind": "def",
  "lexical_name": "parseBoundGoal",
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
  "slug": "parseboundgoal--032012c8f1bbbf56943749ca",
  "source": {
    "blob": "6c77d081b41121bbdfbdc8e2ced4bf5e22fea306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:032012c8f1bbbf56943749cae70a79242221c78563d0ce57b02f1b4ddf280532",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a241c71f7ad01d65e26659f52e44f7a2bcbdda2473a1c8b471253d2659fc1ad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseBoundGoal (goal : Lean.Expr) : MetaM (Option BoundGoal) := do
  -- Reduce the goal first to handle definitional equality
  let goal ← whnf goal

  -- Check for ∀ x, x ∈ I → ...
  if goal.isForall then
    let .forallE name ty body _ := goal | return none

    -- body should be x ∈ I → comparison
    withLocalDeclD name ty fun x => do
      let body := body.instantiate1 x
      let body ← whnf body
      if body.isForall then
        let .forallE _ memTy innerBody _ := body | return none

        let parseComparison (comparison : Lean.Expr) (interval : IntervalInfo) :
            MetaM (Option BoundGoal) := do
          match_expr comparison with
          | LE.le _ _ lhs rhs =>
            let lhsHasX := lhs.containsFVar x.fvarId!
            let rhsHasX := rhs.containsFVar x.fvarId!
            if lhsHasX && !rhsHasX then
              return some (.forallLe name interval (← mkLambdaFVars #[x] lhs) rhs)
            else if rhsHasX && !lhsHasX then
              return some (.forallGe name interval (← mkLambdaFVars #[x] rhs) lhs)
            else
              return none
          | GE.ge _ _ lhs rhs =>
            let lhsHasX := lhs.containsFVar x.fvarId!
            let rhsHasX := rhs.containsFVar x.fvarId!
            if lhsHasX && !rhsHasX then
              return some (.forallGe name interval (← mkLambdaFVars #[x] lhs) rhs)
            else if rhsHasX && !lhsHasX then
              return some (.forallLe name interval (← mkLambdaFVars #[x] rhs) lhs)
            else
              return none
          | LT.lt _ _ lhs rhs =>
            let lhsHasX := lhs.containsFVar x.fvarId!
            let rhsHasX := rhs.containsFVar x.fvarId!
            if lhsHasX && !rhsHasX then
              return some (.forallLt name interval (← mkLambdaFVars #[x] lhs) rhs)
            else if rhsHasX && !lhsHasX then
              return some (.forallGt name interval (← mkLambdaFVars #[x] rhs) lhs)
            else
              return none
          | GT.gt _ _ lhs rhs =>
            let lhsHasX := lhs.containsFVar x.fvarId!
            let rhsHasX := rhs.containsFVar x.fvarId!
            if lhsHasX && !rhsHasX then
              return some (.forallGt name interval (← mkLambdaFVars #[x] lhs) rhs)
            else if rhsHasX && !lhsHasX then
              return some (.forallLt name interval (← mkLambdaFVars #[x] rhs) lhs)
            else
              return none
          | _ => return none

        -- memTy should be x ∈ I (Membership.mem x I)
        -- Don't reduce with whnf as it will expand the membership definition

        -- Try to extract interval from membership
        let interval? ← extractInterval memTy x
        if let some interval := interval? then
          -- innerBody is the comparison
          return ← withLocalDeclD `hx memTy fun _hx => do
            let comparison := innerBody.instantiate1 _hx
            parseComparison comparison interval
        let parseArrowBounds (memTy innerBody : Lean.Expr) : MetaM (Option BoundGoal) := do
          let memTyWhnf ← withTransparency TransparencyMode.all <| whnf memTy
          let memTyCandidates := if memTyWhnf == memTy then #[memTy] else #[memTy, memTyWhnf]

          let rec findSome (cands : List Lean.Expr) (f : Lean.Expr → MetaM (Option BoundGoal)) :
              MetaM (Option BoundGoal) := do
            match cands with
            | [] => return none
            | cand :: rest =>
              if let some goal ← f cand then
                return some goal
              findSome rest f

          let tryLower (memTyCand : Lean.Expr) : MetaM (Option BoundGoal) := do
            if let some loExpr ← extractLowerBound memTyCand x then
              return ← withLocalDeclD `hx1 memTy fun _hx1 => do
                let innerBodyInst := innerBody.instantiate1 _hx1
                if innerBodyInst.isForall then
                  let .forallE _ memTy2 innerBody2 _ := innerBodyInst | return none
                  let memTy2Whnf ← withTransparency TransparencyMode.all <| whnf memTy2
                  let memTy2Candidates := if memTy2Whnf == memTy2 then #[memTy2] else #[memTy2, memTy2Whnf]
                  let tryUpper (memTy2Cand : Lean.Expr) : MetaM (Option BoundGoal) := do
                    if let some hiExpr ← extractUpperBound memTy2Cand x then
                      if let some interval ← mkIntervalInfoFromBounds loExpr hiExpr then
                        return ← withLocalDeclD `hx2 memTy2 fun _hx2 => do
                          let comparison := innerBody2.instantiate1 _hx2
                          parseComparison comparison interval
                    return none
                  return ← findSome memTy2Candidates.toList tryUpper
                return none
            return none

          let tryUpper (memTyCand : Lean.Expr) : MetaM (Option BoundGoal) := do
            if let some hiExpr ← extractUpperBound memTyCand x then
              return ← withLocalDeclD `hx1 memTy fun _hx1 => do
                let innerBodyInst := innerBody.instantiate1 _hx1
                if innerBodyInst.isForall then
                  let .forallE _ memTy2 innerBody2 _ := innerBodyInst | return none
                  let memTy2Whnf ← withTransparency TransparencyMode.all <| whnf memTy2
                  let memTy2Candidates := if memTy2Whnf == memTy2 then #[memTy2] else #[memTy2, memTy2Whnf]
                  let tryLower (memTy2Cand : Lean.Expr) : MetaM (Option BoundGoal) := do
                    if let some loExpr ← extractLowerBound memTy2Cand x then
                      if let some interval ← mkIntervalInfoFromBounds loExpr hiExpr then
                        return ← withLocalDeclD `hx2 memTy2 fun _hx2 => do
                          let comparison := innerBody2.instantiate1 _hx2
                          parseComparison comparison interval
                    return none
                  return ← findSome memTy2Candidates.toList tryLower
                return none
            return none

          if let some goal ← findSome memTyCandidates.toList tryLower then
            return some goal
          if let some goal ← findSome memTyCandidates.toList tryUpper then
            return some goal
          return none

        if let some arrowGoal ← parseArrowBounds memTy innerBody then
          return some arrowGoal
        return none
      else
        return none
  else
    return none

where
  /-- Extract (lhs, rhs) from an LE.le application. -/
  getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let fn := e.getAppFn
    let args := e.getAppArgs
    if fn.isConstOf ``LE.le && args.size >= 4 then
      return some (args[2]!, args[3]!)
    return none

  /-- Extract lower bound lo from lo ≤ x. -/
  extractLowerBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq b x then
        return some a
    return none

  /-- Extract upper bound hi from x ≤ hi. -/
  extractUpperBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    if let some (a, b) ← getLeArgs e then
      if ← isDefEq a x then
        return some b
    return none

  /-- Extract bounds from conjunction form lo ≤ x ∧ x ≤ hi. -/
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

  /-- Build IntervalInfo from explicit lo/hi bounds. -/
  mkIntervalInfoFromBounds (loExpr hiExpr : Lean.Expr) : MetaM (Option IntervalInfo) := do
    if let some lo ← extractRatFromReal loExpr then
      if let some hi ← extractRatFromReal hiExpr then
        let loRatExpr := toExpr lo
        let hiRatExpr := toExpr hi
        let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
        let leProof ← mkDecideProof leProofTy
        let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
        return some {
          intervalRat := intervalRat
          fromSetIcc := some (lo, hi, loRatExpr, hiRatExpr, leProof, loExpr, hiExpr)
        }
    return none

  /-- Extract the interval from a membership expression -/
  extractInterval (memTy : Lean.Expr) (x : Lean.Expr) : MetaM (Option IntervalInfo) := do
    -- Try direct Membership.mem match
    -- Membership.mem : {α : Type u_1} → {γ : outParam (Type u_2)} → [self : Membership α γ] → γ → α → Prop
    -- Note: The mem function takes (container, element), but notation x ∈ I displays as element ∈ container
    match_expr memTy with
    | Membership.mem _ _ _ interval xExpr =>
      -- Check if xExpr matches x (might be the same or definitionally equal)
      if ← isDefEq xExpr x then
        -- Check if interval is already an IntervalRat
        let intervalTy ← inferType interval
        if intervalTy.isConstOf ``IntervalRat then
          return some { intervalRat := interval }
        -- Check if interval is Set.Icc lo hi
        else if let some info ← tryConvertSetIcc interval then
          return some info
        else
          return some { intervalRat := interval }  -- Return as-is, let type checking fail later if wrong
      else return none
    | _ =>
      -- The memTy might be definitionally expanded - check if it's a conjunction
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memTy x then
        return ← mkIntervalInfoFromBounds loExpr hiExpr
      let memTyWhnf ← withTransparency TransparencyMode.all <| whnf memTy
      if memTyWhnf == memTy then
        return none
      if let some (loExpr, hiExpr) ← extractBoundsFromAnd memTyWhnf x then
        return ← mkIntervalInfoFromBounds loExpr hiExpr
      return none

  /-- Try to convert a Set.Icc expression to an IntervalRat with full info -/
  tryConvertSetIcc (interval : Lean.Expr) : MetaM (Option IntervalInfo) := do
    let getLeArgs (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
      let fn := e.getAppFn
      let args := e.getAppArgs
      if fn.isConstOf ``LE.le && args.size >= 4 then
        return some (args[2]!, args[3]!)
      return none

    let extractLowerBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
      if let some (a, b) ← getLeArgs e then
        if ← isDefEq b x then
          return some a
      return none

    let extractUpperBound (e x : Lean.Expr) : MetaM (Option Lean.Expr) := do
      if let some (a, b) ← getLeArgs e then
        if ← isDefEq a x then
          return some b
      return none

    let parseSetIccBounds (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
      let fn := e.getAppFn
      let args := e.getAppArgs
      -- Set.Icc : {α : Type*} → [Preorder α] → α → α → Set α
      -- So args are: [α, inst, lo, hi]
      if fn.isConstOf ``Set.Icc && args.size >= 4 then
        return some (args[2]!, args[3]!)
      return none

    let parseSetIccLambda (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
      match e with
      | Lean.Expr.lam name ty body _ =>
        withLocalDeclD name ty fun x => do
          let bodyInst := body.instantiate1 x
          let fn := bodyInst.getAppFn
          let args := bodyInst.getAppArgs
          if fn.isConstOf ``And && args.size >= 2 then
            let left := args[0]!
            let right := args[1]!
            if let some lo ← extractLowerBound left x then
              if let some hi ← extractUpperBound right x then
                return some (lo, hi)
            if let some lo ← extractLowerBound right x then
              if let some hi ← extractUpperBound left x then
                return some (lo, hi)
          return none
      | _ => return none

    let parseBounds (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
      if let some bounds ← parseSetIccBounds e then
        return some bounds
      parseSetIccLambda e

    let mkIntervalFromBounds (loExpr hiExpr : Lean.Expr) : MetaM (Option IntervalInfo) := do
      if let some lo ← extractRatFromReal loExpr then
        if let some hi ← extractRatFromReal hiExpr then
          let loRatExpr := toExpr lo
          let hiRatExpr := toExpr hi
          let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
          let leProof ← mkDecideProof leProofTy
          let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
          return some {
            intervalRat := intervalRat
            fromSetIcc := some (lo, hi, loRatExpr, hiRatExpr, leProof, loExpr, hiExpr)
          }
      return none

    if let some (loExpr, hiExpr) ← parseBounds interval then
      if let some info ← mkIntervalFromBounds loExpr hiExpr then
        return some info
    let intervalWhnf ← withTransparency TransparencyMode.all <| whnf interval
    if intervalWhnf == interval then
      return none
    if let some (loExpr, hiExpr) ← parseBounds intervalWhnf then
      return ← mkIntervalFromBounds loExpr hiExpr
    return none

/-! ## Multivariate Goal Parsing -/

/-- Try to extract interval info from a Set.Icc membership type -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c77d081b41121bbdfbdc8e2ced4bf5e22fea306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
