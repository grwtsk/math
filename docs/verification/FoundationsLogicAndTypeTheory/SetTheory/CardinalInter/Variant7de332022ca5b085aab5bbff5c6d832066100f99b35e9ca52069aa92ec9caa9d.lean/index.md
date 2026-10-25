# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalInter.Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3adc128eb9c1816969f42269bd1ce33f5ed3d1a8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3adc128eb9c1816969f42269bd1ce33f5ed3d1a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean.json)

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
| 1 | `class` | [CardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter--082f297b6f9eafe4492e92e0.md) | 45 | `declaration-track:082f297b6f9eafe4492e92e00d31d2e7d4be6b2a31586abb00fb2c9fee2c736c` |
| 2 | `theorem` | [cardinal_sInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinal-sinter-mem--fe8697b57cefbddc9dee73b5.md) | 52 | `result-track:fe8697b57cefbddc9dee73b548395c406600983c23b260fbacb49a517dd79d34` |
| 3 | `theorem` | [_root_.Filter.cardinalInterFilter_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/root-filter-cardinalinterfilter-aleph0--ba26c4e488604d46227e7dcb.md) | 57 | `result-track:ba26c4e488604d46227e7dcbb76cff136a292b6fa27d622c8ebf8128f3597213` |
| 4 | `theorem` | [CardinalInterFilter.toCountableInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-tocountableinterfilter--125a33ac2520d65171d72844.md) | 63 | `result-track:125a33ac2520d65171d728445099c1ab6718a34f3712e0d6f4403341aa2f5d45` |
| 5 | `instance` | [CountableInterFilter.toCardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/countableinterfilter-tocardinalinterfilter--0d0802207b8a89be7215e8ed.md) | 69 | `declaration-track:0d0802207b8a89be7215e8eddb67a6f091a5542cdeac4ae98fc389e3768157d9` |
| 6 | `theorem` | [cardinalInterFilter_aleph_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-aleph-one-iff--b93b05acc7d9f97b518f6be7.md) | 75 | `result-track:b93b05acc7d9f97b518f6be7d01e8ecaa57126c1ffc55c192772742882837bb6` |
| 7 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-le--835a5e570c6e46559772adc0.md) | 82 | `result-track:835a5e570c6e46559772adc0df3701fc558b83455ada0208a32161a0153a416c` |
| 8 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-lt--d8d14ae5e49ccf2db7a7b819.md) | 88 | `result-track:d8d14ae5e49ccf2db7a7b819cc0638671eb4d2afa345cb51bdc56819f48cd9db` |
| 9 | `theorem` | [cardinal_iInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinal-iinter-mem--8609eb1ec5ebeab7e2324207.md) | 96 | `result-track:8609eb1ec5ebeab7e2324207ecd7bb41c0e55c908fc20e3b07ccd1ae37ec8971` |
| 10 | `theorem` | [cardinal_bInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinal-binter-mem--d209b8f9d53c8d28723d4e83.md) | 102 | `result-track:d209b8f9d53c8d28723d4e836019368205fb22355034d2548a10cf278fd9d15d` |
| 11 | `theorem` | [eventually_cardinal_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventually-cardinal-forall--02bd81f0d5a61f88788056a7.md) | 108 | `result-track:02bd81f0d5a61f88788056a7b8344775b2d004e988df487fbeac45fb45e17817` |
| 12 | `theorem` | [eventually_cardinal_ball](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventually-cardinal-ball--3469947acb1490c99ecb8902.md) | 113 | `result-track:3469947acb1490c99ecb890297503c01c5dbf2ae29c4c0054ffaf46571977aa9` |
| 13 | `theorem` | [EventuallySubset.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallysubset-cardinal-iunion--4a4790c496ee701af9f83dc7.md) | 119 | `result-track:4a4790c496ee701af9f83dc70e9a78b798ae933efa8a641692d4ced79637c92c` |
| 14 | `theorem` | [EventuallyEqSet.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallyeqset-cardinal-iunion--27c16c2c2b6d0f7f8087d4e2.md) | 124 | `result-track:27c16c2c2b6d0f7f8087d4e2a4de282d2ff8e8663f5ba5c8c78e4110b9a37304` |
| 15 | `theorem` | [EventuallySubset.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallysubset-cardinal-bunion--6c377d7f19366379a8589fb2.md) | 129 | `result-track:6c377d7f19366379a8589fb2edd5fb5e5549ccac9334e5b073b2d0076aabba07` |
| 16 | `theorem` | [EventuallyEqSet.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallyeqset-cardinal-bunion--4f8f34fd40c64c2f5318832a.md) | 135 | `result-track:4f8f34fd40c64c2f5318832ab06ee278f13af07ead0539f71527181913fce228` |
| 17 | `theorem` | [EventuallySubset.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallysubset-cardinal-iinter--994d9e96f9ca0fe402b581bd.md) | 141 | `result-track:994d9e96f9ca0fe402b581bd29c05a89098f09c3ea057b745ed48e2882b9e7a8` |
| 18 | `theorem` | [EventuallyEqSet.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallyeqset-cardinal-iinter--fac626cfc6e27a181f4a695e.md) | 146 | `result-track:fac626cfc6e27a181f4a695ea26394985a0c8f82e2ee094d2ce1ed5cddfbf2bd` |
| 19 | `theorem` | [EventuallySubset.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallysubset-cardinal-binter--6042a9dc4fae1ea4944d4dd2.md) | 151 | `result-track:6042a9dc4fae1ea4944d4dd2df8af914e9c95e39747c3643d6a12f820a2bb2da` |
| 20 | `theorem` | [EventuallyEqSet.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/eventuallyeqset-cardinal-binter--68a8631e1942e81a93047c77.md) | 157 | `result-track:68a8631e1942e81a93047c77809e40a53ccb2851c8b3492c9fb951267abc6b62` |
| 21 | `def` | [ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/ofcardinalinter--c7c2f34f33b1b0262b474d14.md) | 182 | `declaration-track:c7c2f34f33b1b0262b474d1470b398185f10643cd0f210e504f6ed7dea835118` |
| 22 | `instance` | [cardinalInter_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinter-ofcardinalinter--db8a2d5928c76b537dba109a.md) | 197 | `declaration-track:db8a2d5928c76b537dba109a08230bc6794c7adf3347cea730fa38dfaee65d52` |
| 23 | `theorem` | [mem_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/mem-ofcardinalinter--a5a78b4cedd4894a169c2914.md) | 204 | `result-track:a5a78b4cedd4894a169c2914fedc16223aff2b88c2340c1e7c67c31240b95769` |
| 24 | `def` | [ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/ofcardinalunion--1dd87fb60247f04a5d9c17e5.md) | 214 | `declaration-track:1dd87fb60247f04a5d9c17e53914c8ba6993bcc545e49e143fe75535b5ce8e3e` |
| 25 | `instance` | [cardinalInter_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinter-ofcardinalunion--891cfacc99f1b7a8a8774db4.md) | 228 | `declaration-track:891cfacc99f1b7a8a8774db4d6769a8308c1435df672a9d47afa95a6577a32db` |
| 26 | `theorem` | [mem_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/mem-ofcardinalunion--a40846a3d2a1b30667dac46c.md) | 233 | `result-track:a40846a3d2a1b30667dac46c0050a7c8bb39c7e4051b41c76e400e3dfd4fb39c` |
| 27 | `instance` | [cardinalInterFilter_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-principal--a81f4c6fe6aa73377167e873.md) | 237 | `declaration-track:a81f4c6fe6aa73377167e873d2015962ce7225e97a1bb523e804a1f0007484a0` |
| 28 | `instance` | [cardinalInterFilter_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-bot--62be16f74f56a945089b854c.md) | 240 | `declaration-track:62be16f74f56a945089b854c51d649003f6a02ad46b561f7fb470a4cf47896c6` |
| 29 | `instance` | [cardinalInterFilter_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-top--1aa803661d3b179780b0d088.md) | 244 | `declaration-track:1aa803661d3b179780b0d0880b53c7b37a1040852a5200aa2a9a15651f4d82f7` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/instance--31dfa8107f363f1d6208425a.md) | 248 | `declaration-track:31dfa8107f363f1d6208425a84ece81f0f40bae7044dabbae3940b2c3596a065` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/instance--fddb6c697a1963fd29baf2a6.md) | 255 | `declaration-track:fddb6c697a1963fd29baf2a697ec200c3493280fd57fb86e0fc845fbd4fd6b87` |
| 32 | `instance` | [cardinalInterFilter_inf_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-inf-eq--709a435553b385086bc3f904.md) | 263 | `declaration-track:709a435553b385086bc3f9045e6cafa57317e2b8af957166a78276cde37765cc` |
| 33 | `instance` | [cardinalInterFilter_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-inf--ff97dd9d521c89a3117fbd1e.md) | 273 | `declaration-track:ff97dd9d521c89a3117fbd1ec0c1d2c798da4027a5144597c3ce71034469e0f7` |
| 34 | `instance` | [cardinalInterFilter_sup_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-sup-eq--f3196446c9e03bd9ee35b762.md) | 283 | `declaration-track:f3196446c9e03bd9ee35b7625103fb28a8b41e50c3adc404ca0020c9f5209377` |
| 35 | `instance` | [cardinalInterFilter_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinterfilter-sup--cc592f78dd42f2a4d69678f1.md) | 288 | `declaration-track:cc592f78dd42f2a4d69678f103cd594ebc261672b27a8f2083c12716bd5e390e` |
| 36 | `inductive` | [CardinalGenerateSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalgeneratesets--33598fca639657134c544215.md) | 301 | `declaration-track:33598fca639657134c544215a3773a722104e3bfc30e31118472aa26a3b2eb76` |
| 37 | `def` | [cardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalgenerate--0d00f7b2777d0bf658e778bf.md) | 310 | `declaration-track:0d00f7b2777d0bf658e778bfbf3b2b5266d439d881b08ad77e397ad03d4b0371` |
| 38 | `lemma` | [cardinalInter_ofCardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalinter-ofcardinalgenerate--8534c7ee370279ea83491113.md) | 313 | `result-track:8534c7ee370279ea83491113011f990844d7085822d28d36dad4ca04bfc98cb9` |
| 39 | `theorem` | [mem_cardinalGenerate_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/mem-cardinalgenerate-iff--f076c053c00b8f82fc44fb7d.md) | 322 | `result-track:f076c053c00b8f82fc44fb7d5d4a7f1bbee83f01b80f9ce776012845a57330c9` |
| 40 | `theorem` | [le_cardinalGenerate_iff_of_cardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/le-cardinalgenerate-iff-of-cardinalinterfilter--04237f869b7d464595bb1c28.md) | 345 | `result-track:04237f869b7d464595bb1c2829934b53ab96cbdd1a5cc154ea39b0a700c20048` |
| 41 | `theorem` | [cardinalGenerate_isGreatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variant7de332022ca5b085aab5bbff5c6d832066100f99b35e9ca52069aa92ec9caa9d.lean/declarations/cardinalgenerate-isgreatest--9b54194eaa50a67cbe2b99ec.md) | 357 | `result-track:9b54194eaa50a67cbe2b99eca589f7e319ba6e3cd32b72d233eb14dcf43f53fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
