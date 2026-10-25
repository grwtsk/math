# processIndependentGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19ea90334461901f89133ccb9dac3027cc753bf90a1300efab1c4e29642b25db",
  "kind": "def",
  "lexical_name": "processIndependentGoals",
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
  "slug": "processindependentgoals--a43c63e44bdfbb2b5b77e1a3",
  "source": {
    "blob": "f24ffccd3a400670508c0dcd3d4384d08e244d04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a43c63e44bdfbb2b5b77e1a3bbe4182c78ebaf619f7767136b418d3b51e74eb9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19ea90334461901f89133ccb9dac3027cc753bf90a1300efab1c4e29642b25db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def processIndependentGoals (orig : List MVarId) (goals remaining : List MVarId) :
    MetaM (List MVarId) := do
  -- Partition the remaining goals into "independent" goals
  -- (which should be solvable without affecting the solvability of other goals)
  -- and all the others.
  let (igs, ogs) ← remaining.partitionM (MVarId.isIndependentOf goals)
  if igs.isEmpty then
    -- If there are no independent goals, we solve all the goals together via backtracking search.
    return (← run cfg trace next orig cfg.maxDepth remaining [])
  else
    withTraceNode trace
      (fun _ => return m!"independent goals {← ppMVarIds igs},"
        ++ m!" working on them before {← ppMVarIds ogs}") do
    -- Invoke `run` on each of the independent goals separately,
    -- gathering the subgoals on which `run` fails,
    -- and the new subgoals generated from goals on which it is successful.
    let (failed, newSubgoals') ← tryAllM igs fun g =>
      run cfg trace next orig cfg.maxDepth [g] []
    let newSubgoals := newSubgoals'.flatten
    withTraceNode trace
      (fun _ => return m!"failed: {← ppMVarIds failed}, new: {← ppMVarIds newSubgoals}") do
    -- Update the list of goals with respect to which we need to check independence.
    let goals' := (← goals.filterM (fun g => do pure !(← g.isAssigned))) ++ newSubgoals
    -- If `commitIndependentGoals` is `true`, we will return the new goals
    -- regardless of whether we can make further progress on the other goals.
    if cfg.commitIndependentGoals && !newSubgoals.isEmpty then
      return newSubgoals ++ failed ++ (← (processIndependentGoals orig goals' ogs <|> pure ogs))
    else if !failed.isEmpty then
      -- If `commitIndependentGoals` is `false`, and we failed on any of the independent goals,
      -- then overall failure is inevitable so we can stop here.
      failure
    else
      -- Finally, having solved this batch of independent goals,
      -- recurse (potentially now finding new independent goals).
      return newSubgoals ++ (← processIndependentGoals orig goals' ogs)

end Backtrack


/--
Attempts to solve the `goals`, by recursively calling `next` on each
subgoal that appears with a callback to reenter backtracking search.

Further flow control options are available via the `Config` argument.

Returns a list of subgoals which were "suspended" via the `suspend` or
`discharge` hooks in `Config`. In the default configuration, `backtrack`
will either return an empty list or fail.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtrack/Variant7a352f1c33ffab7bbeed99be605183a9d2904e7ab5c28f7fd06d82c44ad423ba.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24ffccd3a400670508c0dcd3d4384d08e244d04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
