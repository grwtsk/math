# mkImpEqExprProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:672bf212299d564b205475be0336f5b307c800fedde714ffe86a417664dabdff",
  "kind": "def",
  "lexical_name": "mkImpEqExprProof",
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
  "slug": "mkimpeqexprproof--3d8f999d237da751c9c0f3c0",
  "source": {
    "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 234,
    "path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d8f999d237da751c9c0f3c071a50865707a3ec85ccedf34edf2a571ac73e75b",
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

Occurrence: `declaration:672bf212299d564b205475be0336f5b307c800fedde714ffe86a417664dabdff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkImpEqExprProof (lhs rhs : RingExpr) (d : PolyDerivation) : ProofM Expr := do
  assert! d.p matches .num 0
  let (k, p₀, h₁) ← derivToExprProof d
  let h ← if k == 1 then
    mkStepPrefix ``Stepwise.imp_1eq ``Stepwise.imp_1eqC
  else
    let some nzInst ← noZeroDivisorsInst?
      | throwNoNatZeroDivisors
    pure <| mkApp2 (← mkStepPrefix ``Stepwise.imp_keq ``Stepwise.imp_keqC) nzInst (toExpr k)
  return mkApp6 h (← mkExprDecl lhs) (← mkExprDecl rhs) (← mkPolyDecl p₀) (← mkPolyDecl d.p) eagerReflBoolTrue h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
