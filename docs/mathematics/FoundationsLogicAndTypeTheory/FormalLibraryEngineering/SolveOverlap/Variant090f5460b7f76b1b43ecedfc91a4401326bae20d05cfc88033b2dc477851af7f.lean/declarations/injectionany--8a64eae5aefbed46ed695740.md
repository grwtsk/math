# injectionAny

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63da1d3131abd478eee6ab9daec72e9489a32a84bb38b352c913fcddb6731da0",
  "kind": "def",
  "lexical_name": "injectionAny",
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
  "slug": "injectionany--8a64eae5aefbed46ed695740",
  "source": {
    "blob": "673c42a67f36e86257dfc35abfd1cff741373ad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a64eae5aefbed46ed695740c2a0b848faa9e154d2a1f16cbd4495e63e182635",
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

Occurrence: `declaration:63da1d3131abd478eee6ab9daec72e9489a32a84bb38b352c913fcddb6731da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def injectionAny (mvarId : MVarId) (forbidden : FVarIdSet := {}) : MetaM InjectionAnyResult := do
  mvarId.withContext do
    for localDecl in (← getLCtx) do
      unless forbidden.contains localDecl.fvarId do
        if let some (lhs, rhs) ← injectionAnyCandidate? localDecl.type then
          unless (← isDefEq lhs rhs) do
            let lhs ← whnf lhs
            let rhs ← whnf rhs
            unless lhs.isRawNatLit && rhs.isRawNatLit do
              try
                match (← injection mvarId localDecl.fvarId) with
                | InjectionResult.solved  => return InjectionAnyResult.solved
                | InjectionResult.subgoal mvarId .. => return InjectionAnyResult.subgoal localDecl.fvarId mvarId
              catch ex =>
                trace[Meta.Match.matchEqs] "injectionAnyFailed at {localDecl.userName}, error\n{ex.toMessageData}"
                pure ()
    return InjectionAnyResult.failed


/--
Solves the overlap assumptions expected by the alternative of a splitter
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveOverlap/Variant090f5460b7f76b1b43ecedfc91a4401326bae20d05cfc88033b2dc477851af7f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673c42a67f36e86257dfc35abfd1cff741373ad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
