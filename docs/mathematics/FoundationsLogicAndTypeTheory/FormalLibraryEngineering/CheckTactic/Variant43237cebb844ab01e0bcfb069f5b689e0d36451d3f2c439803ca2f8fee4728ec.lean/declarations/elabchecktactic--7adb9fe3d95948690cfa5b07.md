# elabCheckTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a18b8265cd53ab47aba977b06d0b1cd47d47c1922ff6b90827cd54f1d3a905ca",
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
  "slug": "elabchecktactic--7adb9fe3d95948690cfa5b07",
  "source": {
    "blob": "0ed4849ab7ea0338c50ad1d95c1b037cdb0dba9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant43237cebb844ab01e0bcfb069f5b689e0d36451d3f2c439803ca2f8fee4728ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7adb9fe3d95948690cfa5b0792d87ef9e6bf343bbaa0efd52dd079043834f06c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant43237cebb844ab01e0bcfb069f5b689e0d36451d3f2c439803ca2f8fee4728ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a18b8265cd53ab47aba977b06d0b1cd47d47c1922ff6b90827cd54f1d3a905ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant43237cebb844ab01e0bcfb069f5b689e0d36451d3f2c439803ca2f8fee4728ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant43237cebb844ab01e0bcfb069f5b689e0d36451d3f2c439803ca2f8fee4728ec.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed4849ab7ea0338c50ad1d95c1b037cdb0dba9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
