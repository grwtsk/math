# mkChainResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7968196ffcee25607445c06eba02d5166a744e73b6ff192dbf11c68b15ccf9a3",
  "kind": "def",
  "lexical_name": "mkChainResult",
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
  "slug": "mkchainresult--e231e31f1cc83e666fead150",
  "source": {
    "blob": "7d5de50f96ef6c968206149dcfb89e64150fe400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e231e31f1cc83e666fead15082635bda86e886d64543a527d3116e2a20866b1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7968196ffcee25607445c06eba02d5166a744e73b6ff192dbf11c68b15ccf9a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def mkChainResult (tac1 : TSyntax `tactic) (tacss2 : Array (TSyntax `tactic)) : TryTacticM (TSyntax `tactic) := do
  let tacss2 := tacss2.map getSuggestionsCore
  if (← isTracingEnabledFor `try.debug) then
    trace[try.debug] "mkChainResultCore tac1{indentD tac1}"
    let mut i : Nat := 0
    for tacs2 in tacss2 do
      i := i + 1
      trace[try.debug] "goal #{i} tactics"
      for tac2 in tacs2 do
        trace[try.debug] "  {tac2}"
    trace[try.debug] "mkChainResult -----"
  let mut acc := #[]
  let solvedAll := getTacsSolvedAll tacss2
  -- Give preference to tactics that solved all subgoals
  for tac2 in solvedAll do
    acc := acc.push (← `(tactic| $tac1 <;> $tac2))
  /-
  We claim mixed solutions using tactics in `solvedAll` are suboptimal, and should not be considered
  Example: if `grind` solved all subgoals, we should not propose a solution such as
  ```
  induction x
  · rfl
  · grind
  ```
  -/
  let tacss2 := eraseTacs tacss2 solvedAll
  trace[try.debug.chain] "kinds: {getKindsSolvedAll tacss2}"
  let kinds := getKindsSolvedAll tacss2
  -- Give preference to tactics of the same kind that solved all subgoals
  for k in kinds do
    (_, acc) ← go tacss2 0 [] (some k) |>.run acc
  -- Remove tactics with kind in `kinds`. Again, we claim mixed kind solutions are suboptimal.
  let tacss2 := tacss2.map fun s => s.filter fun tac => !kinds.contains tac.raw.getKind
  if (!acc.isEmpty && tacss2.all fun s => !s.isEmpty)
     -- We only include partial solutions if there are no other solutions.
     || (acc.isEmpty && tacss2.any fun s => !s.isEmpty) then
    (_, acc) ← go tacss2 0 [] none |>.run acc
  mkTrySuggestions acc
where
  go (tacss2 : Array (Array (TSyntax `tactic))) (i : Nat) (acc : List (TSyntax `tactic)) (kind? : Option SyntaxNodeKind) : StateT (Array (TSyntax `tactic)) TryTacticM Unit := do
    if (← get).size > (← read).config.max then
      return ()
    else if h : i < tacss2.size then
      if tacss2[i].isEmpty then
        go tacss2 (i+1) ((← `(tactic| sorry)) :: acc) kind?
      else
        for tac in tacss2[i] do
          if let some kind := kind? then
            if tac.raw.getKind == kind then
              go tacss2 (i+1) (tac :: acc) kind?
          else
            go tacss2 (i+1) (tac :: acc) kind?
    else
      let tacs2 := acc.toArray.reverse
      if kind?.isSome && isOnlyAndNonOnly tacs2 then
        -- Suboptimal combination. See comment at `isOnlyAndNonOnly`
        return ()
      let tac ← if let some tac2 ← mergeAll? tacs2 then
        -- TODO: when merging tactics, there is a possibility the compressed version will not work.
        -- TODO: if this is a big issue in practice, we should "replay" the tactic here.
        `(tactic| $tac1:tactic <;> $tac2:tactic)
      else
        let tacs2 ← tacs2.mapM fun tac2 => `(tactic| · $tac2:tactic)
        `(tactic| · $tac1:tactic
                    $tacs2*)
      modify (·.push tac)

@[builtin_try_tactic Lean.Parser.Tactic.grindTrace]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5de50f96ef6c968206149dcfb89e64150fe400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
