# mkLtIffProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4b2ed6ccb87cea03489c033984d32d61d934e32a95b335870cbe6b2286a1b7c",
  "kind": "def",
  "lexical_name": "mkLtIffProof",
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
  "slug": "mkltiffproof--f8c206b97f3c6afdb7edd06a",
  "source": {
    "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 418,
    "path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8c206b97f3c6afdb7edd06a09288dc19ea0bcc8911d66744369bb76cebe4dd7",
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

Occurrence: `declaration:b4b2ed6ccb87cea03489c033984d32d61d934e32a95b335870cbe6b2286a1b7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLtIffProof (leInst ltInst lawfulOrdLtInst isPreorderInst orderedRingInst : Expr) (lhs rhs lhs' rhs' : RingExpr) : RingM Expr := do
  let ring ← getCommRing
  let { lhs, rhs, lhs', rhs', vars } := norm ring.vars lhs rhs lhs' rhs'
  let ctx ← toContextExpr vars
  let h := mkApp7 (mkConst ``Grind.CommRing.lt_norm_expr [ring.u]) ring.type ring.commRingInst leInst ltInst lawfulOrdLtInst isPreorderInst orderedRingInst
  let h := mkApp6 h ctx (toExpr lhs) (toExpr rhs) (toExpr lhs') (toExpr rhs') eagerReflBoolTrue
  let ltFn := mkApp2 (mkConst ``LT.lt [ring.u]) ring.type ltInst
  let lt   := mkApp2 ltFn (← lhs.denoteExpr' vars) (← rhs.denoteExpr' vars)
  let lt'  := mkApp2 ltFn (← lhs'.denoteExpr' vars) (← rhs'.denoteExpr' vars)
  let expected := mkPropEq lt lt'
  return mkExpectedPropHint h expected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
