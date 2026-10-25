# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b7ad686ebc183198bd74c97cfe4f69b5067ca4f6cc405546890dffe481b15a5",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--22dc1d970fd0c16ff5a3e66b",
  "source": {
    "blob": "1a0c05bc115d8f1b87da5b9915a028a8073476d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 520,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22dc1d970fd0c16ff5a3e66b1038fcdf996ce3cd16e82470330d92b2b052716d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b7ad686ebc183198bd74c97cfe4f69b5067ca4f6cc405546890dffe481b15a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| rel [$hyps,*]) => do
    let g ← getMainGoal
    g.withContext do
    let hyps ← hyps.getElems.mapM (elabTerm · none)
    let .app (.app _rel lhs) rhs ← withReducible g.getType'
      | throwError "rel failed, goal not a relation"
    unless ← isDefEq (← inferType lhs) (← inferType rhs) do
      throwError "rel failed, goal not a relation"
    -- The core tactic `Lean.MVarId.gcongr` will be run with main-goal discharger being the tactic
    -- consisting of running `Lean.MVarId.gcongrForward` (trying a term together with limited
    -- forward-reasoning on that term) on each of the listed terms.
    let assum g := g.gcongrForward hyps
    -- Time to actually run the core tactic `Lean.MVarId.gcongr`!
    let (_, _, unsolvedGoalStates) ← g.gcongr none [] (mainGoalDischarger := assum)
    match unsolvedGoalStates.toList with
    -- if all goals are solved, succeed!
    | [] => pure ()
    -- if not, fail and report the unsolved goals
    | unsolvedGoalStates => do
      let unsolvedGoals ← @List.mapM MetaM _ _ _ MVarId.getType unsolvedGoalStates
      let g := Lean.MessageData.joinSep (unsolvedGoals.map Lean.MessageData.ofExpr) Format.line
      throwError "rel failed, cannot prove goal by 'substituting' the listed relationships. \
        The steps which could not be automatically justified were:\n{g}"

end GCongr

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a0c05bc115d8f1b87da5b9915a028a8073476d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
