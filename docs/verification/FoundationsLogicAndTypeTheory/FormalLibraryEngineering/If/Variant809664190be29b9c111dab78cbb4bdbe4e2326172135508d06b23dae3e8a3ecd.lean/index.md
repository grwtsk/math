# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.If.Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b19ca5515e74f6089310ffcc6c06753c878c4a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b19ca5515e74f6089310ffcc6c06753c878c4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkIfCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/mkifcached--7dd64a953af87e81d046b23e.md) | 54 | `declaration-track:7dd64a953af87e81d046b23e8d56e4620ecd74488c711a5eef240d7e5adf3ce6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/instance--51693f518188519a773723b7.md) | 72 | `declaration-track:51693f518188519a773723b7681fd99ef2fced7bbaa93a9cdde58a31ee17e86b` |
| 3 | `theorem` | [if_as_bool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/if-as-bool--69a4ee2f918b8f0465741f07.md) | 97 | `result-track:69a4ee2f918b8f0465741f079fe95acb35531b460b2b2da8c5113c1dc9c50b7a` |
| 4 | `theorem` | [denote_mkIfCached](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/denote-mkifcached--fffd996c7c793668e8abce1b.md) | 102 | `result-track:fffd996c7c793668e8abce1b429240829de80c485ad50df583001cb43d9f8a02` |
| 5 | `structure` | [IfInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/ifinput--d7d4e8a532428fdd2396f8a2.md) | 125 | `declaration-track:d7d4e8a532428fdd2396f8a2ff76a78e3631f7eaf73cff152b002a82ff326921` |
| 6 | `def` | [ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/ite--a054421edad16f6ff68747dd.md) | 130 | `declaration-track:a054421edad16f6ff68747ddb1766b4a71026a83810deaa5a0564719836123b8` |
| 7 | `theorem` | [go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/go-le-size--35cf9e948d898e637400fe23.md) | 155 | `result-track:35cf9e948d898e637400fe23c9a7eecdbb71de168bd61d51d0af9ce73796892c` |
| 8 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/go-decl-eq--2d5b0c00b75d1747a184b6e2.md) | 166 | `result-track:2d5b0c00b75d1747a184b6e208683cca8c3c8cd6970b66ad096e13069179fc8f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/instance--64c67f498b8eb2a6f8d41772.md) | 185 | `declaration-track:64c67f498b8eb2a6f8d417728233d0cd49ef8b0dfe5a1e8649dbc64bb0406bdf` |
| 10 | `theorem` | [go_get_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/go-get-aux--011cc42dbbf41f5c4892c11b.md) | 197 | `result-track:011cc42dbbf41f5c4892c11bdb74cb456e7438f318277cb494cb11d7432c8c53` |
| 11 | `theorem` | [go_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/go-get--efff5e122a60086ffa468665.md) | 222 | `result-track:efff5e122a60086ffa4686651ee926e5a0d195702108b251e377b22fa23ef96f` |
| 12 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/go-denote-mem-prefix--85cbbfbbf965302d674ab81f.md) | 231 | `result-track:85cbbfbbf965302d674ab81f02d13d6c0e2b0611f3a5d90660d57602ad8455d8` |
| 13 | `theorem` | [denote_go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/denote-go--8cd979585bac08c05ae92e0d.md) | 247 | `result-track:8cd979585bac08c05ae92e0d6e7dff4f5d00c1f4e666fc6c4e4ec32e6c537fc6` |
| 14 | `theorem` | [denote_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/If/Variant809664190be29b9c111dab78cbb4bdbe4e2326172135508d06b23dae3e8a3ecd.lean/declarations/denote-ite--3783453e8da7d807fd83b65e.md) | 294 | `result-track:3783453e8da7d807fd83b65e36789085a80ad5607adf80783db9dab42dd42fd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
