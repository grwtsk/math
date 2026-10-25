# Mathlib.TacticAnalysis.terminalToGrind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc2bebf569481315da5d86f36444926e06b756e9fae13aade3894dce2b020169",
  "kind": "def",
  "lexical_name": "Mathlib.TacticAnalysis.terminalToGrind",
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
  "slug": "mathlib-tacticanalysis-terminaltogrind--c3a1724dc53759a8542e3c03",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3a1724dc53759a8542e3c03b02379e43151fa6e8ab7c167276cf36d04ca6901",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc2bebf569481315da5d86f36444926e06b756e9fae13aade3894dce2b020169`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Mathlib.TacticAnalysis.terminalToGrind : TacticAnalysis.Config where
  run seq := do
    let threshold := 3
    -- `replaced` will hold the terminal tactic sequence that can be replaced with `grind`.
    -- We prepend each tactic in turn, starting with the last.
    let mut replaced : List (TSyntax `tactic) := []
    let mut success := false
    let mut oldHeartbeats := 0
    let mut newHeartbeats := 0
    -- We iterate through the tactic sequence in reverse, checking at each tactic if the goal is
    -- already solved by `grind` and if so pushing that tactic onto `replaced`.
    -- By repeating this until `grind` fails for the first time, we get a terminal sequence
    -- of replaceable tactics.
    for i in seq.reverse do
      if replaced.length >= threshold - 1 && i.tacI.stx.getKind != ``Lean.Parser.Tactic.grind then
        if let [goal] := i.tacI.goalsBefore then
          -- Count the heartbeats of the original tactic sequence, verifying that this indeed
          -- closes the goal like it does in userspace.
          let suffix := ⟨i.tacI.stx⟩ :: replaced
          let seq ← `(tactic| $suffix.toArray;*)
          let (oldGoals, heartbeats) ← withHeartbeats <|
            try
              i.runTacticCode goal seq
            catch _e =>
              pure [goal]
          if !oldGoals.isEmpty then
            logWarningAt i.tacI.stx m!"Original tactics failed to solve the goal: {seq}"
          oldHeartbeats := heartbeats

          -- To check if `grind` can close the goal, run `grind` on the current goal
          -- and verify that no goals remain afterwards.
          let tac ← `(tactic| grind)
          let (newGoals, heartbeats) ← withHeartbeats <|
            try
              i.runTacticCode goal tac
            catch _e =>
              pure [goal]
          newHeartbeats := heartbeats
          if newGoals.isEmpty then
            success := true
          else
            break
        else
          break
      replaced := ⟨i.tacI.stx⟩ :: replaced

    if h : replaced.length >= threshold ∧ success then
      let stx := replaced[0]
      let seq ← `(tactic| $replaced.toArray;*)
      logWarningAt stx m!"replace the proof with 'grind': {seq}"
      if oldHeartbeats * 2 < newHeartbeats then
        logWarningAt stx m!"'grind' is slower than the original: {oldHeartbeats} -> {newHeartbeats}"

open Elab.Command

/--
When running the "tryAtEachStep" tactic analysis linters,
only run on a fraction `1/n` of the goals found in the library.

This is useful for running quick benchmarks.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
