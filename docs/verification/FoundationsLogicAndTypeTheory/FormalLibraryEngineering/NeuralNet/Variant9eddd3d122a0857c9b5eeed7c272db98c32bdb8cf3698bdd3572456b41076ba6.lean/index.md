# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NeuralNet.Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "282ac29488bbc2e6710f5f53e16e20cc89900ac3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `282ac29488bbc2e6710f5f53e16e20cc89900ac3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean.json)

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
| 1 | `def` | [layer1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/layer1--4f5856fa03eb45aacf827d5d.md) | 29 | `declaration-track:4f5856fa03eb45aacf827d5dd1fba6990774fc2a744ce382a435498d3eb03eb2` |
| 2 | `def` | [layer2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/layer2--b8be03e7954ad4d56a003492.md) | 34 | `declaration-track:b8be03e7954ad4d56a00349204c14945aab27e4dd5b260dc847d14fa10d24537` |
| 3 | `def` | [simpleNet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/simplenet--250cdfa9e40ed971778a2c01.md) | 38 | `declaration-track:250cdfa9e40ed971778a2c0154f658418fa4ef44860be8ffcc27f8faa7c52248` |
| 4 | `theorem` | [layer1_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/layer1-wf--56b9b6c3901864ffc98838c9.md) | 44 | `result-track:56b9b6c3901864ffc98838c999da314d5e883e98e883b8bbca3870ee410d52f8` |
| 5 | `theorem` | [layer2_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/layer2-wf--edecf60076b31b9492f91a63.md) | 51 | `result-track:edecf60076b31b9492f91a633da3d2b63d77be9b2dad884a64c847b7129c7c9f` |
| 6 | `theorem` | [simpleNet_wf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/simplenet-wf--42b0a78de3039e3300c952b7.md) | 58 | `result-track:42b0a78de3039e3300c952b776817273a0e15581edda3b237c61639208cb2638` |
| 7 | `def` | [inputRegion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/inputregion--59de8de0282afa78b1b46ead.md) | 68 | `declaration-track:59de8de0282afa78b1b46ead35ef049b02eaa1e24eb1f4f9dc698ae0f731bd92` |
| 8 | `def` | [outputBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variant9eddd3d122a0857c9b5eeed7c272db98c32bdb8cf3698bdd3572456b41076ba6.lean/declarations/outputbounds--ed2a508f2e6636c49e0c0334.md) | 74 | `declaration-track:ed2a508f2e6636c49e0c0334ae1774e0140e2a2db2c87773ef80caf9929e6507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
