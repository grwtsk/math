# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Enum.Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e967fe6cd334ceb83d48749f213b4c64bd2f61",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e967fe6cd334ceb83d48749f213b4c64bd2f61`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean.json)

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
| 1 | `def` | [enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord--622ad304014ddf3351fa4056.md) | 46 | `declaration-track:622ad304014ddf3351fa40561c695128009943f1d41d127de2308c40a6e105ec` |
| 2 | `theorem` | [enumOrd_le_of_forall_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-le-of-forall-lt--e699c254d0f3032152b7dc6b.md) | 52 | `result-track:e699c254d0f3032152b7dc6b35c147a9aaa11b48ef00106a6eb88118f43d609b` |
| 3 | `theorem` | [enumOrd_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-nonempty--81008064bd81423357c2f801.md) | 57 | `result-track:81008064bd81423357c2f80149c4a7eb77dd9f1f9461db4cb1875020416a307c` |
| 4 | `theorem` | [enumOrd_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-mem-aux--b44abb6c1b4d9ff53d708ea3.md) | 64 | `result-track:b44abb6c1b4d9ff53d708ea38d2faf1aa9e0c48725f61235325deb8cf39a259a` |
| 5 | `theorem` | [enumOrd_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-mem--e10ad0ec43959a0f3a293381.md) | 69 | `result-track:e10ad0ec43959a0f3a29338102e7e8d95e6f6f2af3dec0d9cff0526ff6cedf36` |
| 6 | `theorem` | [enumOrd_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-strictmono--480182436ba44b7f3c76f533.md) | 72 | `result-track:480182436ba44b7f3c76f5333df561191408c728c8755591d106ba1e2d1234d5` |
| 7 | `theorem` | [enumOrd_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-injective--cdc1ca5c90ffaf3b823d1b31.md) | 75 | `result-track:cdc1ca5c90ffaf3b823d1b319bc47b019381fa268f8b9c6cb5e3fc7ecb8b16e0` |
| 8 | `theorem` | [enumOrd_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-inj--843b3fcf216c667f1c950d20.md) | 78 | `result-track:843b3fcf216c667f1c950d20a5f8a9bb879691e096daed13a2ab31bd7a29970c` |
| 9 | `theorem` | [enumOrd_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-le-enumord--c53ac92686bec413191aa443.md) | 81 | `result-track:c53ac92686bec413191aa44308ec3d95d85e1147cfcf79542ee9737d0526d3c9` |
| 10 | `theorem` | [enumOrd_lt_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-lt-enumord--a48865defd120d94dd8f1272.md) | 85 | `result-track:a48865defd120d94dd8f12726db9d420eb48e7026c91541c94e76d28dea9d149` |
| 11 | `theorem` | [id_le_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/id-le-enumord--73b6a45ae1d901243d177db2.md) | 89 | `result-track:73b6a45ae1d901243d177db254169664afab3d95450eeb6535d91d60b23ca8bb` |
| 12 | `theorem` | [le_enumOrd_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/le-enumord-self--951f406655ddb282d57e43e3.md) | 92 | `result-track:951f406655ddb282d57e43e39a4bb823bbae7c2edd190fad9aa5e8d4fb26addb` |
| 13 | `theorem` | [enumOrd_succ_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-succ-le--a8deac2376b7804bc26f1096.md) | 95 | `result-track:a8deac2376b7804bc26f1096b258f277853d3797abdcf69c735b633d9e41bb55` |
| 14 | `theorem` | [range_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/range-enumord--2860d1e32028d7b9c6eddc58.md) | 102 | `result-track:2860d1e32028d7b9c6eddc58986d4858c29ce895169273ee920a85ffe732ff7b` |
| 15 | `theorem` | [enumOrd_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-surjective--58393fe8f53028c2fb50f054.md) | 115 | `result-track:58393fe8f53028c2fb50f054e9bbe0545615c060bc63d71608f38d06ec9cdd61` |
| 16 | `theorem` | [enumOrd_le_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-le-of-subset--a7f02a01acebd2e130137843.md) | 119 | `result-track:a7f02a01acebd2e13013784301908f7ff72cfd9026668fd8ee0e54901f446005` |
| 17 | `theorem` | [eq_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/eq-enumord--5c82771b1e685f9583e508e6.md) | 128 | `result-track:5c82771b1e685f9583e508e605b9ac24db00fb7e27774afd7c593d7e9ebc80e0` |
| 18 | `theorem` | [enumOrd_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-range--515ab68f25c30cefafa0d957.md) | 136 | `result-track:515ab68f25c30cefafa0d957d85d68491cf2c9e0c57c9f564ef99947f0e3dc5e` |
| 19 | `theorem` | [isNormal_enumOrd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/isnormal-enumord--05dac8018534941fa0343e22.md) | 141 | `result-track:05dac8018534941fa0343e2216ef66e40f03dd9e7f926961f6c948282a90365d` |
| 20 | `theorem` | [enumOrd_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-univ--163d90ebb19d300f1de16fa2.md) | 154 | `result-track:163d90ebb19d300f1de16fa2e634e332dbac077eb2bce184888905761e9cba17` |
| 21 | `lemma` | [enumOrd_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumord-zero--60a7d87ff82eda62bb27f53b.md) | 158 | `result-track:60a7d87ff82eda62bb27f53b13ffa8c06eabbd0e280592d0a61a131e5c7359c8` |
| 22 | `def` | [enumOrdOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/declarations/enumordorderiso--5a68f428312c06139dad71b8.md) | 161 | `declaration-track:5a68f428312c06139dad71b8ee5646fd6fb6e897d6ee158520e1885b1d47165e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
