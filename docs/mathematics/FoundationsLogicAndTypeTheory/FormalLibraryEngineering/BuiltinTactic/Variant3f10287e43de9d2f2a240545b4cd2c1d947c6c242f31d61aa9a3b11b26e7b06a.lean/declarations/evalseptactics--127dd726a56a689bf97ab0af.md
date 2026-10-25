# evalSepTactics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50523e846678f5f78c759393b418635d3c4262cd61a240c80291224978a666bf",
  "kind": "def",
  "lexical_name": "evalSepTactics",
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
  "slug": "evalseptactics--127dd726a56a689bf97ab0af",
  "source": {
    "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:127dd726a56a689bf97ab0afa10c0278c55de676349c06255f6565e3e36124c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50523e846678f5f78c759393b418635d3c4262cd61a240c80291224978a666bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalSepTactics : Tactic := goEven
where
  -- `stx[0]` is the next tactic step, if any
  goEven stx := do
    if stx.getNumArgs == 0 then
      -- No more tactic steps, but if the parent still passed us a tactic snapshot
      -- bundle (e.g. for an empty `by` body) we must resolve its promise so that
      -- consumers walking the snapshot tree (like the language-server info-tree
      -- lookup) don't block waiting on a promise nothing else will resolve.
      if let some snap := (← readThe Term.Context).tacSnap? then
        snap.new.resolve default
      return
    let untrimmedTac := stx[0]
    -- Use trimmed syntax for reuse so appending whitespace doesn't break it
    let tac := untrimmedTac.unsetTrailing
    /-
    Each `goEven` step creates three promises under incrementality and reuses their older versions
    where possible:
    * `finished` is resolved when `tac` finishes execution; if `tac` is wholly unchanged from the
      previous version, its state is reused and `tac` execution is skipped. Note that this promise
      is never turned into a `SnapshotTask` and added to the snapshot tree as incremental reporting
      is already covered by the next two promises.
    * `inner` is passed to `tac` if it is marked as supporting incrementality and can be used for
      reporting and partial reuse inside of it; if the tactic is unsupported or `finished` is wholly
      reused, it is ignored.
    * `next` is used as the context when invoking `goOdd` and thus eventually used for the next
      `goEven` step. Thus, the incremental state of a tactic script is ultimately represented as a
      chain of `next` snapshots. Its reuse is disabled if `tac` or its following separator are
      changed in any way.
    -/
    let mut oldInner? := none
    if let some snap := (← readThe Term.Context).tacSnap? then
      if let some old := snap.old? then
        let oldParsed := old.val.get
        -- (access to `raw` is correct here as this value is passed into the reuse context)
        oldInner? := oldParsed.transformed.raw.inner? |>.map (⟨oldParsed.transformed.raw.stx, ·⟩)
    -- compare (trimmed) `tac` for `finished`/`next` reuse, focus on remainder of script
    Term.withNarrowedTacticReuse (stx := stx) (fun stx => (stx[0].unsetTrailing, mkNullNode stx.getArgs[1...*])) fun stxs => do
      let some snap := (← readThe Term.Context).tacSnap?
        -- NOTE: make sure to use `untrimmedTac` in this non-incremental case since there is no
        -- reuse opportunity anyway and we skip the whitespace save below
        | do evalTactic untrimmedTac; goOdd stxs
      let mut reusableResult? := none
      let mut oldNext? := none
      if let some old := snap.old? then
        -- `tac` must be unchanged given the narrow above; let's reuse `finished`'s state!
        -- (access to `raw`: as above)
        let oldParsed := old.val.get.transformed.raw
        if let some state := oldParsed.finished.get.state? then
          reusableResult? := some ((), state)
          -- only allow `next` reuse in this case
          oldNext? := old.val.get.next[0]?.map (⟨old.stx, ·⟩)

      let next ← IO.Promise.new
      let finished ← IO.Promise.new
      let inner ← IO.Promise.new
      let cancelTk? := (← readThe Core.Context).cancelTk?
      snap.new.resolve {
        transformed.transform.addTrailing := untrimmedTac.getTrailing?.getD default
        transformed.raw := {
          desc := tac.getKind.toString
          diagnostics := .empty
          stx := tac
          inner? := some { stx? := tac, task := inner.resultD default, cancelTk? }
          finished := {
            stx? := tac, task := finished.resultD default, cancelTk?
            -- Do not report range as it is identical to `inner?`'s and should not cover up
            -- incremental reporting done in the latter.
            reportingRange := .skip
          }
        }
        next := #[{
          stx? := stxs, task := next.resultD default, cancelTk?
          -- Do not fall back to `inherit` if there are no more tactics as that would cover up
          -- incremental reporting done in `inner?`. Do use default range in all other cases so that
          -- reporting ranges are properly nested.
          reportingRange :=
            if stxs.getNumArgs == 0 then .skip else SnapshotTask.defaultReportingRange stxs
        }]
      }
      -- Run `tac` in a fresh info tree state and store resulting state in snapshot for
      -- incremental reporting, then add back saved trees. Here we rely on `evalTactic`
      -- producing at most one info tree as otherwise `getInfoTreeWithContext?` would panic.
      let trees ← getResetInfoTrees
      try
        let (_, state) ← withRestoreOrSaveFull reusableResult?
            -- set up nested reuse; `evalTactic` will check for `isIncrementalElab`
            (tacSnap? := some { old? := oldInner?, new := inner }) do
          Term.withReuseContext tac do
            evalTactic tac
        finished.resolve {
          diagnostics := (← Language.Snapshot.Diagnostics.ofMessageLog
            (← Core.getAndEmptyMessageLog))
          infoTree? := (← Term.getInfoTreeWithContext?)
          state? := state
          moreSnaps := (← Core.getAndEmptySnapshotTasks)
        }
      finally
        -- New trees are not guarded by a transformation here so add back trailing eagerly. Unlikely
        -- to be a bottleneck but could be optimized by adding a transformation node to `InfoTree`.
        let trailing := untrimmedTac.getTrailing?.getD default
        modifyInfoState fun s => { s with trees := trees ++ s.trees.map (·.addTrailing trailing) }

      withTheReader Term.Context ({ · with tacSnap? := some {
        new := next
        old? := oldNext?
      } }) do
        goOdd stxs
  -- `stx[0]` is the next separator, if any
  goOdd stx := do
    if stx.getNumArgs == 0 then
      return
    saveTacticInfoForToken stx[0] -- add `TacticInfo` node for `;`
    -- disable further reuse on separator change as to not reuse wrong `TacticInfo`
    Term.withNarrowedTacticReuse (fun stx => (stx[0], mkNullNode stx.getArgs[1...*])) goEven stx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
