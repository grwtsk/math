# simpEq?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfbd28b5293c15e66bb236636bf223f68022b44bf6bbd93520678499355a1e1f",
  "kind": "def",
  "lexical_name": "simpEq?",
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
  "slug": "simpeq--59e3acb2e9b4e09fb5481f04",
  "source": {
    "blob": "e9728356d55f1bcd9deec15ca1ce906f8befa72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59e3acb2e9b4e09fb5481f0410c9fd380644d72f82dad716011097b562eec44a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfbd28b5293c15e66bb236636bf223f68022b44bf6bbd93520678499355a1e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpEq? (e : Expr) : MetaM (Option (Expr × Expr)) := do
  let some (a, b, atoms) ← eqCnstr? e | return none
  let e := mkIntEq (← a.denoteExpr (atoms[·]!)) (← b.denoteExpr (atoms[·]!))
  let p := a.sub b |>.norm
  if p.isUnsatEq then
    let r := mkConst ``False
    let h := mkApp4 (mkConst ``Int.Internal.Linear.eq_eq_false) (← toContextExpr atoms) (toExpr a) (toExpr b) eagerReflBoolTrue
    return some (r, mkExpectedPropHint h (mkPropEq e r))
  else if p.isValidEq then
    let r := mkConst ``True
    let h := mkApp4 (mkConst ``Int.Internal.Linear.eq_eq_true) (← toContextExpr atoms) (toExpr a) (toExpr b) eagerReflBoolTrue
    return some (r, mkExpectedPropHint h (mkPropEq e r))
  else if p.toExpr == a && b == .num 0 then
    return none
  else match p with
    | .add 1 x (.add (-1) y (.num 0)) =>
      let r := mkIntEq atoms[x]! atoms[y]!
      if r == e then return none
      let h := mkApp6 (mkConst ``Int.Internal.Linear.norm_eq_var) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr x) (toExpr y) eagerReflBoolTrue
      return some (r, mkExpectedPropHint h (mkPropEq e r))
    | .add 1 x (.num k) =>
      let r := mkIntEq atoms[x]! (toExpr (-k))
      if r == e then return none
      let h := mkApp6 (mkConst ``Int.Internal.Linear.norm_eq_var_const) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr x) (toExpr (-k)) eagerReflBoolTrue
      return some (r, mkExpectedPropHint h (mkPropEq e r))
    | _ =>
      let k := p.gcdCoeffs'
      if k == 1 then
        let r := mkIntEq (← p.denoteExpr (atoms[·]!)) (mkIntLit 0)
        let h := mkApp5 (mkConst ``Int.Internal.Linear.norm_eq) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr p) eagerReflBoolTrue
        return some (r, mkExpectedPropHint h (mkPropEq e r))
      else if p.getConst % k == 0 then
        let p := p.div k
        let r := mkIntEq (← p.denoteExpr (atoms[·]!)) (mkIntLit 0)
        let h := mkApp6 (mkConst ``Int.Internal.Linear.norm_eq_coeff) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr p) (toExpr (Int.ofNat k)) eagerReflBoolTrue
        return some (r, mkExpectedPropHint h (mkPropEq e r))
      else
        let r := mkConst ``False
        let h := mkApp5 (mkConst ``Int.Internal.Linear.eq_eq_false_of_divCoeff) (← toContextExpr atoms) (toExpr a) (toExpr b) (toExpr (Int.ofNat k)) eagerReflBoolTrue
        return some (r, mkExpectedPropHint h (mkPropEq e r))


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9728356d55f1bcd9deec15ca1ce906f8befa72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
