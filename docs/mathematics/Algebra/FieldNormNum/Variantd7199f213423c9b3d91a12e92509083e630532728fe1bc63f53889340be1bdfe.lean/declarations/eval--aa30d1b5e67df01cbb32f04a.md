# eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4754a2fa36f75ebb37ab6bc2412e1281f4c27b906e687c87c8b31a1a7717ea0f",
  "kind": "def",
  "lexical_name": "eval",
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
  "slug": "eval--aa30d1b5e67df01cbb32f04a",
  "source": {
    "blob": "82ee4a2e03927a6553db513734bdfbe609b61ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 137,
    "path": "GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa30d1b5e67df01cbb32f04ac0761aba4999d30977f0fc53acee8750cbae2d24",
  "verification": {
    "reference": "docs/verification/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4754a2fa36f75ebb37ab6bc2412e1281f4c27b906e687c87c8b31a1a7717ea0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eval (e : Expr) : M (Rat × Expr) := do
  match_expr e with
  | HAdd.hAdd _ _ _ inst a b =>
    guard (← isAddInst inst)
    mkBin ``Grind.Field.NormNum.add_eq a b (← eval a) (← eval b) (· + ·)
  | HMul.hMul _ _ _ inst a b =>
    guard (← isMulInst inst)
    mkBin ``Grind.Field.NormNum.mul_eq a b (← eval a) (← eval b) (· * ·)
  | HSub.hSub _ _ _ inst a b =>
    guard (← isSubInst inst)
    mkBin ``Grind.Field.NormNum.sub_eq a b (← eval a) (← eval b) (· - ·)
  | HDiv.hDiv _ _ _ inst a b =>
    guard (← isDivInst inst)
    mkBin ``Grind.Field.NormNum.div_eq a b (← eval a) (← eval b) (· / ·)
  | Neg.neg _ inst a =>
    guard (← isNegInst inst)
    mkUnary ``Grind.Field.NormNum.neg_eq a (← eval a) (- ·)
  | Inv.inv _ inst a =>
    guard (← isInvInst inst)
    mkUnary ``Grind.Field.NormNum.inv_eq a (← eval a) (·⁻¹)
  | OfNat.ofNat _ n inst =>
    guard (← isOfNatInst inst n)
    let some v ← getNatValue? n | failure
    let ctx ← read
    let h := mkApp3 (mkConst ``Grind.Field.NormNum.ofNat_eq [ctx.u]) ctx.type ctx.fieldInst (toExpr v)
    return ((v : Rat), h)
  | NatCast.natCast _ inst n =>
    guard (← isNatCastInst inst)
    let some v ← getNatValue? n | failure
    let ctx ← read
    let h := mkApp3 (mkConst ``Grind.Field.NormNum.natCast_eq [ctx.u]) ctx.type ctx.fieldInst (toExpr v)
    return ((v : Rat), h)
  | IntCast.intCast _ inst n =>
    guard (← isIntCastInst inst)
    let some v ← getIntValue? n | failure
    let ctx ← read
    let h := mkApp3 (mkConst ``Grind.Field.NormNum.intCast_eq [ctx.u]) ctx.type ctx.fieldInst (toExpr v)
    return ((v : Rat), h)
  | HPow.hPow _ _ _ inst a b =>
    if (← isNPowInst inst) then
      let (v₁, h₁) ← eval a
      let some n ← getNatValue? b | failure
      let ctx ← read
      -- **Note**: Would be great to be able to use `Grind.Config.exp`, but we don't have access to it in the `MetaM` monad
      guard (← checkExponent n (warning := false))
      let v := v₁ ^ n
      let h := mkApp9 (mkConst ``Grind.Field.NormNum.npow_eq [ctx.u]) ctx.type ctx.fieldInst ctx.isChar0Inst
        a (toExpr n) (toExpr v₁) (toExpr v) eagerReflBoolTrue h₁
      return (v, h)
    else if (← isZPowInst inst) then
      let (v₁, h₁) ← eval a
      let some n ← getIntValue? b | failure
      let ctx ← read
      guard (← checkExponent n.natAbs (warning := false))
      let v := v₁ ^ n
      let h := mkApp9 (mkConst ``Grind.Field.NormNum.zpow_eq [ctx.u]) ctx.type ctx.fieldInst ctx.isChar0Inst
        a (toExpr n) (toExpr v₁) (toExpr v) eagerReflBoolTrue h₁
      return (v, h)
    else
      failure
  | _ => failure

/-- Quick filter to decide whether it is worth applying `eval` or not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldNormNum/Variantd7199f213423c9b3d91a12e92509083e630532728fe1bc63f53889340be1bdfe.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82ee4a2e03927a6553db513734bdfbe609b61ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
