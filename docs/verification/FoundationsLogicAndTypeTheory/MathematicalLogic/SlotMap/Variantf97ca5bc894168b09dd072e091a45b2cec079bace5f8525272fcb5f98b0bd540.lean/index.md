# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SlotMap.Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf568c57a612479d2b3d188d56de22a3f8a8b41",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf568c57a612479d2b3d188d56de22a3f8a8b41`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ContractElements.BitSquare` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlotEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/slotembedding--ee34b9e2ed5c46635fb91cda.md) | 15 | `declaration-track:ee34b9e2ed5c46635fb91cdaf14efec3daf07b54399aacba1472625223a2ef63` |
| 2 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/encode-injective--f27c6e72e1d7b9ca5aa8f9b6.md) | 23 | `result-track:f27c6e72e1d7b9ca5aa8f9b682c12dbc31c312dae6c862684297216f71653350` |
| 3 | `def` | [pad](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/pad--d6cde9419fc43a30bd005913.md) | 30 | `declaration-track:d6cde9419fc43a30bd0059131d87186013f3564bf5eaceb0d12530bdb0533cb8` |
| 4 | `theorem` | [pad_on_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/pad-on-image--2441f9c6a0af3c4187d31e89.md) | 38 | `result-track:2441f9c6a0af3c4187d31e89a7a87aed169728ede7f11c9db6e7e6da6b09bd3f` |
| 5 | `theorem` | [pad_zero_of_row_unmapped](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/pad-zero-of-row-unmapped--898e7a7447387134b4e667c8.md) | 45 | `result-track:898e7a7447387134b4e667c824475a6d5ccdf447f8234f51f21997abef478723` |
| 6 | `theorem` | [pad_zero_of_column_unmapped](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SlotMap/Variantf97ca5bc894168b09dd072e091a45b2cec079bace5f8525272fcb5f98b0bd540.lean/declarations/pad-zero-of-column-unmapped--de72f4d200ee0d2f478c5885.md) | 53 | `result-track:de72f4d200ee0d2f478c5885275a8f0ba415b60db5681ea5412234b926879731` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
