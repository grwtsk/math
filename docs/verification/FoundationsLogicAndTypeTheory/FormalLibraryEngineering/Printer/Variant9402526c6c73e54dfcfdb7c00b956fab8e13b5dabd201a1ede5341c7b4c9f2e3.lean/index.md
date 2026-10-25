# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Printer.Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d70bc85224d5672b43bb4fabc32b2d84c2ff8800",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d70bc85224d5672b43bb4fabc32b2d84c2ff8800`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [escapeTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/escapetable--2140a24d19b52d7e3089ae8d.md) | 24 | `declaration-track:2140a24d19b52d7e3089ae8d02829043308bc3bad05ef161703ae0dc3ed73b1b` |
| 2 | `def` | [escapeAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/escapeaux--aeffc54b49cdb625d66ff5fa.md) | 36 | `declaration-track:aeffc54b49cdb625d66ff5fa25c6f6d507b11873cec09679dae11c1903dcc9b9` |
| 3 | `def` | [needEscape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/needescape--182d5b95be92e652b5e9da85.md) | 65 | `declaration-track:182d5b95be92e652b5e9da85e6846aa81f52734d293e04dd5469ae73638cef43` |
| 4 | `def` | [escape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/escape--463c5ff7a1e15b6869afc68e.md) | 81 | `declaration-track:463c5ff7a1e15b6869afc68ebf046475d7fecde716b8bded369d8681c5933ec8` |
| 5 | `def` | [renderString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/renderstring--f37b4b80d9bc7c0ea608478d.md) | 89 | `declaration-track:f37b4b80d9bc7c0ea608478da886eb2931b87a692d8248dc281810ba437afa8f` |
| 6 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/render--7207d7cf47d6c22a371c2922.md) | 96 | `declaration-track:7207d7cf47d6c22a371c2922fda57af42a01b8cdf48b5698a39649856c6c2db3` |
| 7 | `def` | [pretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/pretty--1b7971c9f4dc626a28922683.md) | 112 | `declaration-track:1b7971c9f4dc626a28922683f9ac992f523135114397cc384e6e92ab7abc6863` |
| 8 | `inductive` | [CompressWorkItemKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemkind--15f16f2761eaaf35eae802f6.md) | 115 | `declaration-track:15f16f2761eaaf35eae802f60b5cfaf53afea5599fd1283ca051f136cc67ee17` |
| 9 | `structure` | [CompressWorkItemQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue--b02f0f41d2d5b9d4044fb09b.md) | 123 | `declaration-track:b02f0f41d2d5b9d4044fb09b7f0e8f5164f49a62dd1157b325b5329a30545a19` |
| 10 | `def` | [CompressWorkItemQueue.pushKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-pushkind--0ab5364b20900b082092b497.md) | 129 | `declaration-track:0ab5364b20900b082092b497a6b83186ff3d1741ebcb238a49d9d55c4ef899db` |
| 11 | `def` | [CompressWorkItemQueue.pushValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-pushvalue--c6ab94eafdef690e0dcc2e75.md) | 135 | `declaration-track:c6ab94eafdef690e0dcc2e75f34a6564f228a803e2516b6f1479a2cc76f3d67f` |
| 12 | `def` | [CompressWorkItemQueue.pushObjectFieldKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-pushobjectfieldkey--867473ea7b4d666523b9a749.md) | 141 | `declaration-track:867473ea7b4d666523b9a749d3c349f877b8d043dc13e78767c7bd585cd147ae` |
| 13 | `def` | [CompressWorkItemQueue.popKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-popkind--62c0a1285386624e27e8874d.md) | 147 | `declaration-track:62c0a1285386624e27e8874db40ef7094458703fd7005476ae63f9d581962aea` |
| 14 | `def` | [CompressWorkItemQueue.popValue!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-popvalue--52764923b25f9db11fbeaea8.md) | 154 | `declaration-track:52764923b25f9db11fbeaea8b3687b024badeed18f5a3511e3e8619dbbfafc1d` |
| 15 | `def` | [CompressWorkItemQueue.popObjectFieldKey!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compressworkitemqueue-popobjectfieldkey--78646d2cc2046a360b5b1c71.md) | 161 | `declaration-track:78646d2cc2046a360b5b1c71b4e6e58d5de6005b25df8fdeec381cf948a11e2d` |
| 16 | `def` | [compress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/compress--b584d7fc934d36bd1adbaabc.md) | 167 | `declaration-track:b584d7fc934d36bd1adbaabcb162393f6cc5343fad82227432baa71d927d2d89` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/instance--0afcfb52a4c19b70e02724ee.md) | 233 | `declaration-track:0afcfb52a4c19b70e02724ee6a5e8291cfcc114c8a614a7de2f6230140f8cc42` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variant9402526c6c73e54dfcfdb7c00b956fab8e13b5dabd201a1ede5341c7b4c9f2e3.lean/declarations/instance--f7c0a8e9fc568d574fe04a51.md) | 234 | `declaration-track:f7c0a8e9fc568d574fe04a51136c4176ae80d5bcf7e91de33e734517b319eee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
