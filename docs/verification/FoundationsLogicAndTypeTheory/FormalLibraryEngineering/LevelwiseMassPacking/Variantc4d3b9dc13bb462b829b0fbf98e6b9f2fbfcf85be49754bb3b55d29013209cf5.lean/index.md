# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelwiseMassPacking.Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5860cdc52a7f6e23e8dad4dc350e3ed1df8b9b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5860cdc52a7f6e23e8dad4dc350e3ed1df8b9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevelwiseCoefficientPartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/declarations/levelwisecoefficientpartition--dbc80bfe5b3a0af78be2d7c3.md) | 36 | `declaration-track:dbc80bfe5b3a0af78be2d7c31093b94a5cea76a72de379fd54a5c88aadb60ce6` |
| 2 | `def` | [LevelwiseCoefficientPartition.atDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/declarations/levelwisecoefficientpartition-atdepth--ba479087f0d42cc7218fe8ba.md) | 47 | `declaration-track:ba479087f0d42cc7218fe8baf81370bead36224b818382dbb8bea330c7633e7b` |
| 3 | `def` | [LevelwiseCoefficientPartition.nodeMass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/declarations/levelwisecoefficientpartition-nodemass--12f7776696e74edb0875ca56.md) | 63 | `declaration-track:12f7776696e74edb0875ca56137aedfe76dac6e35e9415786781259edeaebd57` |
| 4 | `theorem` | [LevelwiseCoefficientPartition.sum_nodeMass_le_parent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LevelwiseMassPacking/Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5.lean/declarations/levelwisecoefficientpartition-sum-nodemass-le-parent--18f24523266e70bdc668ee7c.md) | 76 | `result-track:18f24523266e70bdc668ee7ce05274b64f39e16abf7d769e263346721eca52a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
