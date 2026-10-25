# checkMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:636191b5084c4c6ab3d19e98e04d466807ffaa9efff401938bec9e50e1941cbc",
  "kind": "def",
  "lexical_name": "checkMVars",
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
  "slug": "checkmvars--3bbbd9a2bff7001bf1054190",
  "source": {
    "blob": "3469c7a1357d471e36988d02f8f2f3e0aa4aace1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bbbd9a2bff7001bf1054190b332949ebbe4fddc6fa0379f12afb4e7a74366aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:636191b5084c4c6ab3d19e98e04d466807ffaa9efff401938bec9e50e1941cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkMVars (root : MVarClusterRef) (rootMetaState : Meta.SavedState) :
    MetaM Unit :=
  preTraverseDown
    (λ gref => do
      let g ← gref.get
      checkGoalMVars g
      return true)
    (λ rref => do
      let r ← rref.get
      checkAssignedMVars r
      checkDroppedMVars r
      return true)
    (λ _ => return true)
    (TreeRef.mvarCluster root)
  where
    getParentInfo (r : Rapp) : CoreM (MVarId × Meta.SavedState) := do
      let some res := (← r.parent.get).postNormGoalAndMetaState? | throwError
        "{Check.tree.name}: expected parent goal of rapp {r.id} to be normalised (but not proven by normalisation)."
      return res

    checkAssignedMVars (r : Rapp) : MetaM Unit := do
      let (parentPostNormGoal, parentPostNormState) ← getParentInfo r
      let actualAssigned :=
        (← getAssignedExprMVars parentPostNormState r.metaState).erase
          parentPostNormGoal
      unless actualAssigned.equalSet r.assignedMVars.toArray do throwError
        "{Check.tree.name}: rapp {r.id} reports incorrect assigned mvars.\n  reported: {r.assignedMVars.toArray.map (·.name)}\n  actual: {actualAssigned.map (·.name)}"

    checkDroppedMVars (r : Rapp) : MetaM Unit := do
      let droppableMVars :=
        (← r.parent.get).mvars ++ r.introducedMVars |>.toArray
      let mut nonDroppedMVars := Std.HashSet.ofArray r.assignedMVars.toArray
      for cref in r.children do
        for gref in (← cref.get).goals do
          let g ← gref.get
          nonDroppedMVars := nonDroppedMVars.insert g.preNormGoal
          nonDroppedMVars := nonDroppedMVars.insertMany g.mvars
      if droppableMVars.any (! nonDroppedMVars.contains ·) then throwError
        "{Check.tree.name}: rapp {r.id} dropped mvars.\n  mvars introduced or present in parent: {droppableMVars.map (·.name)}\n  mvars assigned or present in subgoals:\n  {nonDroppedMVars.toArray.map (·.name)}"

    checkGoalMVars (g : Goal) : MetaM Unit := do
      checkNormMVars g
      let actualPreNormMVars ← g.runMetaMInParentState'
        g.preNormGoal.getMVarDependencies
      let expectedMVars := Std.HashSet.ofArray g.mvars.toArray
      unless actualPreNormMVars == expectedMVars do throwError
        "{Check.tree.name}: goal {g.id} reports incorrect unassigned mvars.\n  reported: {g.mvars.toArray.map (·.name)}\n  actual: {actualPreNormMVars.toArray.map (·.name)}"

    checkNormMVars (g : Goal) : MetaM Unit := do
      let go (parentMetaState postMetaState : Meta.SavedState)
          (introduced : Array MVarId) : MetaM Unit := do
        unless introduced.isEmpty do throwError
          "{Check.tree.name}: normalisation of goal {g.id} introduced additional metavariables:{indentD $ toMessageData $ introduced.map (·.name)}"
        let assigned :=
          (← getAssignedExprMVars parentMetaState postMetaState).erase
            g.preNormGoal
        unless assigned.isEmpty do throwError
          "{Check.tree.name}: normalisation of goal {g.id} assigned metavariables:{indentD $ toMessageData $ assigned.map (·.name)}"
      match g.normalizationState with
      | .notNormal => return
      | .provenByNormalization postMetaState .. =>
        let parentMetaState ← g.parentMetaState rootMetaState
        let introduced ← getIntroducedExprMVars parentMetaState postMetaState
        go parentMetaState postMetaState introduced
      | .normal postGoal postMetaState .. =>
        let parentMetaState ← g.parentMetaState rootMetaState
        let introduced :=
          (← getIntroducedExprMVars parentMetaState postMetaState).erase
            postGoal
        go parentMetaState postMetaState introduced

-- Check that each mvar ocurring in a goal is either present in the root meta
-- state or has an introducing rapp.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant26358e41dbaf1c391bd0d55035975da5f641333e56088b52e7edf66f778723bb.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3469c7a1357d471e36988d02f8f2f3e0aa4aace1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
