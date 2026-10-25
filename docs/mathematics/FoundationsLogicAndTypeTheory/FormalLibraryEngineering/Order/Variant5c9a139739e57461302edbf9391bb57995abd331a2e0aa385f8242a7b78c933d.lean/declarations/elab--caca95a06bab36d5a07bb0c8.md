# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba4cca4c74f40b0e89d108efc48dc56bfa5c2daaf890cf7f2a8ef52173517890",
  "kind": "elab",
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
  "slug": "elab--caca95a06bab36d5a07bb0c8",
  "source": {
    "blob": "9952fb17cf46af71f294509f86aac79b03b6506f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caca95a06bab36d5a07bb0c844c560f91ab2309a1963af5e4825241ffe2c4c9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba4cca4c74f40b0e89d108efc48dc56bfa5c2daaf890cf7f2a8ef52173517890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "order" : tactic => focus do
  let g ← getMainGoal
  let .some g ← g.falseOrByContra | return
  setGoals [g]
  let TypeToAtoms ← collectFacts g
  g.withContext do
  for (type, (idxToAtom, facts)) in TypeToAtoms do
    let .some orderType ← findBestOrderInstance type | continue
    let facts : Array AtomicFact ← match orderType with
    | .pre => preprocessFactsPreorder g facts
    | .part => preprocessFactsPartial g facts
    | .lin => preprocessFactsLinear g facts
    let mut graph ← Graph.constructLeGraph idxToAtom.size facts
    graph ← updateGraphWithNlt graph idxToAtom facts
    if orderType == .pre then
      let .some pf ← findContradictionWithNle graph idxToAtom facts | continue
      g.assign pf
      return
    else
      let .some pf ← findContradictionWithNe graph idxToAtom facts | continue
      g.assign pf
      return
  throwError "No contradiction found"

end Mathlib.Tactic.Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant5c9a139739e57461302edbf9391bb57995abd331a2e0aa385f8242a7b78c933d.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9952fb17cf46af71f294509f86aac79b03b6506f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
