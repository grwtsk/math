# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Estimator.Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee055d529760c4af8c73ffa748ad2f9857e2e46b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee055d529760c4af8c73ffa748ad2f9857e2e46b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.EditDistance.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevenshteinEstimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/levenshteinestimator--60e13308de81e30317779901.md) | 49 | `declaration-track:60e13308de81e303177799015b431bba46b396b070eb85a761f96e9c507b69b5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/instance--6f2c19e39065997f4886b565.md) | 68 | `declaration-track:6f2c19e39065997f4886b56589ed38fb9ac658234697aac312ad58ffe52520ed` |
| 3 | `instance` | [estimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/estimator--239f01bcf0151c2638a99273.md) | 82 | `declaration-track:239f01bcf0151c2638a9927322e035da6a2950faf30f0d5d9edd8bc72bcc8710` |
| 4 | `def` | [LevenshteinEstimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/levenshteinestimator--f1bab8fb6c4fd5fa3b9c9d55.md) | 136 | `declaration-track:f1bab8fb6c4fd5fa3b9c9d55f782e1e2d80a14f8751fc75a1de3d186a86da486` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/instance--8ffb7420c9f07d32013daaa7.md) | 139 | `declaration-track:8ffb7420c9f07d32013daaa7b7cb76f76c633a87e212ad224743c6c8b0a5822e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant71d1d420a54472af1fc4746dddf5e7921058eb7eee74dbd094c4405ba0c90ffd.lean/declarations/instance--8f69e87b2c15700bfcd1008b.md) | 144 | `declaration-track:8f69e87b2c15700bfcd1008b886148ef8f6652c9e600d22bbaa1d012772dbf99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
