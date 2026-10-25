# solveDecreasingGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:698fe62c819ab6ccef8ed717b9b1c92f2ce79eb5866ce7b3cef1e1eb0016c865",
  "kind": "def",
  "lexical_name": "solveDecreasingGoals",
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
  "slug": "solvedecreasinggoals--47f98fca58b398f3ce96754a",
  "source": {
    "blob": "21aa83fd323f9a3d86ab7141429a8685d10abc0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47f98fca58b398f3ce96754a7f638838ec49adc7310b7594b1d7accc55387e39",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:698fe62c819ab6ccef8ed717b9b1c92f2ce79eb5866ce7b3cef1e1eb0016c865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solveDecreasingGoals (funNames : Array Name) (argsPacker : ArgsPacker) (decrTactics : Array (Option DecreasingBy)) (value : Expr) : MetaM Expr :=
  -- entering proof
  withoutExporting do
  let goals ← getMVarsNoDelayed value
  let goals ← assignSubsumed goals
  let goalss ← groupGoalsByFunction argsPacker decrTactics.size goals
  for funName in funNames, goals in goalss, decrTactic? in decrTactics do
    Lean.Elab.Term.TermElabM.run' do
    Term.withDeclName funName do
      match decrTactic? with
      | none => do
        for goal in goals do
          let type ← goal.getType
          let some ref := getRecAppSyntax? (← goal.getType)
            | throwError "MVar not annotated as a recursive call:{indentExpr type}"
          goal.setType type.mdataExpr!
          withRef ref <| applyDefaultDecrTactic goal
      | some decrTactic => withRef decrTactic.ref do
        goals.forM fun goal => do goal.setType (← goal.getType).mdataExpr!
        unless goals.isEmpty do -- unlikely to be empty
          -- make info from `runTactic` available
          goals.forM fun goal => pushInfoTree (.hole goal)
          let remainingGoals ← Tactic.run goals[0]! do
            Tactic.setGoals goals.toList
            applyCleanWfTactic
            Tactic.withTacticInfoContext decrTactic.ref do
              Tactic.evalTactic decrTactic.tactic
          unless remainingGoals.isEmpty do
            Term.reportUnsolvedGoals remainingGoals
  instantiateMVars value

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fix/Variant4b4bbab7245c1185f5971be4a632240acb69dcb8623fe829d545550268f55c94.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21aa83fd323f9a3d86ab7141429a8685d10abc0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
