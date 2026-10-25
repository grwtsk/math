# _root_.Lean.MVarId.clear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7799e3fd3e8fc4d2a47f74fa9c3f8540fb667e5024d59960dc8ff3def2fe4a7b",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.clear",
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
  "slug": "root-lean-mvarid-clear--667a53869571b52583e91fb4",
  "source": {
    "blob": "163c559d4b3d06ec6761f97f7a20dd0a61051e5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:667a53869571b52583e91fb4f572fc17dd384c55ecd7dcaaa69c08a64ba89127",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7799e3fd3e8fc4d2a47f74fa9c3f8540fb667e5024d59960dc8ff3def2fe4a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.clear (mvarId : MVarId) (fvarId : FVarId) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `clear
    let lctx ← getLCtx
    unless lctx.contains fvarId do
      throwTacticEx `clear mvarId m!"unknown variable '{mkFVar fvarId}'"
    let tag ← mvarId.getTag
    lctx.forM fun localDecl => do
      unless localDecl.fvarId == fvarId do
        if (← localDeclDependsOn localDecl fvarId) then
          throwTacticEx `clear mvarId m!"variable '{localDecl.toExpr}' depends on '{mkFVar fvarId}'"
    let mvarDecl ← mvarId.getDecl
    if (← exprDependsOn mvarDecl.type fvarId) then
      throwTacticEx `clear mvarId m!"target depends on '{mkFVar fvarId}'"
    let lctx := lctx.erase fvarId
    let localInsts ← getLocalInstances
    let localInsts := match localInsts.findFinIdx? fun localInst => localInst.fvar.fvarId! == fvarId with
      | none => localInsts
      | some idx => localInsts.eraseIdx idx
    let newMVar ← mkFreshExprMVarAt lctx localInsts mvarDecl.type MetavarKind.syntheticOpaque tag
    mvarId.assign newMVar
    pure newMVar.mvarId!


/--
Try to erase the given free variable from the goal `mvarId`. It is no-op if the free variable
cannot be erased due to forward dependencies.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `163c559d4b3d06ec6761f97f7a20dd0a61051e5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
