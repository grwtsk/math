# admitted_of_structural_wires

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f921f3a-2098-8c87-e3b5-cc668900021e",
  "kind": "theorem",
  "lexical_name": "admitted_of_structural_wires",
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
  "slug": "admitted-of-structural-wires--f01a8fa5f41f05985a8f61c8",
  "source": {
    "blob": "6e5713d2a73b06ea8bbb1308938c4bbec1060d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservationStructuralWire.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01a8fa5f41f05985a8f61c8de5c65b5aecadc768e515ef555298aba0b807492",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservationStructuralWire.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f921f3a-2098-8c87-e3b5-cc668900021e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admitted_of_structural_wires
    {before after : ObservationState} {observation : Observation}
    {sourceTrees : List NatTree} {version : Nat} {historyTrees : List NatTree}
    (operation : observation.operation = recordObservationTag)
    (sources : before.sources.map sourceWire = sourceTrees)
    (versionEq : before.version = version)
    (history : before.history.map eventWire = historyTrees)
    (afterWire :
      stateWire after =
        .array [
          .array sourceTrees,
          metadataWire observation.metadata,
          .atom (version + 1),
          .array (historyTrees ++ [eventWire observation.event])
        ]) :
    Admitted before observation after := by
  apply admitted_of_stateWire operation
  rw [afterWire,
    stateWire_recordObservation_of_components before observation sources versionEq history]

/-- The structural admission still supplies the actual mathematical
`ResearchState.Change.observe` edge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservationStructuralWire.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservationStructuralWire.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5713d2a73b06ea8bbb1308938c4bbec1060d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
