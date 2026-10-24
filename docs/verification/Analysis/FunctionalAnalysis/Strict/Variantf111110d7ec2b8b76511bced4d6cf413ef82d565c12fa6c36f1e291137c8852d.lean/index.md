# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Strict.Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d742b62ca1bd0190806900f13e1ff363e6ccf83c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d742b62ca1bd0190806900f13e1ff363e6ccf83c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean.json)

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
| 1 | `def` | [StrictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex--e71367193c44f5fa9e52c4a2.md) | 45 | `declaration-track:e71367193c44f5fa9e52c4a251e18d90549e5f258787e8cfbcd66786efb51deb` |
| 2 | `theorem` | [strictConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iff-opensegment-subset--e1c689bde09207b2247c5606.md) | 62 | `result-track:e1c689bde09207b2247c56068ec4b09389645158392ae87cb2be180dec9746e3` |
| 3 | `theorem` | [StrictConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-opensegment-subset--732f5dd7a44eb924c5a68cea.md) | 66 | `result-track:732f5dd7a44eb924c5a68cea39c866f07426b94c40f6cf1a6b9ed2e27afcf721` |
| 4 | `theorem` | [strictConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-empty--03551147c0c3915a91e813f3.md) | 70 | `result-track:03551147c0c3915a91e813f377a194285f02932e91c93d832e4537323659b310` |
| 5 | `theorem` | [strictConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-univ--1b313a85480e7c8c04605904.md) | 73 | `result-track:1b313a85480e7c8c0460590436039f85cf3e6b332b7fee35b69dee8c778974d7` |
| 6 | `theorem` | [StrictConvex.eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-eq--7792175c999b4b1e61a25ef3.md) | 78 | `result-track:7792175c999b4b1e61a25ef3e6b2fcf113c2a90895c0604568c5241fc75f5e3f` |
| 7 | `theorem` | [StrictConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-inter--c5b920f9da37c550d99238fb.md) | 82 | `result-track:c5b920f9da37c550d99238fb19041c7014494a78bfd47dc316b125c368fd0784` |
| 8 | `theorem` | [Directed.strictConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/directed-strictconvex-iunion--da05ed5c675056da032586a9.md) | 88 | `result-track:da05ed5c675056da032586a987b40fcb499bb2de1a377e799772c5849b7b3736` |
| 9 | `theorem` | [DirectedOn.strictConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/directedon-strictconvex-sunion--70dc53de55e1c3274efef3c3.md) | 97 | `result-track:70dc53de55e1c3274efef3c360317690893de8add77d5d674e1f5dc94b6d3c09` |
| 10 | `theorem` | [StrictConvex.convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-convex--b8c1979236e8e7e8f9554e00.md) | 108 | `result-track:b8c1979236e8e7e8f9554e00c22324f0f77faf2e1a78baa4767d58ff38b4d70d` |
| 11 | `theorem` | [Convex.strictConvex_of_isOpen](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/convex-strictconvex-of-isopen--ca17fb79408ed1d8ad830c2b.md) | 113 | `result-track:ca17fb79408ed1d8ad830c2b071cf4934091a4fa380c3f1421add22f3f94f3fd` |
| 12 | `theorem` | [IsOpen.strictConvex_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/isopen-strictconvex-iff--3bd462c2b03ba638ce24eb1d.md) | 117 | `result-track:3bd462c2b03ba638ce24eb1df576d7eaa8c3d08eabda2467919fe1a6c0fa91fa` |
| 13 | `theorem` | [strictConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-singleton--0041c981a2f19f365ef6e315.md) | 120 | `result-track:0041c981a2f19f365ef6e315b8e69f37ca76dfeef713abb29141adb41b149bdb` |
| 14 | `theorem` | [Set.Subsingleton.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/set-subsingleton-strictconvex--c81fa5bd62c092aa3bfc7d93.md) | 123 | `result-track:c81fa5bd62c092aa3bfc7d93bdc3b5279234e1c773bd98e1141b8af5cda8bf85` |
| 15 | `theorem` | [StrictConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-linear-image--c5fd0f441f214c59b97ab802.md) | 126 | `result-track:c5fd0f441f214c59b97ab802627247c7ca5b27dda853fbab65a5eb38bb6c119d` |
| 16 | `theorem` | [StrictConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-is-linear-image--34aa6c8849a6002cb81daac8.md) | 133 | `result-track:34aa6c8849a6002cb81daac804ebc6377fa771d191f377b2aa50f7b74a8e5c2a` |
| 17 | `theorem` | [StrictConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-linear-preimage--5d9992395ab416d1ec46a822.md) | 137 | `result-track:5d9992395ab416d1ec46a822944a69dad637d0f668f8c2970d29d82385e73db4` |
| 18 | `theorem` | [StrictConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-is-linear-preimage--b7c6ff4670f572589d1baa76.md) | 144 | `result-track:b7c6ff4670f572589d1baa766c1ba239f3b4d578a14c3dc300b2629b8e07ea78` |
| 19 | `theorem` | [Set.OrdConnected.strictConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/set-ordconnected-strictconvex--2403002183d5d1be193a1be5.md) | 154 | `result-track:2403002183d5d1be193a1be5ef0497c99d6b7240c43ae2a363649cc3e34e250d` |
| 20 | `theorem` | [strictConvex_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iic--843dc87fe006c170da3f573b.md) | 162 | `result-track:843dc87fe006c170da3f573b9b442814dad7140429b18208d90e2b8e9d968140` |
| 21 | `theorem` | [strictConvex_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-ici--9ba8c6f61b83d06db25554a8.md) | 165 | `result-track:9ba8c6f61b83d06db25554a89d4945fd17e87631322352b9e9a2ff2f8f09cd7a` |
| 22 | `theorem` | [strictConvex_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iio--07908dba2a083967fc3ced26.md) | 168 | `result-track:07908dba2a083967fc3ced267ecc56dc8a5fc012573b283636df232137d9af3b` |
| 23 | `theorem` | [strictConvex_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-ioi--927332b39fd85b50037cdde9.md) | 171 | `result-track:927332b39fd85b50037cdde96bc7acf0cb4cdccb745de960787e8bf504f59134` |
| 24 | `theorem` | [strictConvex_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-icc--5fdf92c168ca8b9d170daec0.md) | 174 | `result-track:5fdf92c168ca8b9d170daec030913be8ddab70dd4c8ce04f07638e815e0de386` |
| 25 | `theorem` | [strictConvex_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-ioo--7430627e412ce73bafdce685.md) | 177 | `result-track:7430627e412ce73bafdce685cad9a9185cfb3c33c7649929ef3bf4aec328ed1a` |
| 26 | `theorem` | [strictConvex_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-ico--cb472662b866a538cd59b323.md) | 180 | `result-track:cb472662b866a538cd59b32335db8dedce895eb0b00e93ea09e59ebfcda6edb0` |
| 27 | `theorem` | [strictConvex_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-ioc--5626e90206499cfe9fc235f1.md) | 183 | `result-track:5626e90206499cfe9fc235f1f5b00a7ed0668c1a45bf0c9cb03263b415e49fe9` |
| 28 | `theorem` | [strictConvex_uIcc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-uicc--8694aacd8906c85551ca4375.md) | 186 | `result-track:8694aacd8906c85551ca437505c127007fea3375cf75403752b7bd5fbd3d7bc8` |
| 29 | `theorem` | [strictConvex_uIoc](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-uioc--b0a50b5a6ad7cb79b38150ce.md) | 189 | `result-track:b0a50b5a6ad7cb79b38150ceaa6c5eb7724e5d7fa221cece403406382e2b2145` |
| 30 | `theorem` | [StrictConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-preimage-add-right--b867c7e55df688cc7b4a7bfd.md) | 203 | `result-track:b867c7e55df688cc7b4a7bfd5d65c75d32b075c232642d56935a12254c6d759d` |
| 31 | `theorem` | [StrictConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-preimage-add-left--5980c5f1bd7c65935898e499.md) | 211 | `result-track:5980c5f1bd7c65935898e49947ef85a7e8fff5156588bf2a6c981c365a50e99d` |
| 32 | `theorem` | [StrictConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-add--3e8b816f2bcc46c65276bacb.md) | 225 | `result-track:3e8b816f2bcc46c65276bacbc8c6dd692cb225c1fac29168fb1b47fc1db88621` |
| 33 | `theorem` | [StrictConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-add-left--9023d53f0c5ba5e0d2ee6b83.md) | 239 | `result-track:9023d53f0c5ba5e0d2ee6b83579f5873ee20eb1b438bcd98263f1e79049ef57f` |
| 34 | `theorem` | [StrictConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-add-right--e7da89b5daf302bb8ef8990e.md) | 243 | `result-track:e7da89b5daf302bb8ef8990e51f7b29c5c12d0f197a0856e60a35b930767421b` |
| 35 | `theorem` | [StrictConvex.vadd](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-vadd--c5e74e9e7aa606ba49e7ac44.md) | 247 | `result-track:c5e74e9e7aa606ba49e7ac44be0e29bd3028cd751f2b9ed0e271a9c8d5e812a9` |
| 36 | `theorem` | [StrictConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-smul--c30b22d9893b6fb31dabf69d.md) | 257 | `result-track:c30b22d9893b6fb31dabf69dad0b39510565b8246f1e8a55c59ec1575469766b` |
| 37 | `theorem` | [StrictConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-affinity--56bfb7dbf2070ebd3ebb9f54.md) | 262 | `result-track:56bfb7dbf2070ebd3ebb9f5489a73caba757c7e2a3206e25ba4a8aeffe238767` |
| 38 | `theorem` | [StrictConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-preimage-smul--d718a7473b5cc2dae8c75655.md) | 276 | `result-track:d718a7473b5cc2dae8c756551ac926bc942f60a1dad974ddd5bbe03aaa8018fa` |
| 39 | `theorem` | [StrictConvex.eq_of_openSegment_subset_frontier](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-eq-of-opensegment-subset-frontier--3c47ffe9697f45cc1d25b8b3.md) | 298 | `result-track:3c47ffe9697f45cc1d25b8b3a8bfc2448165dcdf085c0219489ae5af272a01ba` |
| 40 | `theorem` | [StrictConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-add-smul-mem--7b8780f9f711654e3317293b.md) | 309 | `result-track:7b8780f9f711654e3317293bfcf791a3d59301d913fad46ca58e2f1b6ddaa552` |
| 41 | `theorem` | [StrictConvex.smul_mem_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-smul-mem-of-zero-mem--0a52157002e0edbb68e9d0ee.md) | 317 | `result-track:0a52157002e0edbb68e9d0ee7edc0494b2bea60131eea8ce3907f59596c2dfd9` |
| 42 | `theorem` | [StrictConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-add-smul-sub-mem--f67e019c15bbaab323d15809.md) | 322 | `result-track:f67e019c15bbaab323d15809db9d0b51733a4d1219f64ec7618e1d374f3c7711` |
| 43 | `theorem` | [StrictConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-affine-preimage--047fc290a991d44fd8b0e5e1.md) | 330 | `result-track:047fc290a991d44fd8b0e5e1b54f9f5bbacb5b621b8d39723bf2a14ae0a9efba` |
| 44 | `theorem` | [StrictConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-affine-image--0792aab32e6fcc0d1fa23999.md) | 338 | `result-track:0792aab32e6fcc0d1fa23999b03a9371db16c44c4c0d3c66d01fd91f6e59d9a0` |
| 45 | `theorem` | [StrictConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-neg--f37e77cbb11577c63e92eb28.md) | 347 | `result-track:f37e77cbb11577c63e92eb2856e4610ac187fdc9574e35785324e5c821567f53` |
| 46 | `theorem` | [StrictConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-sub--5132b0fb2d8437d773b48510.md) | 350 | `result-track:5132b0fb2d8437d773b48510d587b8532c775228fd58ae4a9e8d5197bfd8b82d` |
| 47 | `theorem` | [strictConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iff-div--91687f932efa376a27f51476.md) | 366 | `result-track:91687f932efa376a27f5147679e7e4238c30cfd10d534d4886e23751fc896803` |
| 48 | `theorem` | [StrictConvex.mem_smul_of_zero_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-mem-smul-of-zero-mem--17303ccb17915195f1ac2edc.md) | 374 | `result-track:17303ccb17915195f1ac2edc66cfe3977e25f8a3d5d6bcedda9f2004fbb8662a` |
| 49 | `theorem` | [strictConvex_iff_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iff-convex--0df1ee7f9863b1858be2aff6.md) | 397 | `result-track:0df1ee7f9863b1858be2aff6e6bdddb51f71487bfdbb8b099759744717beb3b0` |
| 50 | `theorem` | [strictConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Strict/Variantf111110d7ec2b8b76511bced4d6cf413ef82d565c12fa6c36f1e291137c8852d.lean/declarations/strictconvex-iff-ordconnected--26ed8f80350ca25c88b19ae8.md) | 400 | `result-track:26ed8f80350ca25c88b19ae839d4551a9d3260eec56b8d6071451304a6b5392c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
