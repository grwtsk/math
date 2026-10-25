# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cancellable.Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8520668dd2079be2e5e490b183c50601787fea3e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8520668dd2079be2e5e490b183c50601787fea3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean.json)

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
| 1 | `abbrev` | [RequestId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/requestid--370fd6a45fafd24f408aa94d.md) | 20 | `declaration-track:370fd6a45fafd24f408aa94df85cecfaf0bc9f4ef1cd2e0bb9e15183993595f6` |
| 2 | `structure` | [CancellableTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/cancellabletask--fb692bcd3d4e953f7218ac93.md) | 21 | `declaration-track:fb692bcd3d4e953f7218ac937795f254249a9a809f03bc0ccd27fe6d4bd677a8` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/initialize--45d58dbe47489b98aa0a8179.md) | 28 | `declaration-track:45d58dbe47489b98aa0a817940a10a6f288d1b3d9c3a7cbb1a77cb5e7c61269f` |
| 4 | `def` | [mkCancellable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/mkcancellable--ef97dba1cc1e98e2d196cf37.md) | 38 | `declaration-track:ef97dba1cc1e98e2d196cf373325469bb4613659bfa2c507f7a6c575c5a7ce59` |
| 5 | `def` | [cancelRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/cancelrequest--616befee8ab619757d9bdda1.md) | 49 | `declaration-track:616befee8ab619757d9bdda110ce7895990ca204b929d387ff1de43725ce585e` |
| 6 | `inductive` | [CheckRequestResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/checkrequestresponse--7944075b859d5cc27136c19d.md) | 56 | `declaration-track:7944075b859d5cc27136c19d8fb6b615bf7c0880abde6bb8c864357cb80cdf04` |
| 7 | `def` | [checkRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/checkrequest--e0d0866e4a6b896d0c759084.md) | 71 | `declaration-track:e0d0866e4a6b896d0c7590842d62791b4adb9b95ccd9aeb91de457f113df6f9c` |
| 8 | `def` | [cancellableSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/cancellablesuffix--f03e410a60c7eeb9ccad60a5.md) | 86 | `declaration-track:f03e410a60c7eeb9ccad60a5fbc61da539c18c4067a32975bea2165847640756` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantc5403e8b2bc1fe9803d9046dedd5271ce305e1bbf14bea521aeea77eb08d4b07.lean/declarations/initialize--3b5db648187be543a1c193a6.md) | 92 | `declaration-track:3b5db648187be543a1c193a66dc4a718c52be36e6a6450592105900d37f97b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
