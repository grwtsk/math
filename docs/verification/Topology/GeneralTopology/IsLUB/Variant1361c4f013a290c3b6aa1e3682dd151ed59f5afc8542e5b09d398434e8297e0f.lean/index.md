# Verification target: GRWTSK.Topology.GeneralTopology.IsLUB.Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "942b60699816bcfa05ef0bc486065ffb784bdefa",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `942b60699816bcfa05ef0bc486065ffb784bdefa`.

Source path: `GRWTSK/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LeftRightNhds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLUB.frequently_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-frequently-mem--a3e0eba51be703741db212ea.md) | 31 | `result-track:a3e0eba51be703741db212eaa6161f2193a53f64ce85d6e3d7ae4b55ee3671f0` |
| 2 | `theorem` | [IsLUB.frequently_nhds_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-frequently-nhds-mem--9261fabef764ec24039367fa.md) | 41 | `result-track:9261fabef764ec24039367fa45bedaf7a1277f3e1d34f4b28627ed332dcb00b6` |
| 3 | `theorem` | [IsGLB.frequently_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-frequently-mem--44e9e86706b25b17e60e6ce4.md) | 45 | `result-track:44e9e86706b25b17e60e6ce4376519513d84fb92d496657f29990cb5abaeb61b` |
| 4 | `theorem` | [IsGLB.frequently_nhds_mem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-frequently-nhds-mem--5eb9a91701760e4ec9ade1ba.md) | 49 | `result-track:5eb9a91701760e4ec9ade1bab7ab96baf556cc118916eae7134cb75445755052` |
| 5 | `theorem` | [IsLUB.mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-mem-closure--b254b8be1c4b9e660e9eb1a2.md) | 53 | `result-track:b254b8be1c4b9e660e9eb1a2d2bfe6d6a40fe698d9fc193224d78a8c3440e7b8` |
| 6 | `theorem` | [IsGLB.mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-mem-closure--68936b8a2bb0b557fca23265.md) | 56 | `result-track:68936b8a2bb0b557fca23265cfd4e804652c4d33c21cdee9e0cacfd4794064ca` |
| 7 | `theorem` | [IsLUB.nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-nhdswithin-nebot--2f55eae308547a278166ded3.md) | 59 | `result-track:2f55eae308547a278166ded3b26a3261fcb79c51eeecd9712452a962a275ada0` |
| 8 | `theorem` | [IsGLB.nhdsWithin_neBot](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-nhdswithin-nebot--84a4d801958b5b524731c147.md) | 63 | `result-track:84a4d801958b5b524731c147896bf7e5872c6f18fdce482519a12722f27bdfc3` |
| 9 | `theorem` | [isLUB_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-of-mem-nhds--d81c40b078181f85b1e00dab.md) | 67 | `result-track:d81c40b078181f85b1e00dabf9234b5c6facb491791d6988091dddac451bd676` |
| 10 | `theorem` | [isLUB_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-of-mem-closure--f2bb1b093f6ba0f503a7b856.md) | 76 | `result-track:f2bb1b093f6ba0f503a7b856806fd85663486e4057ca764fce634a1ad4cf2996` |
| 11 | `theorem` | [isGLB_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-of-mem-nhds--e02c6502189d6a6eadcb1623.md) | 81 | `result-track:e02c6502189d6a6eadcb162376a4f552441e5110e6a0a638cdf6faba4a84bb36` |
| 12 | `theorem` | [isGLB_of_mem_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-of-mem-closure--fe678e0020ff31ffde7de34f.md) | 86 | `result-track:fe678e0020ff31ffde7de34f770686d2665c886df8ccda8027430a2c2eba05ad` |
| 13 | `theorem` | [IsLUB.mem_upperBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-mem-upperbounds-of-tendsto--8271fc282f6ee68745900ced.md) | 90 | `result-track:8271fc282f6ee68745900cedeeaa6a0fa372350b0b51d92b1b24ec4c77e5aeae` |
| 14 | `theorem` | [IsLUB.isLUB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-islub-of-tendsto--570fb44da0b15eedf882b783.md) | 101 | `result-track:570fb44da0b15eedf882b783126e3e313db1d484a1f7f3f6c3e39d0cc2dac25f` |
| 15 | `theorem` | [IsGLB.mem_lowerBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-mem-lowerbounds-of-tendsto--fb32626735dbb1c6f3eb36c0.md) | 108 | `result-track:fb32626735dbb1c6f3eb36c0d87f57f7b4dededd5c79943216dcc851dd8cc9ad` |
| 16 | `theorem` | [IsGLB.isGLB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-isglb-of-tendsto--4b1908801cfec78134c14921.md) | 116 | `result-track:4b1908801cfec78134c14921791cb141deb7645710386ebd81ce44f8a2310b78` |
| 17 | `theorem` | [IsLUB.mem_lowerBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-mem-lowerbounds-of-tendsto--7422440b5dcb16dbe0a5fad6.md) | 121 | `result-track:7422440b5dcb16dbe0a5fad6993f669532fe157a2b657887b4675c4edc49eb44` |
| 18 | `theorem` | [IsLUB.isGLB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-isglb-of-tendsto--849e3d71168ee37401103f3f.md) | 126 | `result-track:849e3d71168ee37401103f3f6ed93d4bd6764a661b1d5e790adfdc4db31f5e8e` |
| 19 | `theorem` | [IsGLB.mem_upperBounds_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-mem-upperbounds-of-tendsto--f736a4ace07ca3fc79a375ee.md) | 131 | `result-track:f736a4ace07ca3fc79a375eeb2282773ec1a136f6d9990928c63de39f7b7987f` |
| 20 | `theorem` | [IsGLB.isLUB_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-islub-of-tendsto--2e5d845afca4af775276c18a.md) | 136 | `result-track:2e5d845afca4af775276c18a363b067f4edf2a955fdabef537af74274fe557f4` |
| 21 | `theorem` | [IsLUB.mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-mem-of-isclosed--79b0abe6d99fbbe670ee8d8c.md) | 141 | `result-track:79b0abe6d99fbbe670ee8d8ca306960a79b97b59775c24385a8b62ea912011b0` |
| 22 | `theorem` | [IsGLB.mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-mem-of-isclosed--6ba7ad78686931a58b6bd902.md) | 147 | `result-track:6ba7ad78686931a58b6bd902304088af9bfe75c40c4b37a9be33a04585d616c2` |
| 23 | `theorem` | [isLUB_iff_of_subset_of_subset_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-iff-of-subset-of-subset-closure--560fe111ef60e4cb9313576c.md) | 153 | `result-track:560fe111ef60e4cb9313576c0444f2fe301c316bcaf99f1ae0aafa612054a8d7` |
| 24 | `theorem` | [isGLB_iff_of_subset_of_subset_closure](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-iff-of-subset-of-subset-closure--f6a3de0c1affb3c51ab1488b.md) | 159 | `result-track:f6a3de0c1affb3c51ab1488b670c4912d2c2ee02dbca0b07673d4a7b999645fd` |
| 25 | `theorem` | [Dense.isLUB_inter_iff](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-islub-inter-iff--53a92475d97ef57531610f0f.md) | 164 | `result-track:53a92475d97ef57531610f0f0308080c203fae7925df05de935c5ee1174c071c` |
| 26 | `theorem` | [Dense.isGLB_inter_iff](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-isglb-inter-iff--4fca9603892c6189583d50ba.md) | 169 | `result-track:4fca9603892c6189583d50ba31149f1064e2e17cb93ac7ff49a3a1711b2072b7` |
| 27 | `theorem` | [IsLUB.exists_seq_strictMono_tendsto_of_notMem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-exists-seq-strictmono-tendsto-of-notmem--686c012dceae152c41cad5c2.md) | 178 | `result-track:686c012dceae152c41cad5c25a13b574b1bec95ea72113acd09a092110d60e94` |
| 28 | `theorem` | [IsLUB.exists_seq_monotone_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/islub-exists-seq-monotone-tendsto--309ed47728a9928f39689df6.md) | 195 | `result-track:309ed47728a9928f39689df68a50f3406e3065884ea04ffdc58717a9383fb14a` |
| 29 | `theorem` | [exists_seq_strictMono_tendsto'](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictmono-tendsto--5aa33543018b2b22675b3312.md) | 203 | `result-track:5aa33543018b2b22675b33120629a6e1a69528d9aec7c80b10537d228e0a48a7` |
| 30 | `theorem` | [exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictmono-tendsto--4afd248faf03d53b169a1c7a.md) | 211 | `result-track:4afd248faf03d53b169a1c7a8f26f3e47e8f23bbfd5a24f3e1ae305e4bc2df3e` |
| 31 | `theorem` | [exists_seq_strictMono_tendsto_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictmono-tendsto-nhdswithin--dd3d4959a733e8c2aa8a6424.md) | 217 | `result-track:dd3d4959a733e8c2aa8a6424a7b7ff34b5c3d0b953cdcb473b5b564207028ce4` |
| 32 | `theorem` | [exists_seq_tendsto_sSup](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-tendsto-ssup--d10705e855b2e8ae32141443.md) | 223 | `result-track:d10705e855b2e8ae32141443f1682996aec1929ea4e9e8feae0dfebcf0ad05b4` |
| 33 | `theorem` | [Dense.exists_seq_strictMono_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-exists-seq-strictmono-tendsto-of-lt--f913993ac147abf5231c41fa.md) | 229 | `result-track:f913993ac147abf5231c41fa857683b3862fb0afa6a6ecd2c139d87a512c7e3f` |
| 34 | `theorem` | [Dense.exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-exists-seq-strictmono-tendsto--a286b52e2a4f1fb8d7a61564.md) | 239 | `result-track:a286b52e2a4f1fb8d7a61564d619ae90b13a7e70e0db5d08034fde8662d273cc` |
| 35 | `theorem` | [DenseRange.exists_seq_strictMono_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/denserange-exists-seq-strictmono-tendsto-of-lt--2f0cb9e41f8180723ebd9ebc.md) | 246 | `result-track:2f0cb9e41f8180723ebd9ebca7f128d2703d190c8ca612e1a194b8dfae13fc29` |
| 36 | `theorem` | [DenseRange.exists_seq_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/denserange-exists-seq-strictmono-tendsto--243956983d28898bba6c87b7.md) | 257 | `result-track:243956983d28898bba6c87b7579c1dfbd68fbf42b75b4351f07775a023a704bc` |
| 37 | `theorem` | [IsGLB.exists_seq_strictAnti_tendsto_of_notMem](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-exists-seq-strictanti-tendsto-of-notmem--9d08883c569ab04ad331ad51.md) | 268 | `result-track:9d08883c569ab04ad331ad51a37a8b5089d0953608a8b6854466ba0d80554268` |
| 38 | `theorem` | [IsGLB.exists_seq_antitone_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/isglb-exists-seq-antitone-tendsto--fd39f9942df07fd19884db73.md) | 277 | `result-track:fd39f9942df07fd19884db739f285d9c6c20bfd9f322c5b31cf18a3a224fa426` |
| 39 | `theorem` | [exists_seq_strictAnti_tendsto'](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictanti-tendsto--17c4dad794a08f8a2a39de51.md) | 282 | `result-track:17c4dad794a08f8a2a39de51fc7d04d311772e893d8e9aa2c5afefba857cb1a7` |
| 40 | `theorem` | [exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictanti-tendsto--76bd3592cc8cc20de1fa3547.md) | 286 | `result-track:76bd3592cc8cc20de1fa3547d0809fe0938cd4af093a4399bc85a0e93eb19d1f` |
| 41 | `theorem` | [exists_seq_strictAnti_tendsto_nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictanti-tendsto-nhdswithin--b2317a137679f1cee473ddfb.md) | 290 | `result-track:b2317a137679f1cee473ddfb8266244f54aa4e7fcb1abe914acad4bb9b5a5c33` |
| 42 | `theorem` | [exists_seq_strictAnti_strictMono_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-strictanti-strictmono-tendsto--ccf3f215a339d993d5f20059.md) | 295 | `result-track:ccf3f215a339d993d5f20059ba1d0baa904c9227666bdb17cbe962a15d98a5c9` |
| 43 | `theorem` | [exists_seq_tendsto_sInf](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/exists-seq-tendsto-sinf--9e2afd7f35955b9602058dd1.md) | 305 | `result-track:9e2afd7f35955b9602058dd101aa76f2a3b3b6962c62c3698b31fa639c618433` |
| 44 | `theorem` | [Dense.exists_seq_strictAnti_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-exists-seq-strictanti-tendsto-of-lt--09dd9015a687e6feaf21ae42.md) | 310 | `result-track:09dd9015a687e6feaf21ae42d3f89e2ed5918722ad10805523ef0434c32df517` |
| 45 | `theorem` | [Dense.exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/dense-exists-seq-strictanti-tendsto--19d6d43f31b565731ec6c4ce.md) | 315 | `result-track:19d6d43f31b565731ec6c4cefc7ed7a9c2ffb4610bfb58852c97ea9c984da123` |
| 46 | `theorem` | [DenseRange.exists_seq_strictAnti_tendsto_of_lt](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/denserange-exists-seq-strictanti-tendsto-of-lt--86df404a07d021ebe82ee04b.md) | 320 | `result-track:86df404a07d021ebe82ee04b967552bc4eff88c45ad1f41e7c9e85574c1a1b4f` |
| 47 | `theorem` | [DenseRange.exists_seq_strictAnti_tendsto](../../../../../mathematics/Topology/GeneralTopology/IsLUB/Variant1361c4f013a290c3b6aa1e3682dd151ed59f5afc8542e5b09d398434e8297e0f.lean/declarations/denserange-exists-seq-strictanti-tendsto--b3308519a72da7245197c06e.md) | 327 | `result-track:b3308519a72da7245197c06eae052a3b4f7915a918bd1849c01d6ce1fe4004ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
