# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Star.Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1651311c8511dbaa38a39efc43096f0b13dc866b",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1651311c8511dbaa38a39efc43096f0b13dc866b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Segment` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [StarConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex--7cf900cf0bbc82cc10a292e9.md) | 78 | `declaration-track:7cf900cf0bbc82cc10a292e9b471a3cae072e2715574edc013c5c74762283b40` |
| 2 | `theorem` | [starConvex_iff_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-segment-subset--3ad39ce84ec473fdeba9cfad.md) | 84 | `result-track:3ad39ce84ec473fdeba9cfada8629da4ffecc4c4685f8ad25a3aa8495c3e7c08` |
| 3 | `theorem` | [StarConvex.segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-segment-subset--57a6bc92713ec68f61b90d09.md) | 91 | `result-track:57a6bc92713ec68f61b90d09ba90a5976802caf3416ea76702396752567c6cb3` |
| 4 | `theorem` | [StarConvex.openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-opensegment-subset--255e9e2d061f3149f49a6a2c.md) | 94 | `result-track:255e9e2d061f3149f49a6a2cb3591b4c3f60944aacff00d6db9225d5b66089c0` |
| 5 | `theorem` | [starConvex_iff_pointwise_add_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-pointwise-add-subset--79958c8e65cbd037d27d03c7.md) | 99 | `result-track:79958c8e65cbd037d27d03c705c6bb4c1d9867d459f768b95fa0e85b134b72a3` |
| 6 | `theorem` | [starConvex_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-empty--fe18329442bc14422ffb659a.md) | 107 | `result-track:fe18329442bc14422ffb659a41bc0c15d81b30f0c58e7055ccd589201013be54` |
| 7 | `theorem` | [starConvex_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-univ--c9e96ba9545394634b9679f3.md) | 109 | `result-track:c9e96ba9545394634b9679f3d659034e867b6e6d16143941c146c218825acd6b` |
| 8 | `theorem` | [StarConvex.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-inter--cd2092aff7921482d7929dc9.md) | 111 | `result-track:cd2092aff7921482d7929dc95e24fd824f3ac2460629c1a3d115b5abff304eab` |
| 9 | `theorem` | [starConvex_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-sinter--984159374ec517729aa8ea01.md) | 114 | `result-track:984159374ec517729aa8ea0112ae2a4fbb3fa9378267a52bfbba1c4ca34f664e` |
| 10 | `theorem` | [starConvex_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iinter--60468849822fd676828426b5.md) | 117 | `result-track:60468849822fd676828426b5b93cb293055d365f77323723dedcb5a8371c0f3a` |
| 11 | `theorem` | [starConvex_iInter₂](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iinter--48755d445d7874f6acbadeac.md) | 121 | `result-track:48755d445d7874f6acbadeacb378d31562baf0acc68b5cee44ab927734e2c362` |
| 12 | `theorem` | [StarConvex.union](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-union--0c0b4b4ea442438f95869c8e.md) | 125 | `result-track:0c0b4b4ea442438f95869c8e62861ad1ebf5ed2748e4012bd5357214ed910e2d` |
| 13 | `theorem` | [starConvex_iUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iunion--e3c0fcd34ff2dd61fcaff9ec.md) | 131 | `result-track:e3c0fcd34ff2dd61fcaff9ec84ac575e96c9b67242682cd3e064e88731fd8d43` |
| 14 | `theorem` | [starConvex_iUnion₂](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iunion--87df3d6299e5937a3273a4d0.md) | 138 | `result-track:87df3d6299e5937a3273a4d05a2c6b21cbc0dcaf3f955c897d4c4e1d68809540` |
| 15 | `theorem` | [starConvex_sUnion](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-sunion--910b18e0fba99ee197aeba91.md) | 142 | `result-track:910b18e0fba99ee197aeba9108d37fd9d1ea545b40109c45126b92dbb2c8122d` |
| 16 | `theorem` | [StarConvex.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-prod--cca6c426be3576403bd3629c.md) | 147 | `result-track:cca6c426be3576403bd3629c55c60f334f1ec59ab075a13589abdba98a9a51c9` |
| 17 | `theorem` | [starConvex_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-pi--ef8b48b9d7268e646e90ae59.md) | 151 | `result-track:ef8b48b9d7268e646e90ae59603709d899ebfa9a9462af26b1613c6e6608afcc` |
| 18 | `theorem` | [StarConvex.mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-mem--429d6b2d56af9cc8665e1772.md) | 161 | `result-track:429d6b2d56af9cc8665e177244818fd5c82f8a342217205bec6a27cdd7bd1b92` |
| 19 | `theorem` | [starConvex_iff_forall_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-forall-pos--0f8565a184bffed520ab4546.md) | 166 | `result-track:0f8565a184bffed520ab454676840f450f8eb175e3ca1371fa0f58c99a5a0631` |
| 20 | `theorem` | [starConvex_iff_forall_ne_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-forall-ne-pos--aa31c11f42a31ab50672daf9.md) | 178 | `result-track:aa31c11f42a31ab50672daf9e17c5b09500ccdb72e3b3076e376b9a0cf55f0fa` |
| 21 | `theorem` | [starConvex_iff_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-opensegment-subset--9acfbd4992f59831e9b44f33.md) | 193 | `result-track:9acfbd4992f59831e9b44f3374d4a2da02378eab4d0cd536ee4d6ac471457d8f` |
| 22 | `theorem` | [starConvex_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-singleton--6b2ab9a2594bf7b0185e7dc0.md) | 198 | `result-track:6b2ab9a2594bf7b0185e7dc0820c72948a1c5ddb9cc78231520efd4d43f23ed3` |
| 23 | `theorem` | [StarConvex.linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-linear-image--580a34863f1773e94f69e987.md) | 202 | `result-track:580a34863f1773e94f69e9872bd4082b224914aba74e091a88c9af3a994b4ea0` |
| 24 | `theorem` | [StarConvex.is_linear_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-is-linear-image--f006145619f075b96331b8b1.md) | 207 | `result-track:f006145619f075b96331b8b1b3443c9d3fd68a1c4909ebd5f33ecf70d3f2ca12` |
| 25 | `theorem` | [StarConvex.linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-linear-preimage--b1bc90e7620add76ed8dfe77.md) | 211 | `result-track:b1bc90e7620add76ed8dfe7703f5a8074417dfee074d91d5bac57b6e74367868` |
| 26 | `theorem` | [StarConvex.is_linear_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-is-linear-preimage--1e020592e90056b10551e386.md) | 217 | `result-track:1e020592e90056b10551e386dbf2e0293d6efb638b3a8afbecade39780029351` |
| 27 | `theorem` | [StarConvex.add](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-add--f5b78af34efe7bc19b2a9b08.md) | 221 | `result-track:f5b78af34efe7bc19b2a9b086f02cddd9a430c6136f2c97fd1c024afc1a5696e` |
| 28 | `theorem` | [StarConvex.add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-add-left--9018acf2ffb5857c3ad9c05d.md) | 226 | `result-track:9018acf2ffb5857c3ad9c05d357d8b3b5bb5a9ce05216c71e1a341adb4db9f18` |
| 29 | `theorem` | [StarConvex.add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-add-right--842deb073117598d4fac1c2a.md) | 233 | `result-track:842deb073117598d4fac1c2a35ef362cdf16ed212168913479b87a0103ced741` |
| 30 | `theorem` | [StarConvex.preimage_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-preimage-add-right--dbcabb439fbebebbc397bbf9.md) | 241 | `result-track:dbcabb439fbebebbc397bbf9efdb88b8be1fd499a347b5a3bc1aba636a43fb45` |
| 31 | `theorem` | [StarConvex.preimage_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-preimage-add-left--33709e40390be5c4932519f2.md) | 248 | `result-track:33709e40390be5c4932519f26c034e13d49e581ae76d951d38c77bec793640ba` |
| 32 | `theorem` | [StarConvex.sub'](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-sub--089930032e2789f8dbca81fe.md) | 261 | `result-track:089930032e2789f8dbca81fe51bbf7fea3c2bd5f1cf3cfbbf3b01321db4fef1c` |
| 33 | `theorem` | [StarConvex.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-smul--9d24a98cb433e163ca762e1c.md) | 277 | `result-track:9d24a98cb433e163ca762e1ceeb2035b319b4d0dbc76829cf581f82cdc7812f3` |
| 34 | `theorem` | [StarConvex.zero_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-zero-smul--de87e83eb75a42798f1bbce7.md) | 280 | `result-track:de87e83eb75a42798f1bbce79b93cea07e5d686dff21264dbc07e9e9ddd142cd` |
| 35 | `theorem` | [StarConvex.preimage_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-preimage-smul--bb91bcc6728bcbaeacb013f8.md) | 283 | `result-track:bb91bcc6728bcbaeacb013f80008b79a088e3f113d515bc810850dddda896319` |
| 36 | `theorem` | [StarConvex.affinity](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-affinity--206d47a27eb197fdb84edac7.md) | 287 | `result-track:206d47a27eb197fdb84edac77f1f654ed7892a444ce1b33a1548703910a01ac7` |
| 37 | `theorem` | [starConvex_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-zero-iff--6936262654ca3fc2f992e8c7.md) | 304 | `result-track:6936262654ca3fc2f992e8c7b0fa652e7eb081998deaf7c405c5d1f5f14241ca` |
| 38 | `theorem` | [StarConvex.add_smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-add-smul-mem--807443da9b41a8f823134af4.md) | 322 | `result-track:807443da9b41a8f823134af411984f0baf248a91c82f3d49abc789398edfc223` |
| 39 | `theorem` | [StarConvex.smul_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-smul-mem--8cf8241a637218b54a5bf09d.md) | 329 | `result-track:8cf8241a637218b54a5bf09d51571929d34f8952e26dba3957f1cf6da779dc34` |
| 40 | `theorem` | [StarConvex.add_smul_sub_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-add-smul-sub-mem--56e7cbde8fd55d2d046c6273.md) | 332 | `result-track:56e7cbde8fd55d2d046c627361c61b4c2e5fe3d9829a3282907b88f323a293a1` |
| 41 | `theorem` | [StarConvex.affine_preimage](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-affine-preimage--111d7896c73bc55709a79389.md) | 343 | `result-track:111d7896c73bc55709a793895c01455e21b523d8ddf8eb1cc92ac27e050d99af` |
| 42 | `theorem` | [StarConvex.affine_image](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-affine-image--605e75168cd1f01bab3bc681.md) | 350 | `result-track:605e75168cd1f01bab3bc681fbc8843bd0f9f124b72dc3d6036fa8b073885111` |
| 43 | `theorem` | [StarConvex.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-neg--86ed624a48bdafd3da579583.md) | 356 | `result-track:86ed624a48bdafd3da579583a354c9926f7a303222bfc1537f102acba0c1bf4c` |
| 44 | `theorem` | [StarConvex.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-sub--99042a33f2097237b954b6ed.md) | 360 | `result-track:99042a33f2097237b954b6ed224c59ab92b97e4700b7cdfed1217b925b06b2f6` |
| 45 | `lemma` | [starConvex_compl_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-compl-iic--4a0e9f10aa1662cbcca3aef8.md) | 373 | `result-track:4a0e9f10aa1662cbcca3aef8f79a222df322b97525aca3f7b8a690a01abf495a` |
| 46 | `lemma` | [starConvex_compl_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-compl-ici--17b612d3cf4e9fa0e10c9b8b.md) | 385 | `result-track:17b612d3cf4e9fa0e10c9b8bc15352d4ae8e31d032b26328fd3d86d4143df69a` |
| 47 | `theorem` | [starConvex_iff_div](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-div--d80fd456b8eeff16cf6ee751.md) | 401 | `result-track:d80fd456b8eeff16cf6ee7512ad423613a11510cd9ddc3bc945db324163aa315` |
| 48 | `theorem` | [StarConvex.mem_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-mem-smul--453b5e6c1b27c204f739b9fd.md) | 414 | `result-track:453b5e6c1b27c204f739b9fd9e4d3d04e3e13bc73c4078fbf6d9e6b553a11950` |
| 49 | `theorem` | [Set.OrdConnected.starConvex](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/set-ordconnected-starconvex--b456afa68a4e60d8d9a0521a.md) | 433 | `result-track:b456afa68a4e60d8d9a0521abef456e749b0898da09fe4394aa85037a0c6a399` |
| 50 | `theorem` | [starConvex_iff_ordConnected](../../../../../mathematics/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/declarations/starconvex-iff-ordconnected--10520bac452ccaedd8e06c4c.md) | 454 | `result-track:10520bac452ccaedd8e06c4c083f5ea2515319276ce669171598a39190ac36a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
