# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e2adf9e812a8aa3e890ae9f7ee08de0388e9f1b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e2adf9e812a8aa3e890ae9f7ee08de0388e9f1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Div.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bitwise_rec_lemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/bitwise-rec-lemma--db5ff3dfe90c20c960b20131.md) | 18 | `result-track:db5ff3dfe90c20c960b201312fe87f9d5bed4ef54417b28d841cd462977ed448` |
| 2 | `def` | [bitwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/bitwise--d5f04c6832bbed7aa9bdb78b.md) | 27 | `declaration-track:d5f04c6832bbed7aa9bdb78bad4ff43c7fa1231687b5202571276f603a462c6c` |
| 3 | `def` | [land](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/land--a230a65fc6df44e8adfeae1d.md) | 50 | `declaration-track:a230a65fc6df44e8adfeae1de0313c584f6951f815f3efe6d6ca71721547e519` |
| 4 | `def` | [lor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/lor--08808cc900378e4dd2d291c1.md) | 58 | `declaration-track:08808cc900378e4dd2d291c1739dd4d98ffe9c868a06617ba3d1a7d09d517daf` |
| 5 | `def` | [xor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/xor--fb84707b8736207b7eac9bdc.md) | 66 | `declaration-track:fb84707b8736207b7eac9bdc916839623d27eddef2608ea84a95256399df2be1` |
| 6 | `def` | [shiftLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftleft--6620d08ae0a480b9be23f593.md) | 79 | `declaration-track:6620d08ae0a480b9be23f593c1ca3bb4091809291dc4be62fac1572d072b7849` |
| 7 | `def` | [shiftRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright--50e6399b219f7ff51709ecef.md) | 95 | `declaration-track:50e6399b219f7ff51709ecef8893e1762274c023f809793ff312bbc15e3794a0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/instance--6be7363b99744e7b6de6494d.md) | 99 | `declaration-track:6be7363b99744e7b6de6494d8ab7f78c48fa1b89597b14ac38d6e38124e58576` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/instance--a8c2eee70b40e2c3f6d39289.md) | 100 | `declaration-track:a8c2eee70b40e2c3f6d392896e48a4b20793996ca1b3c4f6edfe2a4f129d0970` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/instance--bb31370e6f1069cbc57cc2d1.md) | 101 | `declaration-track:bb31370e6f1069cbc57cc2d1a0e22d5cb84ceb5b2ea76c325f70c7c1fd42726a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/instance--5ba8ca874f8736b537cda86e.md) | 102 | `declaration-track:5ba8ca874f8736b537cda86eb3a7e88f15b3b0b35b0b98129c7bef4c92c123c2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/instance--37050278e353f483305da888.md) | 103 | `declaration-track:37050278e353f483305da8882b7653d3552c778f4274ad6b0c717d8eaf30667a` |
| 13 | `theorem` | [land_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/land-eq--4d39e9f7d4b0e5dca84f4a00.md) | 105 | `result-track:4d39e9f7d4b0e5dca84f4a0035f38490b4b7157130a2da40d9941d0c6d0084e5` |
| 14 | `theorem` | [lor_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/lor-eq--4cc4710308a4859a6613f121.md) | 106 | `result-track:4cc4710308a4859a6613f12122b8fdf69a84a6bd540bbb986daf931d753f216f` |
| 15 | `theorem` | [xor_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/xor-eq--b33af0ead05cf4026e310b94.md) | 107 | `result-track:b33af0ead05cf4026e310b94dfce3088adc0928dcc16cfa33b678aa8a525cb36` |
| 16 | `theorem` | [shiftLeft_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftleft-eq--432f1a44071d1d30da4e3084.md) | 108 | `result-track:432f1a44071d1d30da4e308445d09cfa380f49896728ae4f49b59e4715e5fe18` |
| 17 | `theorem` | [shiftRight_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-eq--67a3b0b0b8ed622973223f14.md) | 109 | `result-track:67a3b0b0b8ed622973223f149859f3fb49b367cfc6f7d2f436ff8ac9218d9cb4` |
| 18 | `theorem` | [shiftLeft_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftleft-eq--ebbb3e4c85580fd8879e65ba.md) | 111 | `result-track:ebbb3e4c85580fd8879e65ba0bbe4a32b6507e679b7ad771c85c2abc0f3f25cb` |
| 19 | `theorem` | [shiftRight_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-zero--eaf0121c541c4ad2f6dbf67d.md) | 117 | `result-track:eaf0121c541c4ad2f6dbf67da756b2d28c26d62a5692f3fb7d6b9fe533e1931d` |
| 20 | `theorem` | [shiftRight_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-succ--868e91a4860c36cf72ad6468.md) | 119 | `result-track:868e91a4860c36cf72ad64682975e85f2845cd72e0edeb5fe9ef04aeb184b177` |
| 21 | `theorem` | [shiftRight_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-add--b28f6cc06ff0add29d0e3ea0.md) | 121 | `result-track:b28f6cc06ff0add29d0e3ea0be312c89c36dabc96e238119215b70b435a05cb3` |
| 22 | `theorem` | [shiftRight_eq_div_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-eq-div-pow--723ca1c7305e650b2204fd09.md) | 125 | `result-track:723ca1c7305e650b2204fd099211e742b827520201b0cd9407ea10f55657e776` |
| 23 | `theorem` | [shiftRight_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-eq-zero--4a7aaca24c073a76ee34cacf.md) | 131 | `result-track:4a7aaca24c073a76ee34cacf3d2fdd7e561f83d076f0b24db663cac30bd8db07` |
| 24 | `theorem` | [shiftRight_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/shiftright-le--6a88e16b193f5adbb91dabb7.md) | 134 | `result-track:6a88e16b193f5adbb91dabb7993f8df49a24d29f4dfca25c7c9ad8bb834848f3` |
| 25 | `def` | [testBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/testbit--316377b2c600d6d162dae1df.md) | 147 | `declaration-track:316377b2c600d6d162dae1df2f294bc8933f2b672ea2742fca768fbc1e0fbc15` |
| 26 | `def` | [hasNotBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/hasnotbit--bd617434a0f25240e8deb218.md) | 156 | `declaration-track:bd617434a0f25240e8deb2183dbaf4f1c9b418de1652d8da3c5a67545df3e72a` |
| 27 | `theorem` | [hasNotBit_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0196b9eabcb97bd41b9ace0cfb828d2f0f0215085d2eb8972d2c541539c94df3.lean/declarations/hasnotbit-eq--09b37f0a66c55edd9e12e5bb.md) | 160 | `result-track:09b37f0a66c55edd9e12e5bb3ea4aa10f47d69b05b6cd98ede888f14a1d22a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
