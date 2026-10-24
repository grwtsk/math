# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NeuralNet.Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad4f6fd278d8b9d43c1bafa946304cc409c9a072",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad4f6fd278d8b9d43c1bafa946304cc409c9a072`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [layer1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/layer1--dace36a85ac538429e34985c.md) | 39 | `declaration-track:dace36a85ac538429e34985c34e596ec738eb2088491ca41f530cf08b2d2b7ab` |
| 2 | `def` | [layer2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/layer2--a9d4087ae1b56f4f02e75e1f.md) | 46 | `declaration-track:a9d4087ae1b56f4f02e75e1f2cf23b2c0b6658dd1a33a1f55bae16c92b9b7952` |
| 3 | `def` | [exampleNet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/examplenet--8eae3831320f1b371d0d53b0.md) | 51 | `declaration-track:8eae3831320f1b371d0d53b0a73dc940d29dbe7268b7c3b2b3be971b92e7ff84` |
| 4 | `theorem` | [layer1_wf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/layer1-wf--d1358fc419a58c92a1bd75ce.md) | 57 | `result-track:d1358fc419a58c92a1bd75cecf6144592a9e7f2d15550cb19eac85c6273a76ef` |
| 5 | `theorem` | [layer2_wf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/layer2-wf--d049db251070caa709e8020e.md) | 64 | `result-track:d049db251070caa709e8020ea2309d9fd5b9f9720347a31bd689a1e954140b95` |
| 6 | `theorem` | [exampleNet_wf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/examplenet-wf--d82abaaf27d5fbfe812d3b33.md) | 71 | `result-track:d82abaaf27d5fbfe812d3b33686a917c4523a42791eb661282f0098421f0bc48` |
| 7 | `def` | [intervalAround](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/intervalaround--a86301d40ae7f6aeec6562bd.md) | 82 | `declaration-track:a86301d40ae7f6aeec6562bde2004269566c9e94ed1565fb7fe1681547d7475f` |
| 8 | `def` | [inputRegion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/inputregion--1be7a1eed7697241ee240d41.md) | 87 | `declaration-track:1be7a1eed7697241ee240d417e62cc53b4910d2bde6222e24e84d5d8ead0782b` |
| 9 | `def` | [outputInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/outputinterval--68cbe92e8c793f4d1fe14252.md) | 93 | `declaration-track:68cbe92e8c793f4d1fe14252eda6f07e87dc097ecd4e9bbb52812d9e726de718` |
| 10 | `theorem` | [mem_intervalAround](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/mem-intervalaround--91de72780baa7626a44d266a.md) | 99 | `result-track:91de72780baa7626a44d266ab31dd0e377d9b2129c4022dc6e085dbb31e38f70` |
| 11 | `theorem` | [robustness_certificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NeuralNet/Variant6620b68775229ffaf241f26f9ead97c8facc4ce86ed86d47041631277a5a9ec1.lean/declarations/robustness-certificate--4223710b2b6da1398d96bdbf.md) | 123 | `result-track:4223710b2b6da1398d96bdbf8f7107a0875635fbaba8abb17aae0cc0db55f4a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
