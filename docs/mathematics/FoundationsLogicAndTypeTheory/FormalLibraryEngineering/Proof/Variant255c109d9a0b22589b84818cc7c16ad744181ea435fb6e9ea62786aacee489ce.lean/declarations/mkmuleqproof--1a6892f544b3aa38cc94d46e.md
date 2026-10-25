# mkMulEqProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4309472f9992aa1d803f1608b01e6c5fc4e9161741a1e0a46dcf3b798fc0f819",
  "kind": "def",
  "lexical_name": "mkMulEqProof",
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
  "slug": "mkmuleqproof--1a6892f544b3aa38cc94d46e",
  "source": {
    "blob": "e9b3728968e885da4934f70c241bf6d906cb5091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a6892f544b3aa38cc94d46e8994bc88b4d5b66caa7d2fb5e0b38b3f8e8d4199",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4309472f9992aa1d803f1608b01e6c5fc4e9161741a1e0a46dcf3b798fc0f819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkMulEqProof (x : Var) (a? : Option Expr) (cs : Array (Expr × Int × EqCnstr)) (c' : EqCnstr) : ProofM Expr := do
  let h ← go (← getCurrVars)[x]!
  match h with
  | .const k h =>
    return mkApp6 (mkConst ``Int.Internal.Linear.of_var_eq) (← getContext) (← mkVarDecl x) (toExpr k) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .mulVar k a h =>
    assert! a? == some a
    let y ← getVarOf a
    return mkApp7 (mkConst ``Int.Internal.Linear.of_var_eq_mul) (← getContext) (← mkVarDecl x) (toExpr k) (← mkVarDecl y) (← mkPolyDecl c'.p) eagerReflBoolTrue h
  | .none =>
    throwError "`grind` internal error, cutsat failed to construct proof for multiplication equality"
where
  goVar (e : Expr) : ProofM MulEqProof := do
    if some e == a? then
      return .mulVar 1 e (mkApp (mkConst ``Int.Internal.Linear.eq_one_mul) e)
    else
      let some (_, k, c) := cs.find? fun (e', _, _) => e' == e | return .none
      let x ← getVarOf e
      let h := mkApp6 (mkConst ``Int.Internal.Linear.var_eq) (← getContext) (← mkVarDecl x) (toExpr k) (← mkPolyDecl c.p) eagerReflBoolTrue (← c.toExprProof)
      return .const k h

  go (e : Expr) : ProofM MulEqProof := do
    let_expr HMul.hMul _ _ _ i a b := e | goVar e
    if !(← Structural.isInstHMulInt i) then goVar e else
    let ha ← go a
    if let .const 0 h := ha then
      return .const 0 (mkApp3 (mkConst ``Int.Internal.Linear.mul_eq_zero_left) a b h)
    let hb ← go b
    if let .const 0 h := hb then
      return .const 0 (mkApp3 (mkConst ``Int.Internal.Linear.mul_eq_zero_right) a b h)
    match ha, hb with
    | .const k₁ h₁, .const k₂ h₂ =>
      let k := k₁*k₂
      let h := mkApp8 (mkConst ``Int.Internal.Linear.mul_eq_kk) a b (toExpr k₁) (toExpr k₂) (toExpr k) h₁ h₂ eagerReflBoolTrue
      return .const k h
    | .const k₁ h₁, .mulVar k₂ c h₂ =>
      let k := k₁*k₂
      let h := mkApp9 (mkConst ``Int.Internal.Linear.mul_eq_kkx) a b (toExpr k₁) (toExpr k₂) c (toExpr k) h₁ h₂ eagerReflBoolTrue
      return .mulVar k c h
    | .mulVar k₁ c h₁, .const k₂ h₂ =>
      let k := k₁*k₂
      let h := mkApp9 (mkConst ``Int.Internal.Linear.mul_eq_kxk) a b (toExpr k₁) c (toExpr k₂) (toExpr k) h₁ h₂ eagerReflBoolTrue
      return .mulVar k c h
    | _, _ => return .none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant255c109d9a0b22589b84818cc7c16ad744181ea435fb6e9ea62786aacee489ce.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b3728968e885da4934f70c241bf6d906cb5091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
