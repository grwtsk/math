# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeightMultiplicativity.Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c6a39744962a60b6164cc95949d2797b7657306",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c6a39744962a60b6164cc95949d2797b7657306`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [posWeightReal_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/declarations/posweightreal-of-pos--91dc7ed0b19a8af46229936f.md) | 21 | `result-track:91dc7ed0b19a8af46229936f32ecb15a6a5c757f9bf6de27bbb17d2d717c283b` |
| 2 | `theorem` | [posWeightComplex_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/declarations/posweightcomplex-of-pos--5e6b3172bb7c9034b988b80f.md) | 28 | `result-track:5e6b3172bb7c9034b988b80ff6d9d8cb200f5283a4e86bf1aa4ca0e5b005ec76` |
| 3 | `theorem` | [posWeightReal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/declarations/posweightreal-mul--3c95bf1daac46b8e887899b5.md) | 36 | `result-track:3c95bf1daac46b8e887899b537d6ea4b997eefc5cf506d1abf9052f3a92c7b95` |
| 4 | `theorem` | [posWeightComplex_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant646fa4c0898dad3ec1ed0aa23d2324725e1c602e5b9eabc00774cd876e2535ee.lean/declarations/posweightcomplex-mul--ae71fb9be99e8e5a41d891d4.md) | 47 | `result-track:ae71fb9be99e8e5a41d891d4d59c200d66551682125bd4f9871b00e5ee2edcc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
