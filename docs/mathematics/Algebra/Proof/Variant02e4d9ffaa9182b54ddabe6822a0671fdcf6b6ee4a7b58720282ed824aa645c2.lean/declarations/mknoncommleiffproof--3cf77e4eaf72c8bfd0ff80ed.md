# mkNonCommLeIffProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:347e0b0713a1eb9ad1ce692a6b9e461c85e9b273f5d7f05b4c53e5e28b904ca0",
  "kind": "def",
  "lexical_name": "mkNonCommLeIffProof",
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
  "slug": "mknoncommleiffproof--3cf77e4eaf72c8bfd0ff80ed",
  "source": {
    "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 455,
    "path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf77e4eaf72c8bfd0ff80edd13e558b64ca547f6176fd6ac88be1dace5f35d8",
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

Occurrence: `declaration:347e0b0713a1eb9ad1ce692a6b9e461c85e9b273f5d7f05b4c53e5e28b904ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNonCommLeIffProof (leInst ltInst isPreorderInst orderedRingInst : Expr) (lhs rhs lhs' rhs' : RingExpr) : NonCommRingM Expr := do
  let ring ← getRing
  let { lhs, rhs, lhs', rhs', vars } := norm ring.vars lhs rhs lhs' rhs'
  let ctx ← toContextExpr vars
  let h := mkApp6 (mkConst ``Grind.CommRing.le_norm_expr_nc [ring.u]) ring.type ring.ringInst leInst ltInst isPreorderInst orderedRingInst
  let h := mkApp6 h ctx (toExpr lhs) (toExpr rhs) (toExpr lhs') (toExpr rhs') eagerReflBoolTrue
  let leFn := mkApp2 (mkConst ``LE.le [ring.u]) ring.type leInst
  let le   := mkApp2 leFn (← lhs.denoteExpr' vars) (← rhs.denoteExpr' vars)
  let le'  := mkApp2 leFn (← lhs'.denoteExpr' vars) (← rhs'.denoteExpr' vars)
  let expected := mkPropEq le le'
  return mkExpectedPropHint h expected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
