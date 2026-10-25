# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeuralNet.Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bcde774f77fa552baca76f32ae110f88b3e1155",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bcde774f77fa552baca76f32ae110f88b3e1155`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [layer1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/layer1--410a8da64b12a5449d8090a7.md) | 21 | `declaration-track:410a8da64b12a5449d8090a751c5d0b4bdbed21604cb1c06b0222bc7b9902704` |
| 2 | `def` | [layer2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/layer2--e10aadf11fbd8859fd5372ad.md) | 26 | `declaration-track:e10aadf11fbd8859fd5372adff1f0a140c48ee033f1383655f1f0ac82b692a82` |
| 3 | `def` | [simpleNet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/simplenet--1d425168e67690e050758999.md) | 30 | `declaration-track:1d425168e67690e0507589996a582429e362d579c7ab9d6f06b42ee0634ae306` |
| 4 | `theorem` | [layer1_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/layer1-wf--c380ab94e11e14186be07ae9.md) | 36 | `result-track:c380ab94e11e14186be07ae99e06135d6cc87581eb1d85c053e1632383914809` |
| 5 | `theorem` | [layer2_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/layer2-wf--62a3a200bf713f593d653164.md) | 43 | `result-track:62a3a200bf713f593d653164a1d6b59b69aa593027e4ba29545d16e60f79fc6d` |
| 6 | `theorem` | [simpleNet_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/simplenet-wf--76d5b34517429d2d363990a1.md) | 50 | `result-track:76d5b34517429d2d363990a1830d0501e8c81092e36872ea9a856ac19436725a` |
| 7 | `def` | [inputRegion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/inputregion--967c40f33691d483f95df83d.md) | 60 | `declaration-track:967c40f33691d483f95df83d8f5e7946b59f46448918c692624ca32b8aa21bef` |
| 8 | `def` | [outputBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/declarations/outputbounds--742e04088d07c72fec3cf093.md) | 66 | `declaration-track:742e04088d07c72fec3cf09365b01f51420a8249ad08ea7d3ba7ff9084acdac3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
