# addRappUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6659ba57e11521866128c4d4decf66bf64fa0ca54e3309ea7e457d0bb33b83e9",
  "kind": "def",
  "lexical_name": "addRappUnsafe",
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
  "slug": "addrappunsafe--46e9a4b922d34d8bae71638c",
  "source": {
    "blob": "cd804d69d39459ed91fa9e94ec56a77eb500ab06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46e9a4b922d34d8bae71638cdd806162cdb56ee2e01353f520c0d183a4687fde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6659ba57e11521866128c4d4decf66bf64fa0ca54e3309ea7e457d0bb33b83e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def addRappUnsafe (r : AddRapp) : TreeM RappRef := do
  let originalSubgoals := r.goals

  -- We update the rapp's `auxDeclNGen` to ensure that tactics on different
  -- branches of the search tree generate different names for auxiliary
  -- declarations.
  let auxDeclNGen ←
    match ← (← r.parent.get).parentRapp? with
    | none =>
      let (child, parent) := (← getDeclNGen).mkChild
      setDeclNGen parent
      pure child
    | some parentRapp => parentRapp.getChildAuxDeclNameGenerator
  let metaState := { r.postState with core.auxDeclNGen := auxDeclNGen }

  let rref : RappRef ← IO.mkRef $ Rapp.mk {
    id := ← getAndIncrementNextRappId
    parent := r.parent
    children := #[] -- will be filled in later
    state := NodeState.unknown
    isIrrelevant := false
    appliedRule := r.appliedRule
    scriptSteps? := r.scriptSteps?
    originalSubgoals := originalSubgoals.map (·.mvarId)
    successProbability := r.successProbability
    metaState
    introducedMVars := {} -- will be filled in later
    assignedMVars   := {} -- will be filled in later
  }

  let parentGoal ← r.parent.get
  let goalDepth := parentGoal.depth + 1

  let (originalSubgoalMVars, assignedMVars, assignedOrDroppedMVars) ←
    r.postState.runMetaM' do
      -- Get mvars which the original subgoals depend on.
      let originalSubgoalMVars : Std.HashSet MVarId ←
        originalSubgoals.foldlM (init := ∅) λ acc subgoal =>
          return acc.insertMany (← subgoal.mvarId.getMVarDependencies)

      -- Get mvars which were either assigned or dropped by the rapp. We assume
      -- that rules only assign mvars which appear in the rapp's parent goal. A
      -- dropped mvar is one that appears in the parent of the rapp but is
      -- neither assigned by the rapp nor does it appear in any of its subgoals.
      -- A dropped mvar is treated like an assigned mvar for the purposes of
      -- copying.
      let mut assignedMVars : UnorderedArraySet MVarId := ∅
      let mut assignedOrDroppedMVars : UnorderedArraySet MVarId := ∅
      for mvarId in parentGoal.mvars do
        if ← mvarId.isAssignedOrDelayedAssigned then
          -- mvar was assigned
          assignedMVars := assignedMVars.insert mvarId
          assignedOrDroppedMVars := assignedOrDroppedMVars.insert mvarId
        else if ! originalSubgoalMVars.contains mvarId then
          -- mvar was dropped
          assignedOrDroppedMVars := assignedOrDroppedMVars.insert mvarId
      pure (originalSubgoalMVars, assignedMVars, assignedOrDroppedMVars)

  -- If the rapp assigned or dropped any mvars, copy the related goals.
  let copiedGoals : Array Goal ←
    copyGoals assignedOrDroppedMVars r.parent r.postState
      r.successProbability goalDepth
  let copiedSubgoals : Array Subgoal :=
    copiedGoals.map λ g =>
      { diff := { (default : GoalDiff) with newGoal := g.preNormGoal } }
    -- The diff is irrelevant because we later add `g` to the tree (and the
    -- forward state of `g` is already up to date).

  -- Collect the mvars which occur in the original subgoals and copied goals.
  let originalSubgoalAndCopiedGoalMVars :=
    copiedGoals.foldl (init := originalSubgoalMVars)
       λ copiedGoalMVars g => copiedGoalMVars.insertMany g.mvars

  -- Turn the dropped mvars into subgoals. Note: an mvar that was dropped by the
  -- rapp may occur in the copied goals, in which case we don't count it as
  -- dropped any more.
  let droppedSubgoals : Array Subgoal ← runInMetaState r.postState do
    let mut droppedMVars := #[]
    for mvarId in parentGoal.mvars do
      unless ← (pure $ originalSubgoalAndCopiedGoalMVars.contains mvarId) <||>
               mvarId.isAssignedOrDelayedAssigned do
        let diff ← diffGoals parentGoal.currentGoal mvarId
        droppedMVars := droppedMVars.push { diff }
    pure droppedMVars

  -- Partition the subgoals into 'proper goals' and 'proper mvars'. A proper
  -- mvar is an mvar that occurs in any of the other subgoal mvars. Any other
  -- mvar is a proper goal.
  let (properGoals, _) ← r.postState.runMetaM' do
    partitionGoalsAndMVars (·.mvarId) $
      originalSubgoals ++ copiedSubgoals ++ droppedSubgoals

  -- Construct the subgoals
  let subgoals ← properGoals.mapM λ (goal, mvars) =>
    if let some copiedGoal := copiedGoals.find? (·.preNormGoal == goal.mvarId) then
      pure copiedGoal
    else
      let origin :=
        if droppedSubgoals.find? (·.mvarId == goal.mvarId) |>.isSome then
          .droppedMVar
        else
          .subgoal
      try
        makeInitialGoal goal mvars (unsafeCast ()) r.postState
          parentGoal.forwardState parentGoal.forwardRuleMatches
          r.consumedForwardRuleMatches goalDepth r.successProbability origin
          -- The parent (`unsafeCast ()`) will be patched up later.
      catch e =>
        throwError "in rapp for rule {r.appliedRule.name}:{indentD e.toMessageData}"

  -- Construct the new mvar clusters.
  let crefs : Array MVarClusterRef ←
    cluster (·.mvars.toArray) subgoals |>.mapM λ gs => do
      let grefs ← gs.mapM (IO.mkRef ·)
      let cref ← IO.mkRef $ MVarCluster.mk {
        parent? := some rref
        goals := grefs
        isIrrelevant := false
        state := NodeState.unknown
      }
      -- Patch up information we left out earlier (to break cyclic
      -- dependencies).
      grefs.forM λ gref => gref.modify λ g => g.setParent cref
      return cref

  -- Get the introduced mvars. An mvar counts as introduced by this rapp if it
  -- appears in a subgoal, but not in the parent goal.
  let mut introducedMVars : UnorderedArraySet MVarId := ∅
  let mut allIntroducedMVars ← modifyGetThe Tree λ t =>
    (t.allIntroducedMVars, { t with allIntroducedMVars := ∅ })
    -- We set `allIntroducedMVars := ∅` to make sure that the hash set is used
    -- linearly.
  for g in subgoals do
    for mvarId in g.mvars do
      if ! parentGoal.mvars.contains mvarId &&
         ! allIntroducedMVars.contains mvarId then
        introducedMVars := introducedMVars.insert mvarId
        allIntroducedMVars := allIntroducedMVars.insert mvarId
  modifyThe Tree λ t => { t with allIntroducedMVars }

  -- Patch up more information we left out earlier.
  rref.modify λ r =>
    r.setChildren crefs
    |>.setIntroducedMVars introducedMVars
    |>.setAssignedMVars assignedMVars
  r.parent.modify λ g => g.setChildren $ g.children.push rref

  -- Increment goal and rapp counters.
  incrementNumGoals subgoals.size
  incrementNumRapps
  return rref

/--
Adds a new rapp and its subgoals. If the rapp assigns mvars, all relevant
goals containing these mvars are copied as children of the rapp as well. If
the rapp drops mvars, these are treated as assigned mvars, in the sense that
the same goals are copied as if the dropped mvar had been assigned.

Note that adding a rapp may prove the parent goal, but this function does not
make the necessary changes. So after calling it, you should check whether the
rapp's parent goal is proven and mark it accordingly.
-/
@[implemented_by addRappUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRapp/Variant389cf3736d3ac6b62679fe8c7086db001f87961d133617fc12865e6e877a2efc.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd804d69d39459ed91fa9e94ec56a77eb500ab06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
