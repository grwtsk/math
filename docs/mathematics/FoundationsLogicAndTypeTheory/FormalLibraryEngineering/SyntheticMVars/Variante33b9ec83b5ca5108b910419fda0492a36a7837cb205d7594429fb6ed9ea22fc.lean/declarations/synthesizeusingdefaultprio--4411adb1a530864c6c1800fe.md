# synthesizeUsingDefaultPrio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:620e56313c6c7a9d90ea45072bd479eb92b16af2a8afbe24c89467a4b99c622c",
  "kind": "def",
  "lexical_name": "synthesizeUsingDefaultPrio",
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
  "slug": "synthesizeusingdefaultprio--4411adb1a530864c6c1800fe",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4411adb1a530864c6c1800fe92492c7843ff5eae4c3b6657a9d948c2064ab20e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:620e56313c6c7a9d90ea45072bd479eb92b16af2a8afbe24c89467a4b99c622c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def synthesizeUsingDefaultPrio (mvarId : MVarId) (prio : Nat) : TermElabM Bool :=
  mvarId.withContext do
    let mvarType ← mvarId.getType
    match (← isClass? mvarType) with
    | none => return false
    | some className =>
      match (← getDefaultInstances className) with
      | [] => return false
      | defaultInstances =>
        for (defaultInstance, instPrio) in defaultInstances do
          if instPrio == prio then
            if (← synthesizeUsingDefaultInstance mvarId defaultInstance) then
              return true
        return false
where
  synthesizeUsingDefault (mvarId : MVarId) : TermElabM Bool := do
    for prio in (← getDefaultInstancesPriorities) do
      if (← synthesizeUsingDefaultPrio mvarId prio) then
        return true
    return false

  synthesizePendingInstMVar' (mvarId : MVarId) : TermElabM Bool :=
    commitWhen <| mvarId.withContext do
      try
        synthesizeInstMVarCore mvarId
      catch _ =>
        return false

  synthesizeUsingInstancesStep (mvarIds : List MVarId) : TermElabM (List MVarId) :=
    mvarIds.filterM fun mvarId => do
      if (← synthesizePendingInstMVar' mvarId) then
        return false
      else
        return true

  synthesizeUsingInstances (mvarIds : List MVarId) : TermElabM (List MVarId) := do
    let mvarIds' ← synthesizeUsingInstancesStep mvarIds
    if mvarIds'.length < mvarIds.length then
      synthesizeUsingInstances mvarIds'
    else
      return mvarIds'

  synthesizeUsingDefaultInstance (mvarId : MVarId) (defaultInstance : Name) : TermElabM Bool :=
    commitWhen do
      let candidate ← mkConstWithFreshMVarLevels defaultInstance
      let (mvars, bis, _) ← forallMetaTelescopeReducing (← inferType candidate)
      let candidate := mkAppN candidate mvars
      trace[Elab.defaultInstance] "{toString (mkMVar mvarId)}, {mkMVar mvarId} : {← inferType (mkMVar mvarId)} =?= {candidate} : {← inferType candidate}"
      /- The `coeAtOutParam` feature may mark output parameters of local instances as `syntheticOpaque`.
         This kind of parameter is not assignable by default. We use `withAssignableSyntheticOpaque` to workaround this behavior
         when processing default instances. TODO: try to avoid `withAssignableSyntheticOpaque`. -/
      if (← withAssignableSyntheticOpaque <| isDefEqGuarded (mkMVar mvarId) candidate) then
        -- Succeeded. Collect new TC problems
        trace[Elab.defaultInstance] "isDefEq worked {mkMVar mvarId} : {← inferType (mkMVar mvarId)} =?= {candidate} : {← inferType candidate}"
        let mut pending := []
        for h : i in *...bis.size do
          if bis[i] == BinderInfo.instImplicit then
            pending := mvars[i]!.mvarId! :: pending
        synthesizePending pending
      else
        return false

  synthesizeSomeUsingDefault? (mvarIds : List MVarId) : TermElabM (Option (List MVarId)) := do
    match mvarIds with
    | [] => return none
    | mvarId :: mvarIds =>
      if (← synthesizeUsingDefault mvarId) then
        return mvarIds
      else if let some mvarIds' ← synthesizeSomeUsingDefault? mvarIds then
        return mvarId :: mvarIds'
      else
        return none

  synthesizePending (mvarIds : List MVarId) : TermElabM Bool := do
    let mvarIds ← synthesizeUsingInstances mvarIds
    if mvarIds.isEmpty then return true
    let some mvarIds ← synthesizeSomeUsingDefault? mvarIds | return false
    synthesizePending mvarIds

/-- Used to implement `synthesizeUsingDefault`. This method only consider default instances with the given priority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
