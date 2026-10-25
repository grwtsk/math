# Mathlib.TacticAnalysis.tryAtEachStepCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c14e64a44d7d88f71b69cfafe0899ed466eecd67ad555124a8598bc9d6060683",
  "kind": "def",
  "lexical_name": "Mathlib.TacticAnalysis.tryAtEachStepCore",
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
  "slug": "mathlib-tacticanalysis-tryateachstepcore--c6a31e36e13d18ac2241e488",
  "source": {
    "blob": "7a3ca29a2dba64302076428151b82ea4878868ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a31e36e13d18ac2241e4884c704545b7cb835564c49ee004e5e3f0fa59224c",
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

Occurrence: `declaration:c14e64a44d7d88f71b69cfafe0899ed466eecd67ad555124a8598bc9d6060683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Mathlib.TacticAnalysis.tryAtEachStepCore
    (tac : Syntax → MVarId → CommandElabM (TSyntax `tactic))
    (label : Option String := none) : TacticAnalysis.Config where
  run seq := do
    let opts ← getOptions
    let fraction := linter.tacticAnalysis.tryAtEachStep.fraction.get opts
    let showTiming := linter.tacticAnalysis.tryAtEachStep.showTiming.get opts
    let selfReplacements := linter.tacticAnalysis.tryAtEachStep.selfReplacements.get opts
    for h : idx in [:seq.size] do
      let i := seq[idx]
      if let [goal] := i.tacI.goalsBefore then
        -- Hash the pretty-printed goal for stability across runs
        let goalDecl := i.tacI.mctxBefore.decls.find! goal
        let goalPP ← i.ctxI.runMetaM goalDecl.lctx do
          withOptions (·.setBool `pp.mvars false) do
            return toString (← Meta.ppGoal goal)
        if (hash goalPP) % fraction = 0 then
          let tac ← tac i.tacI.stx goal
          let startTime ← IO.monoMsNow
          let goalsAfter ← try
            i.runTacticCode goal tac
          catch _e =>
            pure [goal]
          let elapsedMs := (← IO.monoMsNow) - startTime
          if goalsAfter.isEmpty then
            -- Extract just the tactic name, ignoring trailing comments/whitespace
            -- Use try/catch because ppTactic can fail on certain syntax (e.g., `congr($h x)`)
            let oldTacticPP := (← try
              pure (((← liftCoreM <| PrettyPrinter.ppTactic ⟨i.tacI.stx⟩).pretty.splitOn "\n")[0]!.trimAscii)
            catch _ =>
              pure (i.tacI.stx.reprint.getD "???"))
            let newTacticPP ← label.getDM (try
              return ((← liftCoreM <| PrettyPrinter.ppTactic tac).pretty.splitOn "\n")[0]!.trimAscii.copy
            catch _ =>
              return tac.raw.reprint.getD "???")
            -- Check if this is a self-replacement (tactic replacing itself)
            if !selfReplacements && oldTacticPP == newTacticPP then
              continue
            let laterSteps := seq.size - 1 - idx
            let laterMsg := if laterSteps > 0 then s!" (+{laterSteps} later steps)" else ""
            if showTiming then
              logInfoAt i.tacI.stx m!"`{oldTacticPP}`{laterMsg} can be replaced with `{newTacticPP}` ({elapsedMs}ms)"
            else
              logInfoAt i.tacI.stx m!"`{oldTacticPP}`{laterMsg} can be replaced with `{newTacticPP}`"

/-- Run a tactic at each proof step. See `tryAtEachStepCore` for details. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant6ecef2745890ccf46aef8425fe8ae442faba687dc30e8f9490495a4825e09128.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3ca29a2dba64302076428151b82ea4878868ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
