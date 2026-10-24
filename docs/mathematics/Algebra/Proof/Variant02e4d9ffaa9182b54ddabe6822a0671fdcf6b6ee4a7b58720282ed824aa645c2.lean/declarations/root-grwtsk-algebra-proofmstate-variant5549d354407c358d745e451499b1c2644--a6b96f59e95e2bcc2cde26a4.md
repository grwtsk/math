# _root_.GRWTSK.Algebra.ProofMState.Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.Lean.Meta.Grind.Arith.CommRing.EqCnstr.toExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18f4dbe8f42bea4425a0e237ac3b77e6075d583ff00a94e0292fd5d22eb47c43",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.ProofMState.Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.Lean.Meta.Grind.Arith.CommRing.EqCnstr.toExprProof",
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
  "slug": "root-grwtsk-algebra-proofmstate-variant5549d354407c358d745e451499b1c2644--a6b96f59e95e2bcc2cde26a4",
  "source": {
    "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 159,
    "path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b96f59e95e2bcc2cde26a4b91fd833dd3817ba3bce9fabcd4ed524e04348c9",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18f4dbe8f42bea4425a0e237ac3b77e6075d583ff00a94e0292fd5d22eb47c43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def _root_.GRWTSK.Algebra.ProofMState.Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.Lean.Meta.Grind.Arith.CommRing.EqCnstr.toExprProof (c : EqCnstr) : ProofM Expr := caching c do
  match c.h with
  | .core a b lhs rhs =>
    let h ← mkStepPrefix ``Stepwise.core ``Stepwise.coreC
    return mkApp5 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl c.p) eagerReflBoolTrue (← mkEqProof a b)
  | .coreS a b sa sb ra rb =>
    let h' ← mkSemiringPrefix ``Grind.Ring.OfSemiring.of_eq
    let h' := mkApp3 h' (← mkSExprDecl sa) (← mkSExprDecl sb) (← mkEqProof a b)
    let h ← mkStepPrefix ``Stepwise.core ``Stepwise.coreC
    return mkApp5 h (← mkExprDecl ra) (← mkExprDecl rb) (← mkPolyDecl c.p) eagerReflBoolTrue h'
  | .superpose k₁ m₁ c₁ k₂ m₂ c₂ =>
    let h ← mkStepPrefix ``Stepwise.superpose ``Stepwise.superposeC
    return mkApp10 h
      (toExpr k₁) (← mkMonDecl m₁) (← mkPolyDecl c₁.p)
      (toExpr k₂) (← mkMonDecl m₂) (← mkPolyDecl c₂.p)
      (← mkPolyDecl c.p) eagerReflBoolTrue (← toExprProof c₁) (← toExprProof c₂)
  | .simp k₁ c₁ k₂ m₂ c₂ =>
    let h ← mkStepPrefix ``Stepwise.simp ``Stepwise.simpC
    return mkApp9 h
      (toExpr k₁) (← mkPolyDecl c₁.p)
      (toExpr k₂) (← mkMonDecl m₂) (← mkPolyDecl c₂.p)
      (← mkPolyDecl c.p) eagerReflBoolTrue (← toExprProof c₁) (← toExprProof c₂)
  | .mul k c₁ =>
    let h ← mkStepPrefix ``Stepwise.mul ``Stepwise.mulC
    return mkApp5 h (← mkPolyDecl c₁.p) (toExpr k) (← mkPolyDecl c.p) eagerReflBoolTrue (← toExprProof c₁)
  | .div k c₁ =>
    let h ← mkStepPrefix ``Stepwise.div ``Stepwise.divC
    let some nzInst ← noZeroDivisorsInst?
      | throwNoNatZeroDivisors
    return mkApp6 h nzInst (← mkPolyDecl c₁.p) (toExpr k) (← mkPolyDecl c.p) eagerReflBoolTrue (← toExprProof c₁)
  | .gcd a b c₁ c₂ =>
    let h ← mkStepBasicPrefix ``Grind.CommRing.eq_gcd
    return mkApp8 h (toExpr a) (toExpr b) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c.p)
      eagerReflBoolTrue (← toExprProof c₁) (← toExprProof c₂)
  | .numEq0 k c₁ c₂ =>
    let h ← mkStepBasicPrefix ``Grind.CommRing.eq_normEq0
    return mkApp7 h (toExpr k) (← mkPolyDecl c₁.p) (← mkPolyDecl c₂.p) (← mkPolyDecl c.p)
      eagerReflBoolTrue (← toExprProof c₁) (← toExprProof c₂)

open Lean.Grind.CommRing in
/--
Given a polynomial derivation, returns `(k, p₀, h)` where `h` is a proof that
`k*p₀ = d.p`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
