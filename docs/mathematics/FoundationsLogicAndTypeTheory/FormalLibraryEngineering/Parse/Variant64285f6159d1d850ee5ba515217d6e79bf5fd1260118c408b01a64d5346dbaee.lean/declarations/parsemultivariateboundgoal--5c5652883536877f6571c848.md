# parseMultivariateBoundGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c38e8a0a48f7d7de3b124fe4fa0d2c45925cc9f1dd80614bf38eae27cc15118",
  "kind": "def",
  "lexical_name": "parseMultivariateBoundGoal",
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
  "slug": "parsemultivariateboundgoal--5c5652883536877f6571c848",
  "source": {
    "blob": "6c77d081b41121bbdfbdc8e2ced4bf5e22fea306",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 402,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c5652883536877f6571c848eed72f0f1c0e96e5e5ff2933b8279b3bcb0a7e95",
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

Occurrence: `declaration:8c38e8a0a48f7d7de3b124fe4fa0d2c45925cc9f1dd80614bf38eae27cc15118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def parseMultivariateBoundGoal (goal : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
  -- We need to work within the withLocalDeclD scopes, so we'll return a function that
  -- builds the result while fvars are still valid.
  -- First, instantiate any metavariables (e.g., from refine/apply) to get the actual goal.
  let goal ← instantiateMVars goal
  let goal ← if goal.isForall then
    pure goal
  else
    whnf goal
  let extractLowerBound (memTy : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr memTy with
    | LE.le _ _ lo xExpr =>
      if ← isDefEq xExpr x then
        return some lo
      return none
    | _ => return none

  let extractUpperBound (memTy : Lean.Expr) (x : Lean.Expr) : MetaM (Option Lean.Expr) := do
    match_expr memTy with
    | LE.le _ _ xExpr hi =>
      if ← isDefEq xExpr x then
        return some hi
      return none
    | _ => return none

  let extractBoundsFromAnd (memTy : Lean.Expr) (x : Lean.Expr) :
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

  let mkVarIntervalInfoFromBounds (x : Lean.Expr) (loExpr hiExpr : Lean.Expr) :
      MetaM (Option VarIntervalInfo) := do
    if let some lo ← extractRatFromReal loExpr then
      if let some hi ← extractRatFromReal hiExpr then
        let xTy ← inferType x
        let varName ← do
          match x with
          | .fvar fv => pure (← fv.getDecl).userName
          | _ => pure `x
        let loRatExpr := toExpr lo
        let hiRatExpr := toExpr hi
        let leProofTy ← mkAppM ``LE.le #[loRatExpr, hiRatExpr]
        let leProof ← mkDecideProof leProofTy
        let intervalRat ← mkAppM ``IntervalRat.mk #[loRatExpr, hiRatExpr, leProof]
        return some {
          varName := varName
          varType := xTy
          intervalRat := intervalRat
          loExpr := loExpr
          hiExpr := hiExpr
          lo := lo
          hi := hi
        }
    return none

  let memCandidates (e : Lean.Expr) : MetaM (Array Lean.Expr) := do
    let eWhnf ← withTransparency TransparencyMode.all <| whnf e
    if eWhnf == e then
      return #[e]
    return #[e, eWhnf]

  let rec findSome (cands : List Lean.Expr)
      (f : Lean.Expr → MetaM (Option MultivariateBoundGoal)) :
      MetaM (Option MultivariateBoundGoal) := do
    match cands with
    | [] => return none
    | cand :: rest =>
      if let some goal ← f cand then
        return some goal
      findSome rest f

  let rec collect (e : Lean.Expr) (acc : Array VarIntervalInfo) (fvars : Array Lean.Expr) :
      MetaM (Option MultivariateBoundGoal) := do
    -- Don't use whnf at the top level - it might destroy the forall structure
    if !e.isForall then
      -- We've reached the inner body - process the comparison
      if acc.isEmpty then
        return none  -- No quantified variables found

      -- Match the comparison
      match_expr e with
      | LE.le _ _ lhs rhs =>
        -- Build the function as a lambda over all bound variables
        let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
        let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
        if lhsHasVars && !rhsHasVars then
          let func ← mkLambdaFVars fvars lhs
          return some (.forallLe acc func rhs)
        else if rhsHasVars && !lhsHasVars then
          let func ← mkLambdaFVars fvars rhs
          return some (.forallGe acc func lhs)
        else
          return none
      | GE.ge _ _ lhs rhs =>
        let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
        let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
        if lhsHasVars && !rhsHasVars then
          let func ← mkLambdaFVars fvars lhs
          return some (.forallGe acc func rhs)
        else if rhsHasVars && !lhsHasVars then
          let func ← mkLambdaFVars fvars rhs
          return some (.forallLe acc func lhs)
        else
          return none
      | _ => return none

    let .forallE name ty body _ := e | return none

    -- Introduce the variable (stay in this scope for the rest of parsing)
    withLocalDeclD name ty fun x => do
      let body := body.instantiate1 x

      -- Check if this is a membership quantifier (x ∈ I → ...)
      if body.isForall then
        let .forallE _ memTy innerBody _ := body | return none

        -- Try to extract interval from membership (don't whnf memTy)
        if let some info ← extractIntervalFromSetIcc memTy x then
          withLocalDeclD `_ memTy fun _hx => do
            let nextBody := innerBody.instantiate1 _hx
            collect nextBody (acc.push info) (fvars.push x)
        else if let some info ← extractIntervalFromIntervalRat memTy x then
          withLocalDeclD `_ memTy fun _hx => do
            let nextBody := innerBody.instantiate1 _hx
            collect nextBody (acc.push info) (fvars.push x)
        else
          let memTyCandidates ← memCandidates memTy
          -- Handle conjunction form: (lo ≤ x ∧ x ≤ hi) → ...
          let tryAnd (memTyCand : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
            if let some (loExpr, hiExpr) ← extractBoundsFromAnd memTyCand x then
              if let some info ← mkVarIntervalInfoFromBounds x loExpr hiExpr then
                return ← withLocalDeclD `_ memTy fun _hx => do
                  let nextBody := innerBody.instantiate1 _hx
                  collect nextBody (acc.push info) (fvars.push x)
            return none
          if let some result ← findSome memTyCandidates.toList tryAnd then
            return some result
          -- Handle expanded bounds: lo ≤ x → x ≤ hi → ...
          let tryLower (memTyCand : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
            if let some loExpr ← extractLowerBound memTyCand x then
              return ← withLocalDeclD `_ memTy fun _hx1 => do
                let innerBodyInst := innerBody.instantiate1 _hx1
                if innerBodyInst.isForall then
                  let .forallE _ memTy2 innerBody2 _ := innerBodyInst | return none
                  let memTy2Candidates ← memCandidates memTy2
                  let tryUpper (memTy2Cand : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
                    if let some hiExpr ← extractUpperBound memTy2Cand x then
                      if let some info ← mkVarIntervalInfoFromBounds x loExpr hiExpr then
                        return ← withLocalDeclD `_ memTy2 fun _hx2 => do
                          let nextBody := innerBody2.instantiate1 _hx2
                          collect nextBody (acc.push info) (fvars.push x)
                    return none
                  return ← findSome memTy2Candidates.toList tryUpper
                return none
            return none
          let tryUpper (memTyCand : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
            if let some hiExpr ← extractUpperBound memTyCand x then
              return ← withLocalDeclD `_ memTy fun _hx1 => do
                let innerBodyInst := innerBody.instantiate1 _hx1
                if innerBodyInst.isForall then
                  let .forallE _ memTy2 innerBody2 _ := innerBodyInst | return none
                  let memTy2Candidates ← memCandidates memTy2
                  let tryLower (memTy2Cand : Lean.Expr) : MetaM (Option MultivariateBoundGoal) := do
                    if let some loExpr ← extractLowerBound memTy2Cand x then
                      if let some info ← mkVarIntervalInfoFromBounds x loExpr hiExpr then
                        return ← withLocalDeclD `_ memTy2 fun _hx2 => do
                          let nextBody := innerBody2.instantiate1 _hx2
                          collect nextBody (acc.push info) (fvars.push x)
                    return none
                  return ← findSome memTy2Candidates.toList tryLower
                return none
            return none
          if let some result ← findSome memTyCandidates.toList tryLower then
            return some result
          if let some result ← findSome memTyCandidates.toList tryUpper then
            return some result
          -- Not a membership quantifier, treat as the inner body
          if acc.isEmpty then
            return none
          match_expr body with
          | LE.le _ _ lhs rhs =>
            let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
            let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
            if lhsHasVars && !rhsHasVars then
              let func ← mkLambdaFVars fvars lhs
              return some (.forallLe acc func rhs)
            else if rhsHasVars && !lhsHasVars then
              let func ← mkLambdaFVars fvars rhs
              return some (.forallGe acc func lhs)
            else
              return none
          | GE.ge _ _ lhs rhs =>
            let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
            let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
            if lhsHasVars && !rhsHasVars then
              let func ← mkLambdaFVars fvars lhs
              return some (.forallGe acc func rhs)
            else if rhsHasVars && !lhsHasVars then
              let func ← mkLambdaFVars fvars rhs
              return some (.forallLe acc func lhs)
            else
              return none
          | _ => return none
      else
        -- No more foralls - process comparison within current scope
        if acc.isEmpty then
          return none
        match_expr body with
        | LE.le _ _ lhs rhs =>
          let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
          let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
          if lhsHasVars && !rhsHasVars then
            let func ← mkLambdaFVars fvars lhs
            return some (.forallLe acc func rhs)
          else if rhsHasVars && !lhsHasVars then
            let func ← mkLambdaFVars fvars rhs
            return some (.forallGe acc func lhs)
          else
            return none
        | GE.ge _ _ lhs rhs =>
          let lhsHasVars := fvars.any (fun fv => lhs.containsFVar fv.fvarId!)
          let rhsHasVars := fvars.any (fun fv => rhs.containsFVar fv.fvarId!)
          if lhsHasVars && !rhsHasVars then
            let func ← mkLambdaFVars fvars lhs
            return some (.forallGe acc func rhs)
          else if rhsHasVars && !lhsHasVars then
            let func ← mkLambdaFVars fvars rhs
            return some (.forallLe acc func lhs)
          else
            return none
        | _ => return none

  collect goal #[] #[]

/-! ## Point Inequality Parsing -/

/-- Check if a Lean Name ends with a given suffix string -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant64285f6159d1d850ee5ba515217d6e79bf5fd1260118c408b01a64d5346dbaee.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c77d081b41121bbdfbdc8e2ced4bf5e22fea306` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
