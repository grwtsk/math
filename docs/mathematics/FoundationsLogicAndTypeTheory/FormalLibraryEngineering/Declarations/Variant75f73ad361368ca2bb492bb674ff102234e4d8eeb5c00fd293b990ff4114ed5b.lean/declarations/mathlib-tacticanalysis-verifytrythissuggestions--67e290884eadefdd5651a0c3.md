# Mathlib.TacticAnalysis.verifyTryThisSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02acf5e6c9f7cd5a559565090d19b1c378648d220d0289fe40f8da049b0b6c37",
  "kind": "def",
  "lexical_name": "Mathlib.TacticAnalysis.verifyTryThisSuggestions",
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
  "slug": "mathlib-tacticanalysis-verifytrythissuggestions--67e290884eadefdd5651a0c3",
  "source": {
    "blob": "713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 642,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67e290884eadefdd5651a0c39b8629cdf5252ddf898ed56f8c525d9e2f66fe7c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02acf5e6c9f7cd5a559565090d19b1c378648d220d0289fe40f8da049b0b6c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Mathlib.TacticAnalysis.verifyTryThisSuggestions
    (tac : Syntax → MVarId → CommandElabM (Option (TSyntax `tactic)))
    (label : String) : TacticAnalysis.Config where
  run seq := do
    let opts ← getOptions
    let fraction := linter.tacticAnalysis.tryAtEachStep.fraction.get opts
    for i in seq do
      if let [goal] := i.tacI.goalsBefore then
        let goalDecl := i.tacI.mctxBefore.decls.find! goal
        let goalPP ← i.ctxI.runMetaM goalDecl.lctx do
          withOptions (·.setBool `pp.mvars.anonymous false) do
            return toString (← Meta.ppGoal goal)
        if (hash goalPP) % fraction = 0 then
          if let some tac ← tac i.tacI.stx goal then
          -- Save message state to suppress "Try this:" info messages from grind?
          let savedMessages := (← get).messages
          -- Run tactic and capture InfoTree
          let (goalsAfter, trees) ← try
            i.runTacticCodeCapturingInfoTree goal tac
          catch _e =>
            continue  -- Tactic failed, nothing to verify
          finally
            -- Restore messages (discard info messages from grind?)
            modify fun s => { s with messages := savedMessages }

          -- Only verify if tactic succeeded (closed goal)
          if !goalsAfter.isEmpty then continue

          -- Extract suggestions from InfoTree
          let suggestions := Elab.collectTryThisSuggestions trees
          for s in suggestions do
            -- Parse suggestion to syntax
            let suggestedTac ← try
              parseSuggestionToTactic s
            catch e =>
              logWarningAt i.tacI.stx m!"`{label}` produced unparseable suggestion: {e.toMessageData}"
              continue

            -- Skip empty interactive mode suggestions (just `grind => {}` with no body).
            -- These are intermediate suggestions that aren't meant to be used standalone.
            -- Syntax structure: grind[0]="grind" [1]=optConfig [2]=only? [3]=params? [4]=(=> grindSeq)?
            -- When [4].getNumArgs == 2: [4][0]="=>" [4][1]=grindSeq
            -- grindSeq[0] is grindSeqBracketed: { content }, empty when content.getNumArgs == 0
            if suggestedTac.raw.getKind == ``Lean.Parser.Tactic.grind then
              if suggestedTac.raw[4]!.getNumArgs == 2 then
                if suggestedTac.raw[4]![1]![0]![1]!.getNumArgs == 0 then
                  continue

            -- Skip suggestions containing hexcode anchors (e.g., #962a, #8ef1)
            -- These are proof-context-specific references that aren't valid in a fresh goal
            if suggestedTac.raw.find? (·.isOfKind ``Lean.Parser.Tactic.anchor) |>.isSome then
              continue

            -- Skip suggestions containing `approx` - these are incomplete approximations
            if suggestedTac.raw.find? (fun stx => stx.isOfKind ``Lean.Parser.Tactic.Grind.instantiate &&
              (stx.find? (·.getAtomVal == "approx")).isSome) |>.isSome
            then
              continue

            -- Verify suggestion works
            let verifyGoals ← try
              i.runTacticCode goal suggestedTac
            catch _e =>
              pure [goal]  -- Treat exception as failure

            if !verifyGoals.isEmpty then
              logWarningAt i.tacI.stx
                m!"`{label}` suggestion failed: `{suggestedTac}` did not close the goal"

/-- Verify that `grind?` suggestions actually work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
