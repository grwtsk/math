# saveEqn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6630726acf7b78887ac8769d7a5416d5ffb8d165d34b9a8b47bb8a9ebfebfd89",
  "kind": "def",
  "lexical_name": "saveEqn",
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
  "slug": "saveeqn--b47cb9c444ae4123f93e4d3b",
  "source": {
    "blob": "7a2507e3b5079fdac4a97cedbb2629942a736fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b47cb9c444ae4123f93e4d3b5b3d36fefe468439ac32d3cd59eadb23fb5c3a06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6630726acf7b78887ac8769d7a5416d5ffb8d165d34b9a8b47bb8a9ebfebfd89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def saveEqn (mvarId : MVarId) : StateRefT (Array Expr) MetaM Unit := mvarId.withContext do
  let target ← mvarId.getType'
  let fvarState := collectFVars {} target
  let fvarState ← (← getLCtx).foldrM (init := fvarState) fun decl fvarState => do
    if fvarState.fvarSet.contains decl.fvarId then
      return collectFVars fvarState (← instantiateMVars decl.type)
    else
      return fvarState
  let mut fvarIdSet := fvarState.fvarSet
  let mut fvarIds ← sortFVarIds <| fvarState.fvarSet.toArray
  -- Include (relevant) propositions that are not already in `fvarIdSet`
  let mut modified := false
  repeat
    modified := false
    for decl in (← getLCtx) do
      unless fvarIdSet.contains decl.fvarId do
        if (← isProp decl.type) then
          let type ← instantiateMVars decl.type
          unless (← isIrrelevant fvarIdSet type) do
            modified := true
            (fvarIdSet, fvarIds) ← pushDecl fvarIdSet fvarIds decl
  until !modified
  let type ← mkForallFVars (fvarIds.map mkFVar) target
  let type ← simpEqnType type
  modify (·.push type)
where
  /--
    We say the type/proposition is "irrelevant" if
    1- It does not contain any variable in `fvarIdSet` OR
    2- It is of the form `x = t` or `t = x` where `x` is a free variable
       that is not in `fvarIdSet`. This can of equality can be eliminated by substitution.  -/
  isIrrelevant (fvarIdSet : FVarIdSet) (type : Expr) : MetaM Bool := do
    if Option.isNone <| type.find? fun e => e.isFVar && fvarIdSet.contains e.fvarId! then
      return true
    else if let some (_, lhs, rhs) := type.eq? then
      return (lhs.isFVar && !fvarIdSet.contains lhs.fvarId!)
             || (rhs.isFVar && !fvarIdSet.contains rhs.fvarId!)
    else
      return false

  pushDecl (fvarIdSet : FVarIdSet) (fvarIds : Array FVarId) (localDecl : LocalDecl) : MetaM (FVarIdSet × Array FVarId) := do
    let (fvarIdSet, fvarIds) ← collectDeps fvarIdSet fvarIds (← instantiateMVars localDecl.type)
    return (fvarIdSet.insert localDecl.fvarId, fvarIds.push localDecl.fvarId)

  collectDeps (fvarIdSet : FVarIdSet) (fvarIds : Array FVarId) (type : Expr) : MetaM (FVarIdSet × Array FVarId) := do
    let s := collectFVars {} type
    let usedFVarIds ← sortFVarIds <| s.fvarSet.toArray
    let mut fvarIdSet := fvarIdSet
    let mut fvarIds := fvarIds
    for fvarId in usedFVarIds do
      unless fvarIdSet.contains fvarId do
        (fvarIdSet, fvarIds) ← pushDecl fvarIdSet fvarIds (← fvarId.getDecl)
    return (fvarIdSet, fvarIds)

/--
Zeta reduces `let` and `have` while consuming metadata.
Returns true if progress is made.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2507e3b5079fdac4a97cedbb2629942a736fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
