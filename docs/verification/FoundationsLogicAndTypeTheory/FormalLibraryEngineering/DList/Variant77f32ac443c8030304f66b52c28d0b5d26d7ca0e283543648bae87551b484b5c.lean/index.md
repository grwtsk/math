# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DList.Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f48bb9a54672050539b2da2ff4df8d98271ac68",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f48bb9a54672050539b2da2ff4df8d98271ac68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/dlist--f4d4f0f017241f777269d73b.md) | 21 | `declaration-track:f4d4f0f017241f777269d73b69bd05ecac465791d8b4bd50f769c0bc1c22ea3a` |
| 2 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/oflist--dfe3227eb6e7ce140d123ff1.md) | 32 | `declaration-track:dfe3227eb6e7ce140d123ff148f547ba37d031128fd1464170e082e5139942bc` |
| 3 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/empty--40f803970190e3936e938554.md) | 36 | `declaration-track:40f803970190e3936e938554168cdeda2dbf397a526acc5876a4470e3c7a0818` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/instance--15289da21b5eee02c2cc96a5.md) | 39 | `declaration-track:15289da21b5eee02c2cc96a5ed08924b0587f02cc4134b8861506041c5acd2bc` |
| 5 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/tolist--fbebc83e7ce2835344335092.md) | 42 | `declaration-track:fbebc83e7ce2835344335092b6e3ef7da906065f1eaf0c272252f133d91cbf70` |
| 6 | `def` | [singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/singleton--451bbe47305974501f8ab2a3.md) | 46 | `declaration-track:451bbe47305974501f8ab2a31f91d5ad912b0379659150bdd81a13cf0f4f1720` |
| 7 | `def` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/cons--f0fd6fe794061d0b14f761cd.md) | 51 | `declaration-track:f0fd6fe794061d0b14f761cdd50a4c95e18cc6dff6d7a11a028f1ba1527637c4` |
| 8 | `def` | [append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/append--67b514bc5f36b4b5abc92ff7.md) | 58 | `declaration-track:67b514bc5f36b4b5abc92ff7082bebb369a516390ccf38c5789b94e9262eb6b7` |
| 9 | `def` | [push](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/push--cf15099edb37f20e7c0bd039.md) | 68 | `declaration-track:cf15099edb37f20e7c0bd039e3a61e4baf13a1a6db1609fed6f557054614f95e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DList/Variant77f32ac443c8030304f66b52c28d0b5d26d7ca0e283543648bae87551b484b5c.lean/declarations/instance--b8c0da17ffb281e54f5470ad.md) | 78 | `declaration-track:b8c0da17ffb281e54f5470ad06673ca427b3ec92da16b81c41320a9a50e919a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
