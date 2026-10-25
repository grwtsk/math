# makeForwardHypProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4eb49a494283b77c6bcf87b8213677fff11485c23872726ee7af71960ce267f6",
  "kind": "def",
  "lexical_name": "makeForwardHypProofs",
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
  "slug": "makeforwardhypproofs--1c8615ec348bdeeae20ad335",
  "source": {
    "blob": "6cd46daa1295aaeb2786c763dba00c8144d4124c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c8615ec348bdeeae20ad33599e63a7c3da60e3321e1db98ff42f7fd2287b0fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4eb49a494283b77c6bcf87b8213677fff11485c23872726ee7af71960ce267f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def makeForwardHypProofs (e : Expr) (patSubst? : Option Substitution)
    (immediate : UnorderedArraySet PremiseIndex) : ForwardM Unit :=
  withNewMCtxDepth (allowLevelAssignments := true) do
    let type ← inferType e
    let (argMVars, binderInfos, _) ← openRuleType patSubst? e
    let app := mkAppN e (argMVars.map .mvar)
    let mut instMVars := Array.mkEmpty argMVars.size
    let mut immediateMVars := Array.mkEmpty argMVars.size
    for h : i in [:argMVars.size] do
      let mvarId := argMVars[i]
      if ← mvarId.isAssignedOrDelayedAssigned then
        continue
      if immediate.contains ⟨i⟩ then
        immediateMVars := immediateMVars.push mvarId
      else if binderInfos[i]!.isInstImplicit then
        instMVars := instMVars.push mvarId
    loop app instMVars immediateMVars 0 0 #[]
  where
    loop (app : Expr) (instMVars : Array MVarId) (immediateMVars : Array MVarId)
        (i : Nat) (currentMaxHypDepth : Nat) (currentUsedHyps : Array FVarId) :
        ForwardM Unit := do
      if h : immediateMVars.size > 0 ∧ i < immediateMVars.size then
        -- We go through the immediate mvars back to front. This is more
        -- efficient because assigning later mvars may already determine the
        -- assignments of earlier mvars.
        let mvarId := immediateMVars[immediateMVars.size - 1 - i]
        if ← mvarId.isAssignedOrDelayedAssigned then
          -- If the mvar is already assigned, we still need to update and check
          -- the hyp depth.
          let mut currentMaxHypDepth := currentMaxHypDepth
          let (_, fvarIds) ← (Expr.mvar mvarId).collectFVars |>.run {}
          for fvarId in fvarIds.fvarIds do
            let hypDepth := (← read).forwardHypData.depths.getD fvarId 0
            currentMaxHypDepth := max currentMaxHypDepth hypDepth
          if let some maxDepth := (← read).maxDepth? then
            if currentMaxHypDepth + 1 > maxDepth then
              return
          return ← loop app instMVars immediateMVars (i + 1) currentMaxHypDepth
                     currentUsedHyps
        let type ← mvarId.getType
        for ldecl in ← getLCtx do
          if ldecl.isImplementationDetail then
            continue
          let hypDepth := (← read).forwardHypData.depths.getD ldecl.fvarId 0
          let currentMaxHypDepth := max currentMaxHypDepth hypDepth
          if let some maxDepth := (← read).maxDepth? then
            if currentMaxHypDepth + 1 > maxDepth then
              continue
          let metaState ← show MetaM _ from saveState
          try
            if ← isDefEq ldecl.type type then
              mvarId.assign (mkFVar ldecl.fvarId)
              let currentUsedHyps := currentUsedHyps.push ldecl.fvarId
              loop app instMVars immediateMVars (i + 1)
                currentMaxHypDepth currentUsedHyps
          finally
            metaState.restore
      else
        try
          -- `synthAppInstances` uses the `binderInfos` to determine which
          -- mvars are instances, which in our case is all of them.
          let binderInfos := Array.replicate instMVars.size BinderInfo.instImplicit
          -- The `default` `MVarId` passed to `synthAppInstances` is only used
          -- to format the exception, which we immediately catch.
          synthAppInstances `aesop default (instMVars.map Expr.mvar) binderInfos
            (synthAssignedInstances := false) (allowSynthFailures := false)
        catch _ =>
          aesop_trace[forward] "instance synthesis failed"
          return
        let proof := (← abstractMVars app).expr
        let type ← inferType proof
        if ! (← isRedundant type) then
          let depth := currentMaxHypDepth + 1
          modify fun s => {
            toAssert := s.toAssert.push (proof, type, depth)
            usedHyps := s.usedHyps.insertMany currentUsedHyps
          }

    isRedundant (type : Expr) : ForwardM Bool := do
      (← get).toAssert.anyM (isDefEqReducibleRigid ·.1 type) <||>
      isHypRedundantReducibleRigid type

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd46daa1295aaeb2786c763dba00c8144d4124c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
