# terminalReplacement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d35158fe833ea20c99f26dbb1cef3c3d839dfd935df3e2deb249b666331ce1f",
  "kind": "def",
  "lexical_name": "terminalReplacement",
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
  "slug": "terminalreplacement--412d888e9397e315b8e266db",
  "source": {
    "blob": "713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:412d888e9397e315b8e266dba3a92a19596fe40fbf79be522a59ef0c9eea40f9",
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

Occurrence: `declaration:2d35158fe833ea20c99f26dbb1cef3c3d839dfd935df3e2deb249b666331ce1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def terminalReplacement (oldTacticName newTacticName : String) (oldTacticKind : SyntaxNodeKind)
    (newTactic : ContextInfo → TacticInfo → Syntax → CommandElabM (TSyntax `tactic))
    (reportFailure : Bool := true) (reportSuccess : Bool := false)
    (reportSlowdown : Bool := false) (maxSlowdown : Float := 1) :
    TacticAnalysis.Config := .ofComplex {
  out := TerminalReplacementOutcome
  ctx := Syntax
  trigger _ stx := if stx.getKind == oldTacticKind
    then .accept stx else .skip
  test ctxI i stx goal := do
    let tac ← newTactic ctxI i stx
    try
      let goalTypes ← ctxI.runTacticCode i goal tac ⟨Expr, MVarId.getType'⟩
      match goalTypes with
      | [] => return .success tac
      | _ => do
        let goalsMessages := goalTypes.map fun e => m!"⊢ {MessageData.ofExpr e}\n"
        return .remainingGoals tac goalsMessages
    catch _e =>
      let name ← mkAuxDeclName `extracted
      -- Rerun in the original tactic context, since `omega` changes the state.
      let ((sig, _, modules, _), _) ← ctxI.runTactic i goal (fun goal =>
        (Mathlib.Tactic.ExtractGoal.goalSignature name goal).run)
      let imports := modules.toList.map (s!"import {·}")
      return .error tac m!"{"\n".intercalate imports}\n\ntheorem {sig} := by\n  fail_if_success {tac}\n  {stx}"
  tell stx old oldHeartbeats new newHeartbeats :=
    -- If the original tactic failed, then we do not need to check the replacement.
    if !old.isEmpty then
      return none
    else match new with
    | .error _ msg =>
      if reportFailure then
        let msg :=
          m!"`{newTacticName}` failed where `{oldTacticName}` succeeded.\n" ++
          m!"Original tactic:{indentD stx}\n" ++
          m!"Counterexample:{indentD msg}"
        return msg
      else
        return none
    | .remainingGoals newStx goals =>
      if reportFailure then
        let msg :=
          m!"`{newTacticName}` left unsolved goals where `{oldTacticName}` succeeded.\n" ++
          m!"Original tactic:{indentD stx}\n" ++
          m!"Replacement tactic:{indentD newStx}\n" ++
          m!"Unsolved goals:{indentD goals}"
        return msg
      else
        return none
    | .success newStx => do
      -- TODO: we should add a "Try this:" suggestion with code action.
      let msg := if (← liftCoreM <| PrettyPrinter.ppTactic newStx).pretty = newTacticName then
        m!"`{newTacticName}` can replace `{stx}`"
      else
        m!"`{newTacticName}` can replace `{stx}` using `{newStx}`"
      if reportSlowdown ∧ maxSlowdown * oldHeartbeats.toFloat < newHeartbeats.toFloat then
        return some m!"{msg}, but is slower: {newHeartbeats / 1000} versus {oldHeartbeats / 1000} heartbeats"
      else if reportSuccess then
        return some msg
      else
        return none
    }


/-- Convert a term syntax to a grindParam syntax (wrapping in grindLemma).
If the term is a simple identifier (like `pi_pos`), wrap it in an explicit application
`(id pi_pos)` so grind treats it as a term rather than an e-matching theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declarations/Variant75f73ad361368ca2bb492bb674ff102234e4d8eeb5c00fd293b990ff4114ed5b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713f0aa2648dfc66b1982bdd9e5d8897bf8dc93a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
