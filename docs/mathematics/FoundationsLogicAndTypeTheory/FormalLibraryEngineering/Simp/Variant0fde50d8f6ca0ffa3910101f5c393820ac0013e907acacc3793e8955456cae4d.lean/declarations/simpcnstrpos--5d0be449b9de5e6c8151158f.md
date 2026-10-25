# simpCnstrPos?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2973f30470e5cdd39a218f7a88761a9fffdab7ff45a5fcac1a4ae9fb1fa580b5",
  "kind": "def",
  "lexical_name": "simpCnstrPos?",
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
  "slug": "simpcnstrpos--5d0be449b9de5e6c8151158f",
  "source": {
    "blob": "ce85b598d42c68eda24cb0748af4459b8c579574",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d0be449b9de5e6c8151158f9965773fc46f13652090b3b7f42139fb15b3b22f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2973f30470e5cdd39a218f7a88761a9fffdab7ff45a5fcac1a4ae9fb1fa580b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpCnstrPos? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  let some (c, atoms) ← toLinearCnstr? e
    | return none
  let lhs ← c.toArith atoms
  let c₁ := c.toPoly
  let c₂ := c₁.norm
  if c₂.isUnsat then
    let r := mkConst ``False
    let p := mkApp3 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_false_of_isUnsat) (← toContextExpr atoms) (toExpr c) eagerReflBoolTrue
    let h := mkExpectedPropHint p (mkPropEq lhs r)
    return some (r, h)
  else if c₂.isValid then
    let r := mkConst ``True
    let p := mkApp3 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_true_of_isValid) (← toContextExpr atoms) (toExpr c) eagerReflBoolTrue
    let h := mkExpectedPropHint p (mkPropEq lhs r)
    return some (r, h)
  else
    let c₂ : LinearCnstr := c₂.toExpr
    let r ← c₂.toArith atoms
    if r != lhs then
      let p := mkApp4 (mkConst ``Nat.Internal.Linear.ExprCnstr.eq_of_toNormPoly_eq) (← toContextExpr atoms) (toExpr c) (toExpr c₂) eagerReflBoolTrue
      let h := mkExpectedPropHint p (mkPropEq lhs r)
      return some (r, h)
    else
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0fde50d8f6ca0ffa3910101f5c393820ac0013e907acacc3793e8955456cae4d.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce85b598d42c68eda24cb0748af4459b8c579574` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
