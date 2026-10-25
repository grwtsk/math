# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrdinalIndex.Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f12ebe5ab21a673f8192eb47b57624f647dce5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f12ebe5ab21a673f8192eb47b57624f647dce5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Frontier.LocalRank` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Syntax` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StratifiedFrontierIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/declarations/stratifiedfrontierindex--7a4866c254eca08b967e78d7.md) | 12 | `declaration-track:7a4866c254eca08b967e78d712df0ed53a8b40b854d0325502d29a8a32de30cc` |
| 2 | `def` | [finiteFrontierIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/declarations/finitefrontierindex--67f4cacc9e1e0ef27db98434.md) | 18 | `declaration-track:67f4cacc9e1e0ef27db98434ee19daff491f9112c0023dbc3eaa1643427fbb2d` |
| 3 | `theorem` | [stratified_frontier_index_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/declarations/stratified-frontier-index-injective--b69e37975c89531d73c83bb6.md) | 28 | `result-track:b69e37975c89531d73c83bb671a29b630510ec605f5f3da2978f45197b1db1c6` |
| 4 | `structure` | [IndexedPersistentLineage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/OrdinalIndex/Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496.lean/declarations/indexedpersistentlineage--adf31c66aeb63176c5c1ce32.md) | 39 | `declaration-track:adf31c66aeb63176c5c1ce325e02a2e8e1436265234181408fd29f7bad9fd863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
