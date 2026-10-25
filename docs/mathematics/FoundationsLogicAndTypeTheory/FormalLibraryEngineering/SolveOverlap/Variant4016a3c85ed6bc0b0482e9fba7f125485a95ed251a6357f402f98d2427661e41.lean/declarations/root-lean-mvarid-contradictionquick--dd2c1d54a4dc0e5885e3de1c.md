# _root_.Lean.MVarId.contradictionQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4d101dc0f41e12bb3029f8baaa7ddf665adebd2958d6886d4dd9252d02b6ac2",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.contradictionQuick",
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
  "slug": "root-lean-mvarid-contradictionquick--dd2c1d54a4dc0e5885e3de1c",
  "source": {
    "blob": "a1654d86f58913d264d7507f34fcb40c96af28b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant4016a3c85ed6bc0b0482e9fba7f125485a95ed251a6357f402f98d2427661e41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd2c1d54a4dc0e5885e3de1c5ebc8d0b86da51587fde0b8e9750573353c3ef8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant4016a3c85ed6bc0b0482e9fba7f125485a95ed251a6357f402f98d2427661e41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4d101dc0f41e12bb3029f8baaa7ddf665adebd2958d6886d4dd9252d02b6ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.contradictionQuick (mvarId : MVarId) : MetaM Bool := do
  mvarId.withContext do
    let mut posMap : Std.HashMap Expr FVarId := {}
    let mut negMap : Std.HashMap Expr FVarId := {}
    for localDecl in (← getLCtx) do
      unless localDecl.isImplementationDetail do
        if let some p ← matchNot? localDecl.type then
          if let some pFVarId := posMap[p]? then
            mvarId.assign (← mkAbsurd (← mvarId.getType) (mkFVar pFVarId) localDecl.toExpr)
            return true
          negMap := negMap.insert p localDecl.fvarId
        if (← isProp localDecl.type) then
          if let some nFVarId := negMap[localDecl.type]? then
            mvarId.assign (← mkAbsurd (← mvarId.getType) localDecl.toExpr (mkFVar nFVarId))
            return true
          posMap := posMap.insert localDecl.type localDecl.fvarId
      pure ()
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant4016a3c85ed6bc0b0482e9fba7f125485a95ed251a6357f402f98d2427661e41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant4016a3c85ed6bc0b0482e9fba7f125485a95ed251a6357f402f98d2427661e41.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1654d86f58913d264d7507f34fcb40c96af28b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
