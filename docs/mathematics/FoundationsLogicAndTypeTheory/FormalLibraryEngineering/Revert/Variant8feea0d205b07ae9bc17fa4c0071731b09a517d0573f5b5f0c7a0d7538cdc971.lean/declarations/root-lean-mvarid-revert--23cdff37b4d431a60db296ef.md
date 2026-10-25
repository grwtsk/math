# _root_.Lean.MVarId.revert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e57882c1c678b19efab53dc7e96140a34233109b257abccfcd7a689a6994137a",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.revert",
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
  "slug": "root-lean-mvarid-revert--23cdff37b4d431a60db296ef",
  "source": {
    "blob": "9587a9a63dab5ac98b9de6c56d98fe866557423f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23cdff37b4d431a60db296efebfd22187f25eeacc2b2bd3ce9667a24edb5a510",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e57882c1c678b19efab53dc7e96140a34233109b257abccfcd7a689a6994137a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.revert (mvarId : MVarId) (fvarIds : Array FVarId) (preserveOrder : Bool := false)
    (clearAuxDeclsInsteadOfRevert := false) : MetaM (Array FVarId × MVarId) := do
  if fvarIds.isEmpty then
    pure (#[], mvarId)
  else mvarId.withContext do
    mvarId.checkNotAssigned `revert
    unless clearAuxDeclsInsteadOfRevert do
      for fvarId in fvarIds do
        if (← fvarId.getDecl) |>.isAuxDecl then
          throwError "Failed to revert `{mkFVar fvarId}`: It is an auxiliary declaration created to \
            represent a recursive reference to an in-progress definition"
    let fvars := fvarIds.map mkFVar
    let toRevert ← collectForwardDeps fvars preserveOrder
    /- We should clear any `auxDecl` in `toRevert` -/
    let mut mvarId      := mvarId
    let mut toRevertNew := #[]
    for x in toRevert do
      if (← x.fvarId!.getDecl).isAuxDecl then
        mvarId ← mvarId.clear x.fvarId!
      else
        toRevertNew := toRevertNew.push x
    let tag ← mvarId.getTag
    -- TODO: the following code can be optimized because `MetavarContext.revert` will compute `collectDeps` again.
    -- We should factor out the relevant part

    -- Set metavariable kind to natural to make sure `revert` will assign it.
    mvarId.setKind .natural
    let (e, toRevert) ←
      try
        liftMkBindingM <| MetavarContext.revert toRevertNew mvarId preserveOrder
      finally
        mvarId.setKind .syntheticOpaque
    let mvar := e.getAppFn
    mvar.mvarId!.setKind .syntheticOpaque
    mvar.mvarId!.setTag tag
    return (toRevert.map Expr.fvarId!, mvar.mvarId!)

/-- Reverts all local declarations after `fvarId`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revert/Variant8feea0d205b07ae9bc17fa4c0071731b09a517d0573f5b5f0c7a0d7538cdc971.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9587a9a63dab5ac98b9de6c56d98fe866557423f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
