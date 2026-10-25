# evalRecCall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c6e0307b78a70bc24d6e5b2077a05a7296b24c191f31cc6f261f63795902450",
  "kind": "def",
  "lexical_name": "evalRecCall",
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
  "slug": "evalreccall--723cb6d3b6a9095ad3dd0a76",
  "source": {
    "blob": "d7e8f582f2bcabce625f8ec04c422992da61f27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:723cb6d3b6a9095ad3dd0a7669d837e1bb4990312bca5cb93553a8636b55734f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c6e0307b78a70bc24d6e5b2077a05a7296b24c191f31cc6f261f63795902450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalRecCall (callerName: Name) (decrTactic? : Option DecreasingBy) (callerMeasures calleeMeasures : Array BasicMeasure)
  (rcc : RecCallWithContext) (callerMeasureIdx calleeMeasureIdx : Nat) : MetaM GuessLexRel := do
  rcc.ctxt.run do
    let callerMeasure := callerMeasures[callerMeasureIdx]!
    let calleeMeasure := calleeMeasures[calleeMeasureIdx]!
    let param := callerMeasure.natFn.beta rcc.params
    let arg := calleeMeasure.natFn.beta rcc.args
    trace[Elab.definition.wf] "inspectRecCall: {rcc.caller} ({param}) → {rcc.callee} ({arg})"
    for rel in [GuessLexRel.eq, .lt, .le] do
      let goalExpr := mkAppN rel.toNatRel #[arg, param]
      trace[Elab.definition.wf] "Goal for {rel}: {goalExpr}"
      check goalExpr

      let mvar ← mkFreshExprSyntheticOpaqueMVar goalExpr
      let mvarId := mvar.mvarId!
      let mvarId ← mvarId.cleanup
      try
        if rel = .eq then
          MVarId.refl mvarId
        else do
          Lean.Elab.Term.TermElabM.run' do Term.withDeclName callerName do
            Term.withoutErrToSorry do
              let remainingGoals ← Tactic.run mvarId do Tactic.withoutRecover do
                applyCleanWfTactic
                let tacticStx : Syntax ←
                  match decrTactic? with
                  | none => pure (← `(tactic| decreasing_tactic)).raw
                  | some decrTactic =>
                    trace[Elab.definition.wf] "Using tactic {decrTactic.tactic.raw}"
                    pure decrTactic.tactic.raw
                Tactic.evalTactic tacticStx
              remainingGoals.forM fun _ => throwError "goal not solved"
        trace[Elab.definition.wf] "inspectRecCall: success!"
        return rel
      catch e =>
        trace[Elab.definition.wf] "Did not find {rel} proof. Goal:{goalsToMessageData [mvarId]}\nError:{indentD e.toMessageData}"
        continue
    return .no_idea

/-- A cache for `evalRecCall` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e8f582f2bcabce625f8ec04c422992da61f27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
