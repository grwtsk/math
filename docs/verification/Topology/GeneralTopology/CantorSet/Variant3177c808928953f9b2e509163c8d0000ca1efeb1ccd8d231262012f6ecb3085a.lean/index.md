# Verification target: GRWTSK.Topology.GeneralTopology.CantorSet.Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79fd5f67185e532e62fc157dbb2ade711ec62428",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79fd5f67185e532e62fc157dbb2ade711ec62428`.

Source path: `GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean.json)

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
| 1 | `def` | [preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/precantorset--a014ba62e51203b7cb7e0a37.md) | 53 | `declaration-track:a014ba62e51203b7cb7e0a371d422435052cb2f3610d57c96732b6ce1d985fab` |
| 2 | `lemma` | [preCantorSet_zero](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/precantorset-zero--6612c8e8678b8d15814a48cc.md) | 57 | `result-track:6612c8e8678b8d15814a48ccf3fc3c05d92d686fbbd941d2c07ad3ae5d246063` |
| 3 | `lemma` | [preCantorSet_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/precantorset-succ--4434ba0e0bd64e6dcb703c33.md) | 58 | `result-track:4434ba0e0bd64e6dcb703c336d20691a1b9c5ca513a81d925b5796428ae1c997` |
| 4 | `def` | [cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorset--3913ba568f9d9c0473563be2.md) | 68 | `declaration-track:3913ba568f9d9c0473563be28bf8654debd173fdfb6c4dcd49818d863819c985` |
| 5 | `lemma` | [quarters_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/quarters-mem-precantorset--e525f6435b01a06f0ce2bfe9.md) | 75 | `result-track:e525f6435b01a06f0ce2bfe908ba7134e08d522324148a355b37cb75c6ee1108` |
| 6 | `lemma` | [quarter_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/quarter-mem-precantorset--f6b94f9be5e33293aa3d3107.md) | 89 | `result-track:f6b94f9be5e33293aa3d310752758d5dd6e94b6d8e50144b954073a031a22366` |
| 7 | `theorem` | [quarter_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/quarter-mem-cantorset--6ec16ecc4dcf1f81e6e5ab24.md) | 91 | `result-track:6ec16ecc4dcf1f81e6e5ab24c20d96662f1f186c3692325236598634a0ef57f0` |
| 8 | `lemma` | [zero_mem_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/zero-mem-precantorset--92c06ecbf2a519e8085e8f3d.md) | 94 | `result-track:92c06ecbf2a519e8085e8f3d049d69eb40e73e55800366d97478c6737f311cb0` |
| 9 | `theorem` | [zero_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/zero-mem-cantorset--98711ced52c3b568dace2f23.md) | 101 | `result-track:98711ced52c3b568dace2f2328991ba39cc1aa01e30470f9c1190fcc339dd386` |
| 10 | `theorem` | [preCantorSet_antitone](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/precantorset-antitone--8b9cb5683a1ca4d4fcdd37bc.md) | 103 | `result-track:8b9cb5683a1ca4d4fcdd37bc77dada4d1ce0dd5fce3532eaed41f58e9af484b9` |
| 11 | `lemma` | [preCantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/precantorset-subset-unitinterval--6ebef736da639b1c0c85f83f.md) | 107 | `result-track:6ebef736da639b1c0c85f83f78d1ec6c60a99ea760b65a39c3b36a20cfe1d75c` |
| 12 | `lemma` | [cantorSet_subset_unitInterval](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorset-subset-unitinterval--8e0bb872c42d8e4d00a8b92d.md) | 112 | `result-track:8e0bb872c42d8e4d00a8b92d727871ca25055d8b748934ffe5e24bdedfbf4405` |
| 13 | `theorem` | [cantorSet_eq_union_halves](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorset-eq-union-halves--85aeadba41ecae459077f95d.md) | 116 | `result-track:85aeadba41ecae459077f95d6cfe306f065f7eb1a86625160a47fa906c1712c3` |
| 14 | `lemma` | [isClosed_preCantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/isclosed-precantorset--af9ccc157883e122f39d7ac7.md) | 132 | `result-track:af9ccc157883e122f39d7ac7e396b470dcc1ae2ba7aa250a13bada5f172b668e` |
| 15 | `lemma` | [isClosed_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/isclosed-cantorset--a5d2068149cfb82e8c81ba07.md) | 143 | `result-track:a5d2068149cfb82e8c81ba0750a034f26fc2739d21bc3231585cbdd84a66ae97` |
| 16 | `lemma` | [isCompact_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/iscompact-cantorset--3a2ce4e408291e74da106f24.md) | 147 | `result-track:3a2ce4e408291e74da106f24815c0c12298f0fcd45c43b0dcfbd25aa66bd0bd0` |
| 17 | `theorem` | [ofDigits_zero_two_sequence_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/ofdigits-zero-two-sequence-mem-cantorset--eb4a5836c5c069707c967c12.md) | 160 | `result-track:eb4a5836c5c069707c967c12eb6d08ec3922d389b4dc342b3ed2370d986597a5` |
| 18 | `theorem` | [ofDigits_zero_two_sequence_unique](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/ofdigits-zero-two-sequence-unique--c85d3c8b661a11c0a5d93830.md) | 181 | `result-track:c85d3c8b661a11c0a5d9383032f69069e445911abc8568825888727f297ce47e` |
| 19 | `def` | [cantorStep](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorstep--b76743891f2e6d488352da9e.md) | 217 | `declaration-track:b76743891f2e6d488352da9e046b13bec3d8f88af83544295af1c95867fe90dd` |
| 20 | `theorem` | [cantorStep_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorstep-mem-cantorset--fe78cc624a18436122a66f4b.md) | 223 | `result-track:fe78cc624a18436122a66f4b07a68fff2fb534227bb80eed6e9aa569e7af503b` |
| 21 | `def` | [cantorSequence](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsequence--45fce334e0c9c75ce06e9e78.md) | 232 | `declaration-track:45fce334e0c9c75ce06e9e783a6a35dc34c210f74e204630982335864cd2a2fe` |
| 22 | `theorem` | [cantorSequence_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsequence-mem-cantorset--bfef9286927696750d1f667d.md) | 235 | `result-track:bfef9286927696750d1f667d551762ddd70699ac3fd9bf0d22454f3c75dd8ad7` |
| 23 | `def` | [cantorToBinary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantortobinary--bf85698c432bd2aeef4e52e3.md) | 247 | `declaration-track:bf85698c432bd2aeef4e52e37b1c24f54bc4bc3a0bc8925757eb73bcac529a6c` |
| 24 | `def` | [cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantortoternary--ee7402fb03d59f7cea1d3478.md) | 256 | `declaration-track:ee7402fb03d59f7cea1d3478a7dfbe46650198a7d92e80c221c5225c0f3132c1` |
| 25 | `theorem` | [ofDigits_bool_to_fin_three_mem_cantorSet](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/ofdigits-bool-to-fin-three-mem-cantorset--2fda917c7ed6b3b31e61ca3d.md) | 259 | `result-track:2fda917c7ed6b3b31e61ca3d355bbbac41e3fcf639dd30a7779e3ce7c9888a2b` |
| 26 | `theorem` | [cantorToTernary_ne_one](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantortoternary-ne-one--ab6156ff3db4b786558abcf8.md) | 263 | `result-track:ab6156ff3db4b786558abcf82f60649d324fe6a65c76231d23680b4437a7639a` |
| 27 | `theorem` | [cantorSequence_get_succ](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsequence-get-succ--782e99e332aa669e36c47e5f.md) | 266 | `result-track:782e99e332aa669e36c47e5fe6ec80d40ff9eb09ae00275946f5555a161ea75a` |
| 28 | `theorem` | [cantorSequence_eq_self_sub_sum_cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsequence-eq-self-sub-sum-cantortoternary--76b4da80f7844749c56acb6c.md) | 275 | `result-track:76b4da80f7844749c56acb6c621d8c4c8df8430f1ce705d55740d63ee982c2ab` |
| 29 | `theorem` | [ofDigits_cantorToTernary_sum_le](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/ofdigits-cantortoternary-sum-le--c98b119aced7dd04eb13d959.md) | 282 | `result-track:c98b119aced7dd04eb13d959b781520a12b5d5574ace1091f7884386af565ea9` |
| 30 | `theorem` | [le_ofDigits_cantorToTernary_sum](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/le-ofdigits-cantortoternary-sum--003eb71450edac5579f67035.md) | 290 | `result-track:003eb71450edac5579f67035b6d9d8109a718486a94c2c3a9e76879b76a3ed6b` |
| 31 | `theorem` | [ofDigits_cantorToTernary](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/ofdigits-cantortoternary--2d8fe1886cd8df166f2423ef.md) | 300 | `result-track:2d8fe1886cd8df166f2423eff97aa0a6ff314a242a0d8ca87f4a86a93fc3d3e5` |
| 32 | `theorem` | [cantorSet_eq_zero_two_ofDigits](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorset-eq-zero-two-ofdigits--28e4ad2bef763edc2a0fcbe7.md) | 316 | `result-track:28e4ad2bef763edc2a0fcbe7368eaf594e49002c2187c74daedee93c3fa315e2` |
| 33 | `def` | [cantorSetEquivNatToBool](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsetequivnattobool--f500116badc6c64ebcdb4bca.md) | 334 | `declaration-track:f500116badc6c64ebcdb4bca73ac584c95652ef392a3f8ec951c860fde893fcb` |
| 34 | `def` | [cantorSetHomeomorphNatToBool](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorsethomeomorphnattobool--215bffa83d80ad528ea0dd91.md) | 356 | `declaration-track:215bffa83d80ad528ea0dd9113a166b57275235e1ff196e2a8a2f20773456fd4` |
| 35 | `def` | [cantorSpaceHomeomorphNatToCantorSpace](../../../../../mathematics/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/declarations/cantorspacehomeomorphnattocantorspace--71f5c07d853f06bb14342d98.md) | 361 | `declaration-track:71f5c07d853f06bb14342d98d050a18e6d22f7bc123d0491799bd21a6075d4d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
