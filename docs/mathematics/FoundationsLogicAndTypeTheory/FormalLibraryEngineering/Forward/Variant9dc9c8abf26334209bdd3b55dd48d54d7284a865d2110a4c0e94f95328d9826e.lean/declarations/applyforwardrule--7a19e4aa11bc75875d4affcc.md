# applyForwardRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6922f41e71e6e277e5473024155422e4070dcb58412ded3a1d50d52f4a4ceff",
  "kind": "def",
  "lexical_name": "applyForwardRule",
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
  "slug": "applyforwardrule--7a19e4aa11bc75875d4affcc",
  "source": {
    "blob": "6cd46daa1295aaeb2786c763dba00c8144d4124c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a19e4aa11bc75875d4affcc7e453471dddd031c9beabfa22f5026a9346cc26c",
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

Occurrence: `declaration:b6922f41e71e6e277e5473024155422e4070dcb58412ded3a1d50d52f4a4ceff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyForwardRule (goal : MVarId) (e : Expr)
    (patSubsts? : Option (Array Substitution))
    (immediate : UnorderedArraySet PremiseIndex) (clear : Bool)
    (maxDepth? : Option Nat) :
    ScriptM Subgoal :=
  withReducible do goal.withContext do
    let initialGoal := goal
    let (_, { toAssert, usedHyps }) ←
      makeForwardHypProofs' e patSubsts? immediate
        |>.run { maxDepth?, forwardHypData := ← getForwardHypData } |>.run {}
    if toAssert.isEmpty then
      throwError "found no instances of {e} (other than possibly those which had been previously added by forward rules)"
    let mut goal := goal
    let mut addedFVars := ∅
    let userNames ← getUnusedUserNames toAssert.size forwardHypPrefix
    for (value, type, depth) in toAssert, userName in userNames do
      let (fvarId, mvarId) ← assertForwardHyp goal { userName, type, value } depth
      goal := mvarId
      addedFVars := addedFVars.insert fvarId
    let mut diff := {
      oldGoal := initialGoal
      newGoal := goal
      removedFVars := ∅
      targetChanged := false
      addedFVars
    }
    if clear then
      let usedPropHyps ← goal.withContext do
        usedHyps.toArray.filterM λ fvarId => isProof (.fvar fvarId)
      let (goal', removedFVars) ← tryClearManyS goal usedPropHyps
      let removedFVars := removedFVars.foldl (init := ∅) λ set fvarId =>
        set.insert fvarId
      goal := goal'
      diff := { diff with newGoal := goal, removedFVars }
    return { diff }

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Forward/Variant9dc9c8abf26334209bdd3b55dd48d54d7284a865d2110a4c0e94f95328d9826e.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cd46daa1295aaeb2786c763dba00c8144d4124c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
