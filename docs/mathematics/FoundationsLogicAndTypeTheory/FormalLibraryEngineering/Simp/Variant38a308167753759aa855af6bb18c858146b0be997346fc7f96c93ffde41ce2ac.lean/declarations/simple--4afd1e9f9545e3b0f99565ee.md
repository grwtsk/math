# simpLe?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d760198fbcd943be24adc1d98347349ce1b6f88056cc54e770811cb7438bdee",
  "kind": "def",
  "lexical_name": "simpLe?",
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
  "slug": "simple--4afd1e9f9545e3b0f99565ee",
  "source": {
    "blob": "444e4d6dfaf92a05d5dc2e1513f856605b746bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant38a308167753759aa855af6bb18c858146b0be997346fc7f96c93ffde41ce2ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4afd1e9f9545e3b0f99565ee3d09cc6b084c56ea1e47ef78d36565ce03043c35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant38a308167753759aa855af6bb18c858146b0be997346fc7f96c93ffde41ce2ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d760198fbcd943be24adc1d98347349ce1b6f88056cc54e770811cb7438bdee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpLe? (e : Expr) (checkIfModified : Bool) : MetaM (Option (Expr × Expr)) := do
  -- If `e` is not already a `≤`, then we should not check whether it has changed.
  let checkIfModified := e.isAppOf ``LE.le && checkIfModified
  let some (a, b, atoms) ← leCnstr? e | return none
  let e := mkIntLE (← a.denoteExpr (atoms[·]!)) (← b.denoteExpr (atoms[·]!))
  let p := a.sub b |>.norm
  if p.isUnsatLe then
    let r := mkConst ``False
    let h := mkApp4 (mkConst ``Int.Internal.Linear.le_eq_false) (← toContextExpr atoms) (toExpr a) (toExpr b) eagerReflBoolTrue
    return some (r, mkExpectedPropHint h (mkPropEq e r))
  else if p.isValidLe then
    let r := mkConst ``True
    let h := mkApp4 (mkConst ``Int.Internal.Linear.le_eq_true) (← toContextExpr atoms) (toExpr a) (toExpr b) eagerReflBoolTrue
    return some (r, mkExpectedPropHint h (mkPropEq e r))
  else if checkIfModified && p.toExpr == a && b == .num 0 then
    return none
  else
    let k := p.gcdCoeffs'
    if k == 1 then
      let r := mkIntLE (← p.denoteExpr (atoms[·]!)) (mkIntLit 0)
      let h := mkApp5 (mkConst ``Int.Internal.Linear.norm_le) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr p) eagerReflBoolTrue
      return some (r, mkExpectedPropHint h (mkPropEq e r))
    else
      let tight := p.getConst % k != 0
      let p := p.div k
      let r := mkIntLE (← p.denoteExpr (atoms[·]!)) (mkIntLit 0)
      let h ← if tight then
        pure <| mkApp6 (mkConst ``Int.Internal.Linear.norm_le_coeff_tight) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr p) (toExpr (Int.ofNat k)) eagerReflBoolTrue
      else
        pure <| mkApp6 (mkConst ``Int.Internal.Linear.norm_le_coeff) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr p) (toExpr (Int.ofNat k)) eagerReflBoolTrue
      return some (r, mkExpectedPropHint h (mkPropEq e r))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant38a308167753759aa855af6bb18c858146b0be997346fc7f96c93ffde41ce2ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant38a308167753759aa855af6bb18c858146b0be997346fc7f96c93ffde41ce2ac.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `444e4d6dfaf92a05d5dc2e1513f856605b746bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
