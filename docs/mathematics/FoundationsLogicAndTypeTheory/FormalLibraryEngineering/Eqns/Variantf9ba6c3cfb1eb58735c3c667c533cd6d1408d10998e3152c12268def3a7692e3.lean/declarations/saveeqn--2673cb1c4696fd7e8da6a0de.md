# saveEqn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29d964762f3ffae092164a747320494379c7c574830c6e72a008d3387064a740",
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
  "slug": "saveeqn--2673cb1c4696fd7e8da6a0de",
  "source": {
    "blob": "4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2673cb1c4696fd7e8da6a0de1294cb02b9dc92679cd964aa8192ea8086a7e7bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29d964762f3ffae092164a747320494379c7c574830c6e72a008d3387064a740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–220.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
