# asLinearComboImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:756a28c05d2f019f5b3f453c3b0866e4b7dc21d4ff8eb0dbb63816bdf665bcfa",
  "kind": "def",
  "lexical_name": "asLinearComboImpl",
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
  "slug": "aslinearcomboimpl--a1865f59dc56946d059e4ac1",
  "source": {
    "blob": "3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1865f59dc56946d059e4ac10ebfe9e1c95bf7e044144003fe531839ae219c14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:756a28c05d2f019f5b3f453c3b0866e4b7dc21d4ff8eb0dbb63816bdf665bcfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def asLinearComboImpl (e : Expr) : OmegaM (LinearCombo × OmegaM Expr × List Expr) := do
  trace[omega] "processing {e}"
  match groundInt? e with
  | some i =>
    let lc := {const := i}
    return ⟨lc, mkEvalRflProof e lc, ∅⟩
  | none =>
    if e.isFVar then
      if let some v ← e.fvarId!.getValue? then
        rewrite e (← mkEqReflWithExpectedType e v)
      else
        mkAtomLinearCombo e
    else match e.getAppFnArgs with
  | (``HAdd.hAdd, #[_, _, _, _, e₁, e₂]) => do
    let (l₁, prf₁, facts₁) ← asLinearCombo e₁
    let (l₂, prf₂, facts₂) ← asLinearCombo e₂
    let prf : OmegaM Expr := do
      let add_eval :=
        mkApp3 (.const ``LinearCombo.add_eval []) (toExpr l₁) (toExpr l₂) (← atomsCoeffs)
      mkEqTrans
        (← mkAppM ``Int.add_congr #[← prf₁, ← prf₂])
        (← mkEqSymm add_eval)
    pure (l₁ + l₂, prf, facts₁ ++ facts₂)
  | (``HSub.hSub, #[_, _, _, _, e₁, e₂]) => do
    let (l₁, prf₁, facts₁) ← asLinearCombo e₁
    let (l₂, prf₂, facts₂) ← asLinearCombo e₂
    let prf : OmegaM Expr := do
      let sub_eval :=
        mkApp3 (.const ``LinearCombo.sub_eval []) (toExpr l₁) (toExpr l₂) (← atomsCoeffs)
      mkEqTrans
        (← mkAppM ``Int.sub_congr #[← prf₁, ← prf₂])
        (← mkEqSymm sub_eval)
    pure (l₁ - l₂, prf, facts₁ ++ facts₂)
  | (``Neg.neg, #[_, _, e']) => do
    let (l, prf, facts) ← asLinearCombo e'
    let prf' : OmegaM Expr := do
      let neg_eval := mkApp2 (.const ``LinearCombo.neg_eval []) (toExpr l) (← atomsCoeffs)
      mkEqTrans
        (← mkAppM ``Int.neg_congr #[← prf])
        (← mkEqSymm neg_eval)
    pure (-l, prf', facts)
  | (``HMul.hMul, #[_, _, _, _, x, y]) =>
    -- If we decide not to expand out the multiplication,
    -- we have to revert the `OmegaM` state so that any new facts about the factors
    -- can still be reported when they are visited elsewhere.
    let r? ← commitWhen do
      let (xl, xprf, xfacts) ← asLinearCombo x
      let (yl, yprf, yfacts) ← asLinearCombo y
      if xl.coeffs.isZero ∨ yl.coeffs.isZero then
        let prf : OmegaM Expr := do
          let h ← mkDecideProof (mkApp2 (.const ``Or [])
            (.app (.const ``Coeffs.isZero []) (toExpr xl.coeffs))
            (.app (.const ``Coeffs.isZero []) (toExpr yl.coeffs)))
          let mul_eval :=
            mkApp4 (.const ``LinearCombo.mul_eval []) (toExpr xl) (toExpr yl) (← atomsCoeffs) h
          mkEqTrans
            (← mkAppM ``Int.mul_congr #[← xprf, ← yprf])
            (← mkEqSymm mul_eval)
        pure (some (LinearCombo.mul xl yl, prf, xfacts ++ yfacts), true)
      else
        pure (none, false)
    match r? with
    | some r => pure r
    | none => mkAtomLinearCombo e
  | (``HMod.hMod, #[_, _, _, _, n, k]) =>
    match groundNat? k with
    | some k' => do
      let k' := toExpr (k' : Int)
      rewrite (← mkAppM ``HMod.hMod #[n, k']) (mkApp2 (.const ``Int.emod_def []) n k')
    | none => mkAtomLinearCombo e
  | (``HDiv.hDiv, #[_, _, _, _, x, z]) =>
    match groundInt? z with
    | some 0 => rewrite e (mkApp (.const ``Int.ediv_zero []) x)
    | some i => do
      let e' ← mkAppM ``HDiv.hDiv #[x, toExpr i]
      if i < 0 then
        rewrite e' (mkApp2 (.const ``Int.ediv_neg []) x (toExpr (-i)))
      else
        mkAtomLinearCombo e'
    | _ => mkAtomLinearCombo e
  | (``Min.min, #[_, _, a, b]) =>
    if (← cfg).splitMinMax then
      rewrite e (mkApp2 (.const ``Int.min_def []) a b)
    else
      mkAtomLinearCombo e
  | (``Max.max, #[_, _, a, b]) =>
    if (← cfg).splitMinMax then
      rewrite e (mkApp2 (.const ``Int.max_def []) a b)
    else
      mkAtomLinearCombo e
  | (``HPow.hPow, #[_, _, _, _, b, k]) =>
    match succ? k with /- match for `e+1` and `e.succ` -/
    | none => mkAtomLinearCombo e
    | some k' =>
        match groundInt? b with
        | some _ => rewrite e (mkApp2 (.const ``Int.pow_succ []) b k')
        | none => mkAtomLinearCombo e
  | (``Nat.cast, #[α, i, n]) =>
      match_expr α with
      | Int => handleNatCast e i n
      | _ => mkAtomLinearCombo e
  | (``Prod.fst, #[α, β, p]) => match p with
    | .app (.app (.app (.app (.const ``Prod.mk [u, v]) _) _) x) y =>
      rewrite e (mkApp4 (.const ``Prod.fst_mk [u, v]) α x β y)
    | _ => mkAtomLinearCombo e
  | (``Prod.snd, #[α, β, p]) => match p with
    | .app (.app (.app (.app (.const ``Prod.mk [u, v]) _) _) x) y =>
      rewrite e (mkApp4 (.const ``Prod.snd_mk [u, v]) α x β y)
    | _ => mkAtomLinearCombo e
  | (``Int.negSucc, #[n]) => rewrite e (mkApp (.const ``Int.negSucc_eq []) n)
  | _ => mkAtomLinearCombo e
where
  /--
  Apply a rewrite rule to an expression, and interpret the result as a `LinearCombo`.
  (We're not rewriting any subexpressions here, just the top level, for efficiency.)
  -/
  rewrite (lhs rw : Expr) : OmegaM (LinearCombo × OmegaM Expr × List Expr) := do
    trace[omega] "rewriting {lhs} via {rw} : {← inferType rw}"
    match (← inferType rw).eq? with
    | some (_, _lhs', rhs) =>
      let (lc, prf, facts) ← asLinearCombo rhs
      let prf' : OmegaM Expr := do mkEqTrans rw (← prf)
      pure (lc, prf', facts)
    | none => panic! "Invalid rewrite rule in 'asLinearCombo'"
  handleNatCast (e i n : Expr) : OmegaM (LinearCombo × OmegaM Expr × List Expr) := do
    match n with
    | .fvar h =>
      if let some v ← h.getValue? then
        rewrite e (← mkEqReflWithExpectedType e
          (mkApp3 (.const ``Nat.cast [0]) (.const ``Int []) i v))
      else
        mkAtomLinearCombo e
    | _ => match n.getAppFnArgs with
    | (``Nat.succ, #[n]) => rewrite e (.app (.const ``Int.natCast_succ []) n)
    | (``HAdd.hAdd, #[_, _, _, _, a, b]) => rewrite e (mkApp2 (.const ``Int.natCast_add []) a b)
    | (``HMul.hMul, #[_, _, _, _, a, b]) =>
      let (lc, prf, r) ← rewrite e (mkApp2 (.const ``Int.natCast_mul []) a b)
      -- Add the fact that the multiplication is non-negative.
      pure (lc, prf, r.insert (mkApp2 (.const ``Int.ofNat_mul_nonneg []) a b))
    | (``HDiv.hDiv, #[_, _, _, _, a, b]) => rewrite e (mkApp2 (.const ``Int.natCast_ediv []) a b)
    | (``OfNat.ofNat, #[_, n, _]) => rewrite e (.app (.const ``Int.natCast_ofNat []) n)
    | (``HMod.hMod, #[_, _, _, _, a, b]) => rewrite e (mkApp2 (.const ``Int.natCast_emod []) a b)
    | (``HSub.hSub, #[_, _, _, _, mkApp6 (.const ``HSub.hSub _) _ _ _ _ a b, c]) =>
      rewrite e (mkApp3 (.const ``Int.ofNat_sub_sub []) a b c)
    | (``HPow.hPow, #[_, _, _, _, a, b]) =>
      match groundNat? a with
      | some _ => rewrite e (mkApp2 (.const ``Int.ofNat_pow []) a b)
      | none => mkAtomLinearCombo e
    | (``Prod.fst, #[_, β, p]) => match p with
      | .app (.app (.app (.app (.const ``Prod.mk [0, v]) _) _) x) y =>
        rewrite e (mkApp3 (.const ``Int.ofNat_fst_mk [v]) β x y)
      | _ => mkAtomLinearCombo e
    | (``Prod.snd, #[α, _, p]) => match p with
      | .app (.app (.app (.app (.const ``Prod.mk [u, 0]) _) _) x) y =>
        rewrite e (mkApp3 (.const ``Int.ofNat_snd_mk [u]) α x y)
      | _ => mkAtomLinearCombo e
    | (``Min.min, #[_, _, a, b]) => rewrite e (mkApp2 (.const ``Int.ofNat_min []) a b)
    | (``Max.max, #[_, _, a, b]) => rewrite e (mkApp2 (.const ``Int.ofNat_max []) a b)
    | (``Int.toNat, #[n]) => rewrite e (mkApp (.const ``Int.toNat_eq_max []) n)
    | (``HShiftLeft.hShiftLeft, #[_, _, _, _, a, b]) =>
      rewrite e (mkApp2 (.const ``Int.ofNat_shiftLeft_eq []) a b)
    | (``HShiftRight.hShiftRight, #[_, _, _, _, a, b]) =>
      rewrite e (mkApp2 (.const ``Int.ofNat_shiftRight_eq_div_pow []) a b)
    | (``Int.natAbs, #[n]) =>
      if (← cfg).splitNatAbs then
        rewrite e (mkApp (.const ``Int.ofNat_natAbs []) n)
      else
        mkAtomLinearCombo e
    | (``Fin.val, #[n, x]) =>
      handleFinVal e i n x
    | _ => mkAtomLinearCombo e
  handleFinVal (e i n x : Expr) : OmegaM (LinearCombo × OmegaM Expr × List Expr) := do
    match x with
    | .fvar h =>
      if let some v ← h.getValue? then
        rewrite e (← mkEqReflWithExpectedType e
          (mkApp3 (.const ``Nat.cast [0]) (.const ``Int []) i (mkApp2 (.const ``Fin.val []) n v)))
      else
        mkAtomLinearCombo e
    | _ => match x.getAppFnArgs, n.nat? with
      | (``HAdd.hAdd, #[_, _, _, _, a, b]), _ =>
        rewrite e (mkApp3 (.const ``Fin.ofNat_val_add []) n a b)
      | (``HMul.hMul, #[_, _, _, _, a, b]), _ =>
        rewrite e (mkApp3 (.const ``Fin.ofNat_val_mul []) n a b)
      | (``HSub.hSub, #[_, _, _, _, a, b]), some _ =>
        -- Only do this rewrite if `n` is a numeral.
        rewrite e (mkApp3 (.const ``Fin.ofNat_val_sub []) n a b)
      | (``OfNat.ofNat, #[_, y, _]), some m =>
        -- Only do this rewrite if `n` is a nonzero numeral.
        if m = 0 then
          mkAtomLinearCombo e
        else
          match y with
          | .lit (.natVal y) =>
            rewrite e (mkApp4 (.const ``Fin.ofNat_val_natCast [])
              (toExpr (m - 1)) (toExpr y) (.lit (.natVal (y % m))) (← mkEqRefl (toExpr (y % m))))
          | _ =>
            -- This shouldn't happen, we obtained `y` from `OfNat.ofNat`
            mkAtomLinearCombo e
      | _, _ => mkAtomLinearCombo e

end
namespace MetaProblem

/-- The trivial `MetaProblem`, with no facts to process and a trivial `Problem`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
