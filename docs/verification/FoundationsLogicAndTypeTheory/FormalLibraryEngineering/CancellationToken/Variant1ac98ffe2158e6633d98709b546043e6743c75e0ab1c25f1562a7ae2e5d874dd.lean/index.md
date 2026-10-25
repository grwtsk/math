# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancellationToken.Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d37997ffa834fc738a57d880093be0edae4c4fc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d37997ffa834fc738a57d880093be0edae4c4fc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean.json)

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
| 1 | `inductive` | [CancellationReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancellationreason--8b540cc42a70e136e6964c6f.md) | 38 | `declaration-track:8b540cc42a70e136e6964c6f28d51bfb973423d8941849af3d184cd677554ba3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/instance--10900c5c5aa1218c9503de0a.md) | 60 | `declaration-track:10900c5c5aa1218c9503de0a21e206196e23b7e9b10bbfcececc615447e6d335` |
| 3 | `inductive` | [CancellationToken.Consumer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancellationtoken-consumer--f56b7c7cd244d6354c09c411.md) | 67 | `declaration-track:f56b7c7cd244d6354c09c411093be42b2bb7bb1b94ca55a0a0454f3d7af32d09` |
| 4 | `def` | [CancellationToken.Consumer.resolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancellationtoken-consumer-resolve--afbb656ba65779f52eda8543.md) | 71 | `declaration-track:afbb656ba65779f52eda854386a5d96b348590da85f292c48eb01607afdbc5a6` |
| 5 | `structure` | [CancellationToken.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancellationtoken-state--b810f36ce706b7fb78705e9b.md) | 86 | `declaration-track:b810f36ce706b7fb78705e9bcb882414c9f918c957940df0e522af5c5a9463e0` |
| 6 | `structure` | [CancellationToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancellationtoken--72873acf3ede7b52cd22e34b.md) | 101 | `declaration-track:72873acf3ede7b52cd22e34ba28e42eabe5d2e367bb9dc491916f71f62652031` |
| 7 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/new--47adff2b73e8c7200323ccc7.md) | 109 | `declaration-track:47adff2b73e8c7200323ccc7ef87112ea5e14baea6cca996bfad7a5b9e20ccf4` |
| 8 | `def` | [cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/cancel--6916d454a2ed5428ad50144e.md) | 116 | `declaration-track:6916d454a2ed5428ad50144e6f86daf64d26e9dd8a6d1f0a176fe1c966754109` |
| 9 | `def` | [isCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/iscancelled--641640228595d29a6a8696f8.md) | 138 | `declaration-track:641640228595d29a6a8696f83fca35a259cabad5f09bcb63978c93ea76895bd9` |
| 10 | `def` | [getCancellationReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/getcancellationreason--090f31bee5bfab9c9903db1e.md) | 146 | `declaration-track:090f31bee5bfab9c9903db1e316f59ca272313c940f18a8757104d0ba1fe434c` |
| 11 | `def` | [wait](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/wait--5c10c9a2ebf91e4f583963d2.md) | 154 | `declaration-track:5c10c9a2ebf91e4f583963d25b423c608538760edff15c42e710530695cfdc1f` |
| 12 | `def` | [selector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationToken/Variant1ac98ffe2158e6633d98709b546043e6743c75e0ab1c25f1562a7ae2e5d874dd.lean/declarations/selector--c0b2d717e17c9e36c6697916.md) | 172 | `declaration-track:c0b2d717e17c9e36c66979163ee4da1b45b9e8b038aa779cf2e64269f22f46e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
