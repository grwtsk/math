# elabCheckTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44a0fd4a6b1300ad5a4c9b15561f099558e3a97b779f34a08a2caf18a9993944",
  "kind": "def",
  "lexical_name": "elabCheckTactic",
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
  "slug": "elabchecktactic--cbd1c283737f1f2a11a9de7e",
  "source": {
    "blob": "85d85202eb23e1f9367e588b98ca11ed47a60a72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant950849e0d469728d96fd5d03178f569314b7470a7f925d6b3155db8ccfe59e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbd1c283737f1f2a11a9de7e7487e345897d3f38a671d230a184269f681b7df9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant950849e0d469728d96fd5d03178f569314b7470a7f925d6b3155db8ccfe59e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44a0fd4a6b1300ad5a4c9b15561f099558e3a97b779f34a08a2caf18a9993944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCheckTactic : CommandElab := fun stx => do
  let `(#check_tactic $t ~> $result by $tac) := stx | throwUnsupportedSyntax
  withoutModifyingEnv $ do
    runTermElabM $ fun _vars => do
      let u ← withSynthesize (postpone := .no) <| Lean.Elab.Term.elabTerm t none
      let type ← inferType u
      let checkGoalType ← mkCheckGoalType u type
      let mvar ← mkFreshExprMVar (.some checkGoalType)
      let expTerm ← Lean.Elab.Term.elabTerm result (.some type)
      let (goals, _) ← Lean.Elab.runTactic mvar.mvarId! tac.raw
      match goals with
      | [] =>
        throwErrorAt stx
          m!"{tac} closed goal, but is expected to reduce to {indentExpr expTerm}."
      | [next] => do
        let (val, _, _) ← matchCheckGoalType stx (←next.getType)
        if !(← Meta.withReducible <| isDefEq val expTerm) then
          let (val, expTerm) ← addPPExplicitToExposeDiff val expTerm
          throwErrorAt stx
            m!"Term reduces to{indentExpr val}\nbut is expected to reduce to {indentExpr expTerm}"
      | _ => do
        throwErrorAt stx
          m!"{tac} produced multiple goals, but is expected to reduce to {indentExpr expTerm}."

@[builtin_command_elab Lean.Parser.checkTacticFailure]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant950849e0d469728d96fd5d03178f569314b7470a7f925d6b3155db8ccfe59e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant950849e0d469728d96fd5d03178f569314b7470a7f925d6b3155db8ccfe59e36.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d85202eb23e1f9367e588b98ca11ed47a60a72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
