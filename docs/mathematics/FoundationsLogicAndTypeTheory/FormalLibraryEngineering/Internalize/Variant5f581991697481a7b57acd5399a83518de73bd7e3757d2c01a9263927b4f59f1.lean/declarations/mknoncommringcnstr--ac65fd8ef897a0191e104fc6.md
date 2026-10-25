# mkNonCommRingCnstr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dd29bac913b2b6e83467bfe735d739a93e7045fef692d4efcfaf7651d4cce83",
  "kind": "def",
  "lexical_name": "mkNonCommRingCnstr?",
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
  "slug": "mknoncommringcnstr--ac65fd8ef897a0191e104fc6",
  "source": {
    "blob": "d42e9efc7d24cb5af822793562774c9740f80183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac65fd8ef897a0191e104fc6ea27f8363a51a3d3e228adb495e02118ac41664f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dd29bac913b2b6e83467bfe735d739a93e7045fef692d4efcfaf7651d4cce83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNonCommRingCnstr? (s : Struct) (kind : CnstrKind) (lhs rhs : Expr) : NonCommRingM (Option (Cnstr Expr)) := do
  if !isArithTerm lhs && !isArithTerm rhs then
    let e ← mkDenote0 s kind lhs rhs
    return some { u := lhs, v := rhs, k := 0, e, kind, h? := some (mkCnstrNorm0 s (← getRing).ringInst kind lhs rhs)  }
  let some lhs ← ncreify? lhs (skipVar := false) | return none
  let some rhs ← ncreify? rhs (skipVar := false) | return none
  -- **TODO**: We need a `toPolyM_nc` similar `toPolyM`
  let p := lhs.sub rhs |>.toPoly_nc
  let (lhs', rhs', k) := split p
  let lhs' := lhs'.toExpr
  let rhs' := rhs'.toExpr
  let u ← shareCommon (← lhs'.denoteExpr)
  let v ← shareCommon (← rhs'.denoteExpr)
  let rhs' : RingExpr := .add rhs' (.intCast k)
  let h ← match kind with
    | .le => mkNonCommLeIffProof s.leInst s.ltInst?.get! s.isPreorderInst s.orderedRingInst?.get! lhs rhs lhs' rhs'
    | .lt => mkNonCommLtIffProof s.leInst s.ltInst?.get! s.lawfulOrderLTInst?.get! s.isPreorderInst s.orderedRingInst?.get! lhs rhs lhs' rhs'
  let e' := mkRel s kind u (← rhs'.denoteExpr)
  return some {
    kind, u, v, k, e := e', h? := some h
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42e9efc7d24cb5af822793562774c9740f80183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
