# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableReindex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4795d4847796ce4aa5121701caf7b85bd9e3995c",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4795d4847796ce4aa5121701caf7b85bd9e3995c`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableReindex`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [original](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/original--490e41b8059b703df115c51e.md) | 16 | `declaration-track:490e41b8059b703df115c51ee56a5704d9db05694eaacf1e8c438ac0982c0665` |
| 2 | `def` | [swapIndex](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/swapindex--c00c42c04ee9628bc105783c.md) | 21 | `declaration-track:c00c42c04ee9628bc105783ca985e6adf3e0ed2bf91888aead77820eb2f325a4` |
| 3 | `def` | [updated](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/updated--9b1a19d5ea851b706f470cca.md) | 23 | `declaration-track:9b1a19d5ea851b706f470ccafc05a661220e481c387d08a1e4bb774a039d244c` |
| 4 | `def` | [translation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/translation--261d4d8c65229c07e8ecfd60.md) | 28 | `declaration-track:261d4d8c65229c07e8ecfd6007f985515eca3a031a6156a5d945bfd7f7cef6c1` |
| 5 | `theorem` | [translation_bijective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/translation-bijective--56eb42c2a71836976acae80d.md) | 34 | `result-track:56eb42c2a71836976acae80dc38a2d400f0efec64081bde6a18ebafb5451b1c1` |
| 6 | `def` | [vertexA](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/vertexa--46e1fbecf4bf21a5f78f0911.md) | 36 | `declaration-track:46e1fbecf4bf21a5f78f09112127f1c55f58e490a4c5f2e9deea6fc99e08cca1` |
| 7 | `def` | [vertexB](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/vertexb--91a07ec9e8000d581d609b5d.md) | 37 | `declaration-track:91a07ec9e8000d581d609b5d1dedc0c4d2f51a43bdcbe87697f3717942719231` |
| 8 | `def` | [id0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/id0--3fd7002d2d69d706eef70798.md) | 38 | `declaration-track:3fd7002d2d69d706eef7079820d4314495852e747e23f05049157e71311027c1` |
| 9 | `def` | [id1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/id1--bbae68fa6e7ac6406372a9f3.md) | 39 | `declaration-track:bbae68fa6e7ac6406372a9f3c14ea0393fe17a9b773a69dd09cd1a0069145013` |
| 10 | `def` | [new0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/new0--39cc148d092b3b1046d92964.md) | 40 | `declaration-track:39cc148d092b3b1046d92964ef9ab75b4ad21e7ee7e197939b27426634ad4b8a` |
| 11 | `def` | [new1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/new1--b3fcf9b0e6ba356dbfd927fd.md) | 41 | `declaration-track:b3fcf9b0e6ba356dbfd927fd223266782ad8467f3c960b94b11ddae8b9e85350` |
| 12 | `def` | [new2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/new2--09bb5e58915ea384f7ba679f.md) | 42 | `declaration-track:09bb5e58915ea384f7ba679fdea6e9ff8f601e8aad6a9adc6637303c53abb5bf` |
| 13 | `def` | [oldTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/oldtag0--6eddf927cf1876d416c08424.md) | 44 | `declaration-track:6eddf927cf1876d416c08424c226b21b61df8b3649496c161eb3eb8cae712ef4` |
| 14 | `def` | [oldTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/oldtag1--2d8c7b75afb79d6c1f3f0fe2.md) | 45 | `declaration-track:2d8c7b75afb79d6c1f3f0fe2b4cc983e220cd5a448654426bcb78520283d7175` |
| 15 | `def` | [newTag0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/newtag0--54b9b7e3eb1184d8970c6d27.md) | 46 | `declaration-track:54b9b7e3eb1184d8970c6d279b7592d1a0f7cf0e63e120c8f5bb372de8ee9d0a` |
| 16 | `def` | [newTag1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/newtag1--152fac750514a4f588de6731.md) | 47 | `declaration-track:152fac750514a4f588de67316d19ae1f56a28cea9f935b0dd984c107e78c18cd` |
| 17 | `def` | [newTag2](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/newtag2--eb0b01240a2e511db3ab04c3.md) | 48 | `declaration-track:eb0b01240a2e511db3ab04c307018216760ebc4d21d37aa94f7964499ce455c9` |
| 18 | `instance` | [oldTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/oldtagdecidableeq--b319be30a211b258d40b8066.md) | 50 | `declaration-track:b319be30a211b258d40b8066c8762a7acdd9511ccc3ff5cd5873842a66875729` |
| 19 | `instance` | [newTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/newtagdecidableeq--c9b890dff5ec1b6d4da30bf5.md) | 53 | `declaration-track:c9b890dff5ec1b6d4da30bf5a90588606f866f9a3635642880eeacc97517db75` |
| 20 | `theorem` | [old_tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/old-tags-distinct--e2f70e510250e37564ec33e3.md) | 56 | `result-track:e2f70e510250e37564ec33e3156d7a4aef456319fe2dc1b19e86e21c6e614693` |
| 21 | `def` | [arrow0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/arrow0--e12e3db423e8d6050ec037bc.md) | 63 | `declaration-track:e12e3db423e8d6050ec037bce2bac4b277e8ae8e759397aabf053df6bc0873dd` |
| 22 | `def` | [arrow1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/arrow1--8b86e4998cc52f9655bf7b04.md) | 64 | `declaration-track:8b86e4998cc52f9655bf7b0461c0da3a634ecf7392c5ee0ccfee1e74b8712839` |
| 23 | `def` | [single0](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/single0--c8a26fb8913a7fa95971d573.md) | 65 | `declaration-track:c8a26fb8913a7fa95971d573671bb1a6111aece93beebdd3069c230cbdfad358` |
| 24 | `def` | [single1](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/single1--ca492955443a86c3e841f0d2.md) | 66 | `declaration-track:ca492955443a86c3e841f0d218b526b88ddf4bd304f40cef0b3ee736b2959c1e` |
| 25 | `def` | [seedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/seedrows--3a7c5f250490dbd292753f6b.md) | 68 | `declaration-track:3a7c5f250490dbd292753f6b600fbe50af88aed44eb8b656e0417e00d59205e4` |
| 26 | `def` | [seed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/seed--ed02d6dace720952ba36d626.md) | 71 | `declaration-track:ed02d6dace720952ba36d626a3574bf7652109d342154009338a2fad02a5db74` |
| 27 | `def` | [before](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before--4985920c0ea7e14fb79fb21f.md) | 74 | `declaration-track:4985920c0ea7e14fb79fb21f099c4678ab787169cae133286c6aa9d283bf54b4` |
| 28 | `theorem` | [seed_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/seed-inventory--d68b3111274c55c43b6d3b5e.md) | 77 | `result-track:d68b3111274c55c43b6d3b5e3ee0a5582008f0acfff009520706186c67a2311f` |
| 29 | `theorem` | [before_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before-dictionary--5e69312fd6e0649cce131c3c.md) | 82 | `result-track:5e69312fd6e0649cce131c3c55cf8e557d28a7619e2632c463e1a0daeb5107a6` |
| 30 | `theorem` | [before_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before-wellformed--81f3441e76beb9c973c51055.md) | 88 | `result-track:81f3441e76beb9c973c5105500edece4168622b9868468e099665d4c3db8f69e` |
| 31 | `theorem` | [before_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before-nodes--29fbc55a2dfa1c2f02f763ca.md) | 97 | `result-track:29fbc55a2dfa1c2f02f763cae8f990b71909fa0a10722c21a8c102f53aa0e370` |
| 32 | `theorem` | [before_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before-actual-decode--8f6be267bd5faa22476ca90e.md) | 102 | `result-track:8f6be267bd5faa22476ca90ef7addcc20d6f909c3b064a9c08dd779616cf1c10` |
| 33 | `def` | [after](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after--3c44303c6cc33ad4dc645b7f.md) | 109 | `declaration-track:3c44303c6cc33ad4dc645b7f2d79ab8523065fc0484fcd5c6955b18aeff85eba` |
| 34 | `theorem` | [after_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-wellformed--464dbf4a9f91a55d40a392c7.md) | 111 | `result-track:464dbf4a9f91a55d40a392c72cdc7d3f535a83063718c7a12e68ec221a0d7bc9` |
| 35 | `theorem` | [after_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-dictionary--87b658422b0ba13b8a10d91e.md) | 114 | `result-track:87b658422b0ba13b8a10d91eba9f00dbc90d5712692e7aca3b0d23998d09d9cc` |
| 36 | `theorem` | [after_nodes](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-nodes--22122117edd5519480b9e5fd.md) | 119 | `result-track:22122117edd5519480b9e5fdda279e992f17c1bb7adcf916ca4a72fd0ff46767` |
| 37 | `theorem` | [after_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-references--76a11a8584738037e32b1cd4.md) | 125 | `result-track:76a11a8584738037e32b1cd4181026f6a628154a1a7e950f92ff834a6a41cd9f` |
| 38 | `theorem` | [after_root](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-root--51ac70ee15b4c48d2ec0e79f.md) | 127 | `result-track:51ac70ee15b4c48d2ec0e79fcbc11c222b97634eb91e0e4572104acd7fba113d` |
| 39 | `theorem` | [child_before_parent](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/child-before-parent--f895929bec1cc139876acf4b.md) | 130 | `result-track:f895929bec1cc139876acf4b110887a8cb8a8db27fac8956cfa965ebbade085a` |
| 40 | `theorem` | [after_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/after-actual-decode--9fb781da739c4ccdc6b46e21.md) | 135 | `result-track:9fb781da739c4ccdc6b46e21c388771a41709fc80a741a0a69e252b74d527537` |
| 41 | `def` | [mappedOccurrenceRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/mappedoccurrencerows--87bb04e3a2f0ac837eb3f358.md) | 141 | `declaration-track:87bb04e3a2f0ac837eb3f3587a5c362413486477d48a5985298af75c193e168f` |
| 42 | `theorem` | [actual_occurrences_recovered](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/actual-occurrences-recovered--2bca954a070d9084df685fee.md) | 146 | `result-track:2bca954a070d9084df685fee96a909847e6a88e5ff6cdf94923766c0b677e1e2` |
| 43 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/example--35bba73a2db94e51718a9501.md) | 151 | `declaration-track:35bba73a2db94e51718a95011a26e3c66d7bc32be3b3743aeec9f7284daa002d` |
| 44 | `theorem` | [before_realEntries](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/before-realentries--30835847fd5854255554432c.md) | 156 | `result-track:30835847fd5854255554432cea4a4a4823d7040af14d3ffaa90572a52327008f` |
| 45 | `def` | [oldCertificate](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/oldcertificate--e1d10f3661433ac98d46ae2b.md) | 161 | `declaration-track:e1d10f3661433ac98d46ae2b509d6b3a2559f10db15ae3c2e0f3f373c20e0713` |
| 46 | `theorem` | [certificate_entries](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/certificate-entries--c5a04dc127b2cb7f992f6569.md) | 167 | `result-track:c5a04dc127b2cb7f992f6569dbbe1c5847e432b7868d00b4e3b83c3047e79489` |
| 47 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/example--96b25e15a6681ffcbff1323e.md) | 174 | `declaration-track:96b25e15a6681ffcbff1323e96f8393cae0b9873134c2bb5562784d5d2de9ba2` |
| 48 | `def` | [stale](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale--44f8696648dc78443ed8de84.md) | 181 | `declaration-track:44f8696648dc78443ed8de84ca8e0cc4fa4d72a5e0d99bb38157b796c1904470` |
| 49 | `theorem` | [stale_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale-actual-decode--273e57c633e29e033f746241.md) | 185 | `result-track:273e57c633e29e033f74624140f12e5136dc340d0b6f36051b7fb884e26eebfa` |
| 50 | `theorem` | [stale_reference_bounds](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale-reference-bounds--9b2dfd79eaf2c0caefb6644a.md) | 188 | `result-track:9b2dfd79eaf2c0caefb6644a24ac5ff3b84881c9f19e14c1bdcb5ba7b626c6b9` |
| 51 | `theorem` | [stale_ranks](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale-ranks--bf438b91fc321d810d04adbf.md) | 194 | `result-track:bf438b91fc321d810d04adbfe0454d1faa69df6b8360da8bccda856ee1ecbeb3` |
| 52 | `theorem` | [stale_root_rejected](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale-root-rejected--1a19b623dcf9080b2f839731.md) | 218 | `result-track:1a19b623dcf9080b2f83973119660b0d64939c5a7ea8ef4575c6b893559d1631` |
| 53 | `theorem` | [stale_not_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/stale-not-wellformed--c752affe627a9bc27a589d2b.md) | 223 | `result-track:c752affe627a9bc27a589d2bd2217dcfc5f019812c056e4fc80672117b019cc4` |
| 54 | `theorem` | [actual_numeric_checks_insufficient](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/actual-numeric-checks-insufficient--352981f906555696f577b524.md) | 228 | `result-track:352981f906555696f577b5247e059b0f191a4772d61766c0757d3a0207aa1920` |
| 55 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/example--27862cd2eedf16f1ebe77bf2.md) | 235 | `declaration-track:27862cd2eedf16f1ebe77bf2e15bbe5cffd16d33eaf265704d2d965f5c1bd7be` |
| 56 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableReindex.lean/declarations/example--757fd5f67dbc03b07e7fecfb.md) | 238 | `declaration-track:757fd5f67dbc03b07e7fecfbb0b77e8f4538ceec310612da04bba812abbab55a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
