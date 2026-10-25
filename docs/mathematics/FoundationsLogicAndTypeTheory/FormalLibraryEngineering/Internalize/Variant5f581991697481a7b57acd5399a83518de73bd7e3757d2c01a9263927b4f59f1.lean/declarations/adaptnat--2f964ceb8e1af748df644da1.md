# adaptNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6829ac14e4f37c3a08f7de73ed706eda0b0bb871f24fdf4aafab2cf3b9d58a1",
  "kind": "def",
  "lexical_name": "adaptNat",
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
  "slug": "adaptnat--2f964ceb8e1af748df644da1",
  "source": {
    "blob": "d42e9efc7d24cb5af822793562774c9740f80183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 300,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f964ceb8e1af748df644da149a96cdc29c2990294231a2cddec854ed830f267",
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

Occurrence: `declaration:a6829ac14e4f37c3a08f7de73ed706eda0b0bb871f24fdf4aafab2cf3b9d58a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptNat (e : Expr) : GoalM Expr := do
  if let some { e := eNew, .. } := (← get').termMap.find? { expr := e } then
    return eNew
  else match_expr e with
    | LE.le _ _ lhs rhs => adaptCnstr lhs rhs (isLT := false)
    | LT.lt _ _ lhs rhs => adaptCnstr lhs rhs (isLT := true)
    | HAdd.hAdd _ _ _ _ _ _ => adaptTerm
    | HSub.hSub _ _ _ _ _ _ => adaptTerm
    | OfNat.ofNat _ _ _ => adaptTerm
    | _ => return e
where
  adaptCnstr (lhs rhs : Expr) (isLT : Bool) : GoalM Expr := do
    let (lhs', h₁) ← natToInt lhs
    let (rhs', h₂) ← natToInt rhs
    let eNew := if isLT then mkIntLT lhs' rhs' else mkIntLE lhs' rhs'
    let h := mkApp6
        (mkConst (if isLT then ``Nat.ToInt.lt_eq else ``Nat.ToInt.le_eq))
        lhs rhs lhs' rhs' h₁ h₂
    updateTermMap e eNew h (← getIntExpr)
    return eNew

  adaptTerm : GoalM Expr := do
    let (eNew, h) ← natToInt e
    updateTermMap e eNew h (← getIntExpr)
    return eNew

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant5f581991697481a7b57acd5399a83518de73bd7e3757d2c01a9263927b4f59f1.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d42e9efc7d24cb5af822793562774c9740f80183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
