# evalCalc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:757c1024a4ea7ba71a432a43a577c17955e0df8f68921902c98d1444d7450dd2",
  "kind": "def",
  "lexical_name": "evalCalc",
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
  "slug": "evalcalc--c81d5ea70c2a6a2dc938cc9d",
  "source": {
    "blob": "aa7aeb1601f5ce88d689343939843e255e1f08fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c81d5ea70c2a6a2dc938cc9d777bda569883d03d4145c1dfc7f5b79ed38c5db5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:757c1024a4ea7ba71a432a43a577c17955e0df8f68921902c98d1444d7450dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalCalc : Tactic
  | `(tactic| calc%$tk $steps:calcSteps) =>
    withRef tk do
    closeMainGoalUsing `calc (checkNewUnassigned := false) fun target tag => do
    withTacticInfoContext steps do
      let steps ← Term.mkCalcStepViews steps
      let target := (← instantiateMVars target).consumeMData
      let (val, mvarIds) ← withCollectingNewGoalsFrom (parentTag := tag) (tagSuffix := `calc) <| runTermElab do
        let (val, valType) ← Term.elabCalcSteps steps
        if (← isDefEq valType target) then
          -- Immediately the right type, no need for further processing.
          return val

        let some (_, lhs, rhs) ← Term.getCalcRelation? valType | unreachable!
        if let some (er, elhs, erhs) ← Term.getCalcRelation? target then
          -- Feature: if the goal is `x ~ y`, try extending the `calc` with `_ ~ y` with a new "last step" goal.
          if ← isDefEq lhs elhs <&&> isDefEq (← inferType rhs) (← inferType elhs) then
            let lastStep := mkApp2 er rhs erhs
            let lastStepGoal ← mkFreshExprSyntheticOpaqueMVar lastStep (tag := tag ++ `calc.step)
            try
              let (val', valType') ← Term.mkCalcTrans val valType lastStepGoal lastStep
              if (← isDefEq valType' target) then
                return val'
            catch _ =>
              pure ()

        -- Calc extension failed, so let's go back and mimic the `calc` expression
        Term.ensureHasTypeWithErrorMsgs target val
          (mkImmedErrorMsg := fun _ => Term.throwCalcFailure steps)
          (mkErrorMsg := fun _ => Term.throwCalcFailure steps)
      pushGoals mvarIds
      return val
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7aeb1601f5ce88d689343939843e255e1f08fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
