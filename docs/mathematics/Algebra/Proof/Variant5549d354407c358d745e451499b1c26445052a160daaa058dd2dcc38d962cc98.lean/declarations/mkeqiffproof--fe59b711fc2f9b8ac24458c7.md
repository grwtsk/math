# mkEqIffProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88b6acec71e5ce4a042c2064b69563187a954ea46d069347d8cc4462feea03ec",
  "kind": "def",
  "lexical_name": "mkEqIffProof",
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
  "slug": "mkeqiffproof--fe59b711fc2f9b8ac24458c7",
  "source": {
    "blob": "6e3ee0f2dfe573af0a3a7bf22c3c966cbec0f68b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 422,
    "path": "GRWTSK/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe59b711fc2f9b8ac24458c70523a03de0905e2556867ef1e34f612b44b7f7b9",
  "verification": {
    "reference": "docs/verification/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88b6acec71e5ce4a042c2064b69563187a954ea46d069347d8cc4462feea03ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqIffProof (lhs rhs lhs' rhs' : RingExpr) : RingM Expr := do
  let ring ← getCommRing
  let { lhs, rhs, lhs', rhs', vars } := norm ring.vars lhs rhs lhs' rhs'
  let ctx ← toContextExpr vars
  let h := mkApp2 (mkConst ``Grind.CommRing.eq_norm_expr [ring.u]) ring.type ring.commRingInst
  let h := mkApp6 h ctx (toExpr lhs) (toExpr rhs) (toExpr lhs') (toExpr rhs') eagerReflBoolTrue
  let eqFn := mkApp (mkConst ``Eq [Level.succ ring.u]) ring.type
  let eq   := mkApp2 eqFn (← lhs.denoteExpr' vars) (← rhs.denoteExpr' vars)
  let eq'  := mkApp2 eqFn (← lhs'.denoteExpr' vars) (← rhs'.denoteExpr' vars)
  let expected := mkPropEq eq eq'
  return mkExpectedPropHint h expected

/--
Given `e` and `e'` s.t. `e.toPoly == e'.toPoly`, returns a proof that `e.denote ctx = e'.denote ctx`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant5549d354407c358d745e451499b1c26445052a160daaa058dd2dcc38d962cc98.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3ee0f2dfe573af0a3a7bf22c3c966cbec0f68b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
