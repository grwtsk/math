# toLeanCertExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd9aa745f7f220bdc99ae454701db5c6156f6a0ec2f83bd16713adbb6cfaff87",
  "kind": "def",
  "lexical_name": "toLeanCertExpr",
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
  "slug": "toleancertexpr--bb22e2e07707ec05887a34a0",
  "source": {
    "blob": "80f7d4882e5ab113a0dcef184e11afa475cf4350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb22e2e07707ec05887a34a0eb99688a47a3c1a13858cd7ddd144ac40d6c4936",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd9aa745f7f220bdc99ae454701db5c6156f6a0ec2f83bd16713adbb6cfaff87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toLeanCertExpr (e : Lean.Expr) : TranslateM Lean.Expr := do
  -- 1. Check if it is a free variable in our context
  if let some idx ← findVarIdx? e then
    return ← mkExprVar idx

  -- 2. Check if it is a numeric constant
  if let some q ← toRat? e then
    return ← mkExprConst q

  -- 3. Try to match on unreduced expression first (important!)
  if let some result ← tryMatchExpr e then
    return result

  -- 4. If no match, try reducing with whnf and matching again
  let eReduced ← whnf e
  if eReduced != e then
    if let some result ← tryMatchExpr eReduced then
      return result

  -- 5. Try to unfold definitions and retry
  let e' ← unfoldDefinition? e
  match e' with
  | some unfolded =>
    if unfolded != e then
      toLeanCertExpr unfolded
    else
      throwUnsupported e
  | none =>
    throwUnsupported e

where
  /-- Try to match the expression against known patterns. -/
  tryMatchExpr (e : Lean.Expr) : TranslateM (Option Lean.Expr) := do
    -- For `Real`, `abs x` often elaborates to a max/sup form like
    -- `SemilatticeSup.toMax.1 x (-x)` or a private `Real.sup` helper.
    -- Recognize these shapes and normalize them to sqrt(x * x).
    if let some (a, b) := (← toMaxArgs? e) then
      let absArg? : Option Lean.Expr ←
        match_expr b with
        | Neg.neg _ _ b' =>
          if b' == a then
            pure (some a)
          else
            pure none
        | _ =>
          match_expr a with
          | Neg.neg _ _ a' =>
            if a' == b then
              pure (some b)
            else
              pure none
          | _ => pure none
      if let some x := absArg? then
        let ex ← toLeanCertExpr x
        let exSq ← mkExprMul ex ex
        return some (← mkExprSqrt exSq)
      -- Generic max case: reify via a closed form with abs.
      let ea ← toLeanCertExpr a
      let eb ← toLeanCertExpr b
      return some (← mkExprMaxViaAbs ea eb)

    -- Generic min case: reify via a closed form with abs.
    if let some (a, b) := (← toMinArgs? e) then
      let ea ← toLeanCertExpr a
      let eb ← toLeanCertExpr b
      return some (← mkExprMinViaAbs ea eb)

    let fn := e.getAppFn
    let args := e.getAppArgs
    let some headName := fn.constName?
      | return none

    -- Nullary constants
    if headName == ``Real.pi then
      return some (← mkExprNamedConst (mkConst ``LeanCert.Core.MathConst.pi))
    if headName == ``Real.eulerMascheroniConstant then
      return some (← mkExprNamedConst (mkConst ``LeanCert.Core.MathConst.eulerMascheroni))

    -- Unary operations dispatched from a table
    if let some mk := lookupUnary headName then
      if let some x := lastArg? args then
        let ex ← toLeanCertExpr x
        return some (← mk ex)
      return none

    -- Binary operations with direct constructors
    if let some mk := lookupBinary headName then
      if let some (a, b) := lastTwoArgs? args then
        let ea ← toLeanCertExpr a
        let eb ← toLeanCertExpr b
        return some (← mk ea eb)
      return none

    -- Subtraction: a - b  ↦  a + (-b)
    if headName == ``HSub.hSub then
      if let some (a, b) := lastTwoArgs? args then
        let ea ← toLeanCertExpr a
        let eb ← toLeanCertExpr b
        let neg_b ← mkExprNeg eb
        return some (← mkExprAdd ea neg_b)
      return none

    -- Division: a / b  ↦  a * (1/b) when b is constant; else a * inv(b)
    if headName == ``HDiv.hDiv then
      if let some (a, b) := lastTwoArgs? args then
        let ea ← toLeanCertExpr a
        if let some qb ← toRat? b then
          if qb ≠ 0 then
            let eRecip ← mkExprConst ((1 : ℚ) / qb)
            return some (← mkExprMul ea eRecip)
        let eb ← toLeanCertExpr b
        let inv_b ← mkExprInv eb
        return some (← mkExprMul ea inv_b)
      return none

    -- Power with rational exponents.
    if headName == ``HPow.hPow then
      if let some (base, exp) := lastTwoArgs? args then
        if let some q ← toRat? exp then
          let ebase ← toLeanCertExpr base
          if q.den == 1 then
            return some (← mkPowInt ebase q.num)
          if q.den == 2 then
            return some (← mkHalfIntegerPow ebase q.num)
          -- General rational exponents are lowered to exp(log(base) * q).
          -- This keeps the AST small while making domain constraints explicit
          -- through `log` (which must be certified on positive intervals).
          let qExpr ← mkExprConst q
          let logBase ← mkExprLog ebase
          let prod ← mkExprMul logBase qExpr
          return some (← mkExprExp prod)
      return none

    return none

  /-- Unary head-symbol handlers. -/
  lookupUnary (n : Name) : Option (Lean.Expr → MetaM Lean.Expr) :=
    unaryTable.findSome? (fun (name, mk) =>
      if name == n then some mk else none)

  /-- Binary head-symbol handlers. -/
  lookupBinary (n : Name) : Option (Lean.Expr → Lean.Expr → MetaM Lean.Expr) :=
    binaryTable.findSome? (fun (name, mk) =>
      if name == n then some mk else none)

  /-- Table for unary operations. -/
  unaryTable : List (Name × (Lean.Expr → MetaM Lean.Expr)) :=
    [ (``Neg.neg, mkExprNeg)
    , (``Inv.inv, mkExprInv)
    , (``Real.sin, mkExprSin)
    , (``Real.cos, mkExprCos)
    , (``Real.exp, mkExprExp)
    , (``Real.log, mkExprLog)
    , (``Real.arctan, mkExprAtan)
    , (``Real.arsinh, mkExprArsinh)
    , (``LeanCert.Core.Real.atanh, mkExprAtanh)
    , (``Real.sinc, mkExprSinc)
    , (``LeanCert.Core.Real.erf, mkExprErf)
    , (``Real.sqrt, mkExprSqrt)
    , (``Real.sinh, mkExprSinh)
    , (``Real.cosh, mkExprCosh)
    , (``Real.tanh, mkExprTanh)
    , (``abs, fun x => do
        let xSq ← mkExprMul x x
        mkExprSqrt xSq)
    ]

  /-- Table for binary operations with direct AST constructors. -/
  binaryTable : List (Name × (Lean.Expr → Lean.Expr → MetaM Lean.Expr)) :=
    [ (``HAdd.hAdd, mkExprAdd)
    , (``HMul.hMul, mkExprMul)
    ]

  /-- Last argument of an application (if present). -/
  lastArg? (args : Array Lean.Expr) : Option Lean.Expr :=
    if _h : args.size ≥ 1 then
      some (args[args.size - 1]!)
    else
      none

  /-- Last two arguments of an application (if present). -/
  lastTwoArgs? (args : Array Lean.Expr) : Option (Lean.Expr × Lean.Expr) :=
    if _h : args.size ≥ 2 then
      some (args[args.size - 2]!, args[args.size - 1]!)
    else
      none

  /-- Rich unsupported-expression diagnostics (head symbol + arity). -/
  throwUnsupported {α : Type} (e : Lean.Expr) : TranslateM α := do
    let eTy ← inferType e
    let ePP ← Meta.ppExpr e
    let eTyPP ← Meta.ppExpr eTy
    let head := e.getAppFn
    let headPP ← Meta.ppExpr head
    let headName := head.constName?.map toString |>.getD "(non-const head)"
    let args := e.getAppArgs
    throwError "Unsupported expression for LeanCert: {ePP}\n\n\
                Expression type: {eTyPP}\n\
                Head symbol: {headName}\n\
                Head term: {headPP}\n\
                Arity: {args.size}\n\n\
                Supported operations:\n\
                • Arithmetic: +, -, *, /, ^ (integer, half-integer, and general rational exponents), abs, max, min\n\
                • Transcendentals: Real.sin, Real.cos, Real.exp, Real.log,\n\
                  Real.sqrt, Real.arctan, Real.arsinh, Real.atanh,\n\
                  Real.sinc, Real.erf, Real.sinh, Real.cosh, Real.tanh\n\
                • Constants: rational numbers, Real.pi, Real.eulerMascheroniConstant\n\n\
                Suggestions:\n\
                • Normalize first with `interval_norm`\n\
                • Unfold custom definitions with `simp only [myDef]`\n\
                • Add a handler for the head symbol above if this form should be supported"

  /-- Build a power expression using repeated multiplication.
      pow(base, k) = base * base * ... * base (k times) or 1 if k = 0. -/
  mkPow (base : Lean.Expr) (k : Nat) : MetaM Lean.Expr := do
    if k == 0 then
      mkExprConst 1
    else if k == 1 then
      return base
    else
      let rest ← mkPow base (k - 1)
      mkExprMul base rest

  /-- Build `base ^ z` for integer `z` using `Expr.pow` + `Expr.inv`. -/
  mkPowInt (base : Lean.Expr) (z : Int) : MetaM Lean.Expr := do
    if z ≥ 0 then
      mkPow base z.toNat
    else
      let p ← mkPow base z.natAbs
      mkExprInv p

  /-- Build `base ^ (n/2)` for integer numerator `n` (half-integers). -/
  mkHalfIntegerPow (base : Lean.Expr) (n : Int) : MetaM Lean.Expr := do
    -- n/2 in reduced form always has odd |n|. We still handle all cases defensively.
    if n = 0 then
      mkExprConst 1
    else
      let absN : Nat := n.natAbs
      let k : Nat := (absN - 1) / 2
      let sqrtBase ← mkExprSqrt base
      let posPart ←
        if k == 0 then
          pure sqrtBase
        else
          let p ← mkPow base k
          mkExprMul p sqrtBase
      if n ≥ 0 then
        pure posPart
      else
        mkExprInv posPart

  /-- Try to decompose `e` as `max a b` using definitional equality.
      This is robust against internal projection names changing across
      Mathlib versions. -/
  toMaxArgs? (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let args := e.getAppArgs
    if args.size < 2 then return none
    let a := args[args.size - 2]!
    let b := args[args.size - 1]!
    try
      let maxExpr ← mkAppM ``max #[a, b]
      if (← isDefEq e maxExpr) then
        return some (a, b)
    catch _ => pure ()
    return none

  /-- Try to decompose `e` as `min a b` using definitional equality. -/
  toMinArgs? (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr)) := do
    let args := e.getAppArgs
    if args.size < 2 then return none
    let a := args[args.size - 2]!
    let b := args[args.size - 1]!
    try
      let minExpr ← mkAppM ``min #[a, b]
      if (← isDefEq e minExpr) then
        return some (a, b)
    catch _ => pure ()
    return none

/-! ## Entry Point

The main entry point that strips the leading lambda and initializes the context.
-/

/-- Entry point: Takes a lambda `fun x y ... => body` and returns the LeanCert AST.

This function uses `lambdaTelescope` to introduce the lambda-bound variables
as free variables, then translates the body with those variables tracked in
the context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80f7d4882e5ab113a0dcef184e11afa475cf4350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
