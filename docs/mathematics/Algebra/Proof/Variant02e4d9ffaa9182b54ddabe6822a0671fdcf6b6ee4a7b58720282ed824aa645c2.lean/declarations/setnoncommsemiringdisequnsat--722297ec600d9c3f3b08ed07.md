# setNonCommSemiringDiseqUnsat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c69a6e309ebd269599d03615f63a40eba66a91c19ec5a7a85413c6e4209dd551",
  "kind": "def",
  "lexical_name": "setNonCommSemiringDiseqUnsat",
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
  "slug": "setnoncommsemiringdisequnsat--722297ec600d9c3f3b08ed07",
  "source": {
    "blob": "2c0f26aeb6986979b2714ae6267ec8dac9d2c3db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 373,
    "path": "GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:722297ec600d9c3f3b08ed076b493e2ad531b21822767195df02e41fa428cbc8",
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

Occurrence: `declaration:c69a6e309ebd269599d03615f63a40eba66a91c19ec5a7a85413c6e4209dd551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setNonCommSemiringDiseqUnsat (a b : Expr) (sa sb : SemiringExpr) : NonCommSemiringM Unit := do
  let semiring ← getSemiring
  let hne ← mkDiseqProof a b
  let usedVars     := sa.collectVars >> sb.collectVars <| {}
  let vars'        := usedVars.toArray
  let varRename    := mkVarRename vars'
  let vars         := semiring.vars
  let vars         := vars'.map fun x => vars[x]!
  let sa           := sa.renameVars varRename
  let sb           := sb.renameVars varRename
  let ctx          ← toSContextExpr' vars
  let h := mkApp3 (mkConst ``Grind.CommRing.eq_normS_nc [semiring.u]) semiring.type semiring.semiringInst ctx
  let h := mkApp3 h (toExpr sa) (toExpr sb) eagerReflBoolTrue
  closeGoal (mkApp hne h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Proof/Variant02e4d9ffaa9182b54ddabe6822a0671fdcf6b6ee4a7b58720282ed824aa645c2.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c0f26aeb6986979b2714ae6267ec8dac9d2c3db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
