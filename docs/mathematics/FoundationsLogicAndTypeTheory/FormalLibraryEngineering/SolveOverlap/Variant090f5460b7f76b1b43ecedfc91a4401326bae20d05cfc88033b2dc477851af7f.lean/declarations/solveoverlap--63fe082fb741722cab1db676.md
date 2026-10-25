# solveOverlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c84f5e77e18c5993779b30198638236269f174fc3870ec9f1494fa3c4fbe5255",
  "kind": "def",
  "lexical_name": "solveOverlap",
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
  "slug": "solveoverlap--63fe082fb741722cab1db676",
  "source": {
    "blob": "673c42a67f36e86257dfc35abfd1cff741373ad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63fe082fb741722cab1db67626112bac5ac40c8cd785a927fe646f771618b891",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c84f5e77e18c5993779b30198638236269f174fc3870ec9f1494fa3c4fbe5255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def solveOverlap (mvarId : MVarId) : MetaM Unit := do
    trace[Meta.Match.matchEqs] "solveOverlap {mkMVar mvarId}, {repr (← mvarId.getDecl).kind}\n{indentD mvarId}"
    let (_, mvarId) ← mvarId.intros
    loop mvarId {}
where
  /-
  `forbidden` tracks variables that we have already applied `injection`.
  Recall that the `injection` tactic may not be able to eliminate them when
  they have forward dependencies.
  -/
  loop (mvarId : MVarId) (forbidden : FVarIdSet) : MetaM Unit := do
    trace[Meta.Match.matchEqs] "proveSubgoalLoop\n{mvarId}"
    if (← mvarId.contradictionQuick) then
      return ()
    match (← injectionAny mvarId forbidden) with
    | .solved => return ()
    | .failed =>
      let mvarId' ← substVars mvarId
      if mvarId' == mvarId then
        if (← mvarId.contradictionCore {}) then
          return ()
        throwError "failed to solve overlap assumption, unsolved subgoal{indentD mvarId}"
      else
        loop mvarId' forbidden
    | .subgoal fvarId mvarId => loop mvarId (forbidden.insert fvarId)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673c42a67f36e86257dfc35abfd1cff741373ad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
