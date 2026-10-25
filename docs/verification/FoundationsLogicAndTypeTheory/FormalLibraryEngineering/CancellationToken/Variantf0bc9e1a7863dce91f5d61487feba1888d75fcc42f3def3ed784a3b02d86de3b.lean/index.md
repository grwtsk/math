# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellationToken.Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91952b697561a1a8080ec6e11124dab03980fbc6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91952b697561a1a8080ec6e11124dab03980fbc6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean.json)

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
| 1 | `inductive` | [CancellationReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancellationreason--646f8aa564bad89877c7b571.md) | 30 | `declaration-track:646f8aa564bad89877c7b57177cd4d1c045e832cb4d8b2c67ff3af60eb931685` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/instance--7b02dab589935c765e012b71.md) | 52 | `declaration-track:7b02dab589935c765e012b7171a30097d6d3c3ec344c54b4c33d230b648180d1` |
| 3 | `inductive` | [CancellationToken.Consumer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancellationtoken-consumer--26b4ed8f2898632d14ac3471.md) | 59 | `declaration-track:26b4ed8f2898632d14ac347179e02ab99103a6db00b6f0e5e7ebd10c2e4f5cf3` |
| 4 | `def` | [CancellationToken.Consumer.resolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancellationtoken-consumer-resolve--a26d9f912e1da3e9efd3d3c8.md) | 63 | `declaration-track:a26d9f912e1da3e9efd3d3c8424f8e620a2692564a6fb9b88ba93fb3cb52016c` |
| 5 | `structure` | [CancellationToken.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancellationtoken-state--63f7f6babc0c6280a62d6adb.md) | 78 | `declaration-track:63f7f6babc0c6280a62d6adbd57e633bcd711a9f3ce03f0cd21e639d1723ec12` |
| 6 | `structure` | [CancellationToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancellationtoken--28166d5e182b18a151c49117.md) | 93 | `declaration-track:28166d5e182b18a151c49117a7801f036d8e050af5a686d312692bf4735a5706` |
| 7 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/new--d403fc7649ca629e6ea9b02e.md) | 101 | `declaration-track:d403fc7649ca629e6ea9b02efc726e9231e818cf89beba8a89896490b6bee08a` |
| 8 | `def` | [cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/cancel--8d1bf156551bbb5c51172e41.md) | 108 | `declaration-track:8d1bf156551bbb5c51172e4128b5920a1db3c1f8fd67711d775213ed07c6ca81` |
| 9 | `def` | [isCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/iscancelled--09bf09cd3efdee897c16f481.md) | 130 | `declaration-track:09bf09cd3efdee897c16f481349faa164c2d618982bc9ac0fc6cc0adc36256e7` |
| 10 | `def` | [getCancellationReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/getcancellationreason--09067337fe701b4ac0d2aea4.md) | 138 | `declaration-track:09067337fe701b4ac0d2aea407bf16a2bc3cc285935d8375a266af602bcd876b` |
| 11 | `def` | [wait](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/wait--e1b1910cec6fc2f7f1419d46.md) | 146 | `declaration-track:e1b1910cec6fc2f7f1419d46eb3b01345bcd68a28cd6cf510f1c2e4342c2c7c8` |
| 12 | `def` | [selector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variantf0bc9e1a7863dce91f5d61487feba1888d75fcc42f3def3ed784a3b02d86de3b.lean/declarations/selector--159a176d072666eda0b18c45.md) | 164 | `declaration-track:159a176d072666eda0b18c4507e36b1faf7f2bfeaeb3953b1f969f1cf112914f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
