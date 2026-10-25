# librarySearch'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:457a0573643adbc1193c8a3b8483502526353a2f987049120923de43ed4e8338",
  "kind": "def",
  "lexical_name": "librarySearch'",
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
  "slug": "librarysearch--941ae5aff36c64605c9c06c0",
  "source": {
    "blob": "b3d84ef9726b00b6f49899af6fc8be93b1623e6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 362,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:941ae5aff36c64605c9c06c05deb68e5784a163f17469fcae178b8057d947d31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:457a0573643adbc1193c8a3b8483502526353a2f987049120923de43ed4e8338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def librarySearch' (goal : MVarId)
    (tactic : List MVarId → MetaM (List MVarId))
    (allowFailure : MVarId → MetaM Bool)
    (leavePercentHeartbeats : Nat)
    (includeStar : Bool := true)
    (collectAll : Bool := false) :
    MetaM (Option (Array (List MVarId × MetavarContext))) := do
  withTraceNode `Tactic.librarySearch (fun _ => return m!"{← goal.getType}") do
  profileitM Exception "librarySearch" (← getOptions) do
    let cfg : ApplyConfig := { allowSynthFailures := true }
    let shouldAbort ← mkHeartbeatCheck leavePercentHeartbeats
    let act := fun cand => do
        if ←shouldAbort then
          abortSpeculation
        librarySearchLemma cfg tactic allowFailure cand
    -- First pass: search with droppedKeys (excludes star-indexed lemmas)
    let candidates ← librarySearchSymm libSearchFindDecls goal
    match ← tryOnEach act candidates collectAll with
    | none => return none  -- Found a complete solution (only when collectAll = false)
    | some results =>
      -- Only do star fallback if:
      -- 1. No complete solutions from primary search (when collectAll, check for empty remaining)
      -- 2. includeStar is true
      -- When collectAll = false, any result means we should skip star fallback (return partial).
      -- When collectAll = true, we continue to star lemmas unless we have a complete solution.
      let hasCompleteSolution := results.any (·.1.isEmpty)
      if hasCompleteSolution || (!collectAll && !results.isEmpty) || !includeStar then
        return some results
      -- Second pass: try star-indexed lemmas (those with [*] or [Eq,*,*,*] keys)
      -- No need for librarySearchSymm since getStarLemmas ignores the goal type
      let starLemmas ← getStarLemmas
      if starLemmas.isEmpty then return some results
      let mctx ← getMCtx
      let starCandidates := starLemmas.map ((goal, mctx), ·)
      match ← tryOnEach act starCandidates collectAll with
      | none => return none  -- Found complete solution from star lemmas
      | some starResults => return some (results ++ starResults)

/--
Tries to solve the goal by applying a library lemma
then calling `tactic` on the resulting goals.

Typically here `tactic` is `solveByElim`.

If it successfully closes the goal, returns `none` (unless `collectAll` is true).
Otherwise, it returns `some a`, where `a : Array (List MVarId × MetavarContext)`,
with an entry for each library lemma which was successfully applied,
containing a list of the subsidiary goals, and the metavariable context after the application.
When `collectAll` is true, complete solutions (with empty remaining goals) are also included
in the array instead of returning early.

(Always succeeds, and the metavariable context stored in the monad is reverted,
unless the goal was completely solved.)

(Note that if `solveByElim` solves some but not all subsidiary goals,
this is not currently tracked.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d84ef9726b00b6f49899af6fc8be93b1623e6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
