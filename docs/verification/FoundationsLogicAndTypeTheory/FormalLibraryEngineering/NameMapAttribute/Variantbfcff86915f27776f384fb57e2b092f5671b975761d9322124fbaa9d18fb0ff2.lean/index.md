# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NameMapAttribute.Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c712fee309ef19842a6ce4116af11f4ef7860957",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c712fee309ef19842a6ce4116af11f4ef7860957`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Attributes` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NameMapExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/namemapextension--5536492207b0a6bfced4c772.md) | 19 | `declaration-track:5536492207b0a6bfced4c772f998b2efcaa00cce77e4bb3d10c71a87d549e14f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/instance--0256787233f3c85ffd12c7eb.md) | 21 | `declaration-track:0256787233f3c85ffd12c7eb36673e666c132f20482cdf6a8161c06c1ceee5b4` |
| 3 | `def` | [NameMapExtension.find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/namemapextension-find--aac62f39cc7f19979462d8f1.md) | 25 | `declaration-track:aac62f39cc7f19979462d8f1958f4c8cf0658e48a5497b086b2c0ece7dc01a75` |
| 4 | `def` | [NameMapExtension.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/namemapextension-add--e9756622b8fa42061c537f0a.md) | 29 | `declaration-track:e9756622b8fa42061c537f0a68fde8bce38e1c768e8855f7726223e30d95ffff` |
| 5 | `def` | [registerNameMapExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/registernamemapextension--d34b5da3797c236ee2a08caf.md) | 37 | `declaration-track:d34b5da3797c236ee2a08caff53ffab3edc91e20a0e59125543fd3f5127d5b7b` |
| 6 | `structure` | [NameMapAttributeImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/namemapattributeimpl--50498763cba3d1a708dc46f6.md) | 49 | `declaration-track:50498763cba3d1a708dc46f643e51bd6178966fcfef15bb63c95f63d7c8c2c03` |
| 7 | `def` | [registerNameMapAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameMapAttribute/Variantbfcff86915f27776f384fb57e2b092f5671b975761d9322124fbaa9d18fb0ff2.lean/declarations/registernamemapattribute--be86c4e91bbaee143ace8297.md) | 63 | `declaration-track:be86c4e91bbaee143ace8297fc55279e12dd8cde20915f9f383452a3cf1ed7bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
