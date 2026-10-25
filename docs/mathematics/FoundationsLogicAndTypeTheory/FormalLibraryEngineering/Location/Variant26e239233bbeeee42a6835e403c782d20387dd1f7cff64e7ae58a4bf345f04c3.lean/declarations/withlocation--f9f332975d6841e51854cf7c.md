# withLocation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:189d3fb5edd864be31cb2c72ef7a225c9e1559ed9c14fefbc95cae6ced162318",
  "kind": "def",
  "lexical_name": "withLocation",
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
  "slug": "withlocation--f9f332975d6841e51854cf7c",
  "source": {
    "blob": "695a471d8bbf0339fd5edceda3fab5fc3de93223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9f332975d6841e51854cf7cedba43cfb2c59d2bb1db1e9874180373f585dcba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:189d3fb5edd864be31cb2c72ef7a225c9e1559ed9c14fefbc95cae6ced162318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withLocation (loc : Location) (atLocal : FVarId → TacticM Unit) (atTarget : TacticM Unit) (failed : MVarId → TacticM Unit) : TacticM Unit := do
  match loc with
  | Location.targets hyps type =>
    hyps.forM fun hyp => withMainContext do
      let fvarId ← getFVarId hyp
      atLocal fvarId
    if type then
      withMainContext atTarget
  | Location.wildcard =>
    let worked ← tryTactic <| withSaveInfoContext <| withMainContext <| atTarget
    let g ← try getMainGoal catch _ => return () -- atTarget closed the goal
    g.withContext do
      let mut worked := worked
      -- We must traverse backwards because the given `atLocal` may use the revert/intro idiom
      for fvarId in (← getLCtx).getFVarIds.reverse do
        if (← fvarId.getDecl).isImplementationDetail then
          continue
        worked := worked || (← tryTactic <| withSaveInfoContext <| withMainContext <| atLocal fvarId)
      unless worked do
        failed (← getMainGoal)

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Location/Variant26e239233bbeeee42a6835e403c782d20387dd1f7cff64e7ae58a4bf345f04c3.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695a471d8bbf0339fd5edceda3fab5fc3de93223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
