# elabMRevert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eef061ed2f4c3cbb14307bf197f72a04cb161dbdb5eed095d6addb0f05f0bf68",
  "kind": "def",
  "lexical_name": "elabMRevert",
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
  "slug": "elabmrevert--d5ff70bca56c0c3317204eed",
  "source": {
    "blob": "707f4d0f77d42cb25a242aecbfa2c49cfcc0e02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant4e242df93e2a54a5c13a82f5bf430c557b8d38084a1e76d839c27e64556a77a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5ff70bca56c0c3317204eedfa29a956492e5ad867f64ee337919307cc900557",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant4e242df93e2a54a5c13a82f5bf430c557b8d38084a1e76d839c27e64556a77a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eef061ed2f4c3cbb14307bf197f72a04cb161dbdb5eed095d6addb0f05f0bf68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMRevert : Tactic
  | `(tactic| mrevert $h:ident) => do
  let mvar ← getMainGoal
  let some goal := parseMGoal? (← mvar.getType)
    | throwError "Not in proof mode"
  mvar.withContext do
  let goals ← IO.mkRef []
  mvar.assign (← mRevert goal h fun newGoal => do
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    goals.modify (m.mvarId! :: ·)
    return m)
  replaceMainGoal (← goals.get)
  | `(tactic| mrevert ∀ $[$n]?) => do
  let (mvar, goal) ← mStartMainGoal
  mvar.withContext do
  let n := ((·.getNat) <$> n).getD 1
  let goals ← IO.mkRef []
  mvar.assign (← mRevertForallN goal n (← mkFreshUserName `h) fun newGoal => do
    let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
    goals.modify (m.mvarId! :: ·)
    return m)
  replaceMainGoal (← goals.get)
  | _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant4e242df93e2a54a5c13a82f5bf430c557b8d38084a1e76d839c27e64556a77a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant4e242df93e2a54a5c13a82f5bf430c557b8d38084a1e76d839c27e64556a77a5.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `707f4d0f77d42cb25a242aecbfa2c49cfcc0e02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
