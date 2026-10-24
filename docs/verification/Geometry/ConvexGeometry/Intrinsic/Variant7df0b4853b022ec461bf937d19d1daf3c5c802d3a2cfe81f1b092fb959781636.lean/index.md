# Verification target: GRWTSK.Geometry.ConvexGeometry.Intrinsic.Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9519ee7b09371c224ef80ca67112e602428c59b6",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9519ee7b09371c224ef80ca67112e602428c59b6`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean.json)

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
| 1 | `def` | [intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior--0855f423b84ae4c00b0e89f3.md) | 69 | `declaration-track:0855f423b84ae4c00b0e89f35b2d7ffe1602b88994d111cb8219c60b6b8b63fd` |
| 2 | `def` | [intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier--ea0bfa3e0c6c56e6a82d46be.md) | 73 | `declaration-track:ea0bfa3e0c6c56e6a82d46be25c6b1f1a9d4bd25b0b9e2846719ff3cc28f4ee1` |
| 3 | `def` | [intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure--bb00f6ab610237492fe5c73c.md) | 77 | `declaration-track:bb00f6ab610237492fe5c73c0a5e9f771c4119449118ec1d753f23af2894d73d` |
| 4 | `theorem` | [mem_intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/mem-intrinsicinterior--2caec6ec1f05962c23e822f5.md) | 83 | `result-track:2caec6ec1f05962c23e822f5d8b010418c752ac39c5589ad6f47c18d3ba7d9a8` |
| 5 | `theorem` | [mem_intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/mem-intrinsicfrontier--46f7eec31f5f1236384ad983.md) | 88 | `result-track:46f7eec31f5f1236384ad9831af34e4b3af21bec84e88cc8e4c0acc4042c3481` |
| 6 | `theorem` | [mem_intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/mem-intrinsicclosure--16ede0dea9b69badb63d7b2e.md) | 93 | `result-track:16ede0dea9b69badb63d7b2edd4d0d09678fc866eb1d1575c38f4740235df642` |
| 7 | `theorem` | [intrinsicInterior_subset](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-subset--e5f65f383b54417fc615a0e3.md) | 97 | `result-track:e5f65f383b54417fc615a0e30802ebd642cf0237d798fdf5933e7575822c0b6e` |
| 8 | `theorem` | [intrinsicFrontier_subset](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-subset--f1bae6709586816e3073ec2f.md) | 100 | `result-track:f1bae6709586816e3073ec2faf56c017d7c2136e82fd645a1fec7f39a0821d4e` |
| 9 | `theorem` | [intrinsicFrontier_subset_intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-subset-intrinsicclosure--d5643b1adf3681b26c13e72a.md) | 103 | `result-track:d5643b1adf3681b26c13e72a268e85579408469b734c8bae85f37e8df990951b` |
| 10 | `theorem` | [subset_intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/subset-intrinsicclosure--8321b1c6bf3dd13df52380c3.md) | 106 | `result-track:8321b1c6bf3dd13df52380c3c4f4d1d6c198f005627367ea64c79c58767886a3` |
| 11 | `theorem` | [intrinsicInterior_empty](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-empty--68d1f5603ada63563c390123.md) | 110 | `result-track:68d1f5603ada63563c390123ca430487bded3578a3061ad74d54aa170d71faab` |
| 12 | `theorem` | [intrinsicFrontier_empty](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-empty--3dde720e32aedf6823628890.md) | 113 | `result-track:3dde720e32aedf682362889024b3969ea74b698d5933d45c74761a2a8e698a46` |
| 13 | `theorem` | [intrinsicClosure_empty](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-empty--4035da89b357b11dbeb632a5.md) | 116 | `result-track:4035da89b357b11dbeb632a5405b1f98e4f89415f4dd536d051b02244e424508` |
| 14 | `theorem` | [intrinsicClosure_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-nonempty--34ee0a54eb624a5bfc071412.md) | 119 | `result-track:34ee0a54eb624a5bfc071412696a0aec4430c7af870c0db5b437181d4d255633` |
| 15 | `theorem` | [intrinsicInterior_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-singleton--4f1e8fb62a6e9367379d7a2e.md) | 126 | `result-track:4f1e8fb62a6e9367379d7a2e06d2b7d07018da22073dff2f1e21d448853f60cb` |
| 16 | `theorem` | [intrinsicFrontier_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-singleton--5ec7678458b5cd94cf708520.md) | 131 | `result-track:5ec7678458b5cd94cf7085202ca2893d08100b984d77256b6e2f355cd7021a74` |
| 17 | `theorem` | [intrinsicClosure_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-singleton--dc45dfb4d70daad4feacfcc5.md) | 135 | `result-track:dc45dfb4d70daad4feacfcc550ace8d24a0895b21e3c4b22c9f6c5211480572b` |
| 18 | `theorem` | [intrinsicClosure_mono](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-mono--2065e305626996dbd4003fc1.md) | 144 | `result-track:2065e305626996dbd4003fc161cd9cde8d2207d951acce29d1a39604bdff8c1d` |
| 19 | `theorem` | [interior_subset_intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/interior-subset-intrinsicinterior--1e816b5da2a975c85adc3e08.md) | 150 | `result-track:1e816b5da2a975c85adc3e0806e9c347a48dd4797b923cf9d689446179b5efaa` |
| 20 | `theorem` | [intrinsicClosure_subset_closure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-subset-closure--7d6be0d62387ebf18c204077.md) | 154 | `result-track:7d6be0d62387ebf18c204077c77f16f0424c0fec6f9552cb74e3e9d3f4165dd6` |
| 21 | `theorem` | [intrinsicFrontier_subset_frontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-subset-frontier--6635eabab16d6acc75760066.md) | 157 | `result-track:6635eabab16d6acc757600660b0d9ebf9e774a343d0a6012e218117eac53bcdb` |
| 22 | `theorem` | [intrinsicClosure_subset_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-subset-affinespan--26590ddf9b1e9a18e222f464.md) | 160 | `result-track:26590ddf9b1e9a18e222f4646e4e9c047ec73eacf518116e5f3ed3b635056107` |
| 23 | `theorem` | [intrinsicClosure_sdiff_intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-sdiff-intrinsicfrontier--114f8ff59d40b479e9d66407.md) | 164 | `result-track:114f8ff59d40b479e9d664074c31e725105121f98adb3ab5c903a9f4e527721f` |
| 24 | `theorem` | [intrinsicClosure_sdiff_intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-sdiff-intrinsicinterior--15376b7f87c5d92219f89946.md) | 173 | `result-track:15376b7f87c5d92219f89946211128016744e3ef5d37de477098e9abc4c47521` |
| 25 | `theorem` | [intrinsicInterior_union_intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-union-intrinsicfrontier--86a95be2137cabc9520b9591.md) | 181 | `result-track:86a95be2137cabc9520b9591435e476abee0ebaae052f0aeb7fae974316e7aa2` |
| 26 | `theorem` | [intrinsicFrontier_union_intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-union-intrinsicinterior--7686dee93d82326b81897471.md) | 187 | `result-track:7686dee93d82326b8189747128c45d46f03af895af87af2f79ae9eca0b445949` |
| 27 | `theorem` | [isClosed_intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/isclosed-intrinsicclosure--e4b7227ffd011a25eb41a70a.md) | 191 | `result-track:e4b7227ffd011a25eb41a70abf9231e96f19d41391ee632dc9d9b3f8f10299c1` |
| 28 | `theorem` | [isClosed_intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/isclosed-intrinsicfrontier--d969366e9dc64e3866500d45.md) | 195 | `result-track:d969366e9dc64e3866500d457f7c4adbe117a16b43b20aef3fa7df8c13e163da` |
| 29 | `theorem` | [affineSpan_intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/affinespan-intrinsicclosure--4013d55533aca175e5d2efa9.md) | 200 | `result-track:4013d55533aca175e5d2efa980da84e8cc8f4867c7e713458771e58d9644cc60` |
| 30 | `theorem` | [IsClosed.intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/isclosed-intrinsicclosure--97ebc5eb50bdadb13973f0d8.md) | 205 | `result-track:97ebc5eb50bdadb13973f0d86a8303124822d937e56d9577910a5c16ca7a100f` |
| 31 | `theorem` | [intrinsicClosure_idem](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-idem--c186010d87e97bfac366324f.md) | 211 | `result-track:c186010d87e97bfac366324f246bcc40d4471568b9ece32503701bc8a01cfbb5` |
| 32 | `theorem` | [intrinsicClosure_eq_closure_inter_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-eq-closure-inter-affinespan--7e3de42967588887cda8b435.md) | 220 | `result-track:7e3de42967588887cda8b43505b0b857f085e3412787b6300737203c4f204ff7` |
| 33 | `theorem` | [intrinsicInterior_prod_eq](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-prod-eq--58ed4541c6ee6506858ad777.md) | 228 | `result-track:58ed4541c6ee6506858ad7772e707d5c50e71a3bfc723159f72a2f0030f70276` |
| 34 | `theorem` | [preimage_image_eq_of_homeomorph_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/preimage-image-eq-of-homeomorph-affinespan--893c0e51dc9df86eaba79548.md) | 245 | `result-track:893c0e51dc9df86eaba7954851d09ba1395adf7835b22c6fae1d3af011d5f4e9` |
| 35 | `theorem` | [intrinsicInterior_image_of_homeomorph_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-image-of-homeomorph-affinespan--f420433edfdd9961eaba13b9.md) | 263 | `result-track:f420433edfdd9961eaba13b975f713bcc1894566c1d7ccf224df66a08e894eb4` |
| 36 | `theorem` | [intrinsicFrontier_image_of_homeomorph_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-image-of-homeomorph-affinespan--a8533634132accc03a6e3456.md) | 275 | `result-track:a8533634132accc03a6e3456317636112d9dae0406f9f7b3dfeacb85cbb61cb9` |
| 37 | `theorem` | [intrinsicClosure_image_of_homeomorph_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-image-of-homeomorph-affinespan--86c558186b117d5fca4639a7.md) | 287 | `result-track:86c558186b117d5fca4639a7c52ffa7dc667af6c7c26758ebbf552a3646277a3` |
| 38 | `theorem` | [intrinsicInterior_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-image--93f57852214cd43d3274a219.md) | 306 | `result-track:93f57852214cd43d3274a219afa01aee504b98c8987a0e32175921728932fa39` |
| 39 | `theorem` | [intrinsicFrontier_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-image--1a96cd67e6721748c675db04.md) | 314 | `result-track:1a96cd67e6721748c675db048237352bbc3eae525190f4dbdd4f57d3ca616ec3` |
| 40 | `theorem` | [intrinsicClosure_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-image--f1ba69420b03f6ada5e757d6.md) | 322 | `result-track:f1ba69420b03f6ada5e757d6bff2b31a40ae1195dc814d7d47355bc4a6ad9677` |
| 41 | `theorem` | [intrinsicInterior_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-image--55626c6f2791a04589a47fe5.md) | 338 | `result-track:55626c6f2791a04589a47fe522460e4d4ad4b94a8b0096ae12ef482d71f0e144` |
| 42 | `theorem` | [intrinsicFrontier_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-image--552e5e2c81d07a81c89f662c.md) | 347 | `result-track:552e5e2c81d07a81c89f662c6b79f5ee1637ae40195cf9014966c3f299ff0260` |
| 43 | `theorem` | [intrinsicClosure_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-image--e37d2a8446b7f04847d96079.md) | 356 | `result-track:e37d2a8446b7f04847d9607928de15955d254acec13d1fa22a65a9ff968beac7` |
| 44 | `theorem` | [intrinsicInterior_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-image--847e006ad9410e061795195a.md) | 384 | `result-track:847e006ad9410e061795195a60a3800499948cb637703b74e347c50e6d90081a` |
| 45 | `theorem` | [intrinsicFrontier_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicfrontier-image--a7fcbadb8c37c72ffa168131.md) | 389 | `result-track:a7fcbadb8c37c72ffa168131cdc3e356e30d658dc6c59cbc7fae2949b998d224` |
| 46 | `theorem` | [intrinsicClosure_image](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-image--cb41244427089cbe3c178082.md) | 394 | `result-track:cb41244427089cbe3c178082221ac75312ae902ea401931d175533949ecaf546` |
| 47 | `theorem` | [intrinsicClosure_eq_closure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicclosure-eq-closure--c09fcd71f03dcea069ab45b9.md) | 406 | `result-track:c09fcd71f03dcea069ab45b9ae16a90f11a45b669c4b22523c8649df33fb6ded` |
| 48 | `theorem` | [closure_sdiff_intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/closure-sdiff-intrinsicinterior--a6c0ce3bac9829f8e24b4d48.md) | 423 | `result-track:a6c0ce3bac9829f8e24b4d48482633195ac4f2bd6e330d20c1630dde666bfb18` |
| 49 | `theorem` | [closure_sdiff_intrinsicFrontier](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/closure-sdiff-intrinsicfrontier--f74e4146f23fc31892d89042.md) | 431 | `result-track:f74e4146f23fc31892d890420d6f16d3bf7a360b7c34cf9b9b8fe24e690d436a` |
| 50 | `theorem` | [Convex.intrinsicClosure](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/convex-intrinsicclosure--c554ede2b3688f89f6d96207.md) | 445 | `result-track:c554ede2b3688f89f6d9620750419addb51a9ef1ad755edd75a93030c9ee89e1` |
| 51 | `theorem` | [aux](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/aux--fcafabb07cb455e69acec559.md) | 451 | `result-track:fcafabb07cb455e69acec559fba097678c724794ade431d417428ba152d9bba7` |
| 52 | `theorem` | [Set.Nonempty.intrinsicInterior](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/set-nonempty-intrinsicinterior--6b6e83c941150437d19b1d29.md) | 458 | `result-track:6b6e83c941150437d19b1d29167daeecb2c7a9a83e96bbc2b83a98133680a52c` |
| 53 | `theorem` | [intrinsicInterior_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/Intrinsic/Variant7df0b4853b022ec461bf937d19d1daf3c5c802d3a2cfe81f1b092fb959781636.lean/declarations/intrinsicinterior-nonempty--9a17b9c146649e8e29fe3082.md) | 471 | `result-track:9a17b9c146649e8e29fe3082c1cdd638837fd2a3c85d2d722abf9b132bd67c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
