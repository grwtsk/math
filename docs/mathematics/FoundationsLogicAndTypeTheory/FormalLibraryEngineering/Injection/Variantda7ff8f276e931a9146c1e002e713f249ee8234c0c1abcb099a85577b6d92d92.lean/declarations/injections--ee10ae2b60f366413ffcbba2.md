# injections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8016a90b3d9555bc5f4a2be97904197718a76afa0fb16a332a178657baef2462",
  "kind": "def",
  "lexical_name": "injections",
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
  "slug": "injections--ee10ae2b60f366413ffcbba2",
  "source": {
    "blob": "6e6241b42d7b14fccc333a66aca3c0a90eb8e289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee10ae2b60f366413ffcbba2bbeadb171e88907cfb9b8f3d6ed26c37af62a1d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8016a90b3d9555bc5f4a2be97904197718a76afa0fb16a332a178657baef2462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def injections (mvarId : MVarId) (newNames : List Name := []) (maxDepth : Nat := 5) (forbidden : FVarIdSet := {}) : MetaM InjectionsResult :=
  mvarId.withContext do
    let fvarIds := (← getLCtx).getFVarIds
    go maxDepth fvarIds.toList mvarId newNames forbidden
where
  go (depth : Nat) (fvarIds : List FVarId) (mvarId : MVarId) (newNames : List Name) (forbidden : FVarIdSet) : MetaM InjectionsResult := do
    match depth, fvarIds with
    | 0,   _                 => throwTacticEx `injections mvarId "recursion depth exceeded"
    | _,   []                => return .subgoal mvarId newNames forbidden
    | d+1, fvarId :: fvarIds => do
      let cont := do
        go (d+1) fvarIds mvarId newNames forbidden
      if forbidden.contains fvarId then
        cont
      else if let some (_, lhs, rhs) ← matchEqHEq? (← fvarId.getType) then
        let lhs ← whnf lhs
        let rhs ← whnf rhs
        if lhs.isRawNatLit && rhs.isRawNatLit then
          cont
        else
          try
            commitIfNoEx do
              match (← injection mvarId fvarId newNames) with
              | .solved  => return .solved
              | .subgoal mvarId newEqs remainingNames =>
                mvarId.withContext <| go d (newEqs.toList ++ fvarIds) mvarId remainingNames (forbidden.insert fvarId)
          catch _ => cont
      else cont

end Lean.Meta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6241b42d7b14fccc333a66aca3c0a90eb8e289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
