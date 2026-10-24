# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.ConvexBody.Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74653116c7f397063415db43507efd1c65a6c1ee",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74653116c7f397063415db43507efd1c65a6c1ee`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.GeometryOfNumbers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [convexBodyLT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt--5eb54b551831cfb0804cb7aa.md) | 62 | `declaration-track:5eb54b551831cfb0804cb7aac688661607a0f95ddbc8387d5209f0d4f3512f17` |
| 2 | `theorem` | [convexBodyLT_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-mem--55139aa31a32db8fd3c17ec3.md) | 66 | `result-track:55139aa31a32db8fd3c17ec331dfd91bfc3608d67a8945766bafd7cd9be9bfcb` |
| 3 | `theorem` | [convexBodyLT_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-neg-mem--e52ee4a1a3979fbc1a47d9e5.md) | 73 | `result-track:e52ee4a1a3979fbc1a47d9e59b845c633e2fc93814e1852bdc5c0c3000b84a33` |
| 4 | `theorem` | [convexBodyLT_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-convex--b7040c5208280106a5c4f921.md) | 80 | `result-track:b7040c5208280106a5c4f921b3a83d150cc1193cc2597be4ed6bf26783de28d7` |
| 5 | `abbrev` | [convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodyltfactor--60b3c68a27847ffc4cd0b988.md) | 88 | `declaration-track:60b3c68a27847ffc4cd0b988a2b24d1f0f2ab9426bf8ef7bf8729d29a2b847bd` |
| 6 | `theorem` | [convexBodyLTFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodyltfactor-ne-zero--a79e05aeb5eeb7af10cbff99.md) | 91 | `result-track:a79e05aeb5eeb7af10cbff99896593f57a3a6e26b606b9c445cbd0db72f993b0` |
| 7 | `theorem` | [one_le_convexBodyLTFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/one-le-convexbodyltfactor--7b98aedfb140e36a4a5d59bb.md) | 94 | `result-track:7b98aedfb140e36a4a5d59bb6791f77d9d58f0e72a18faff1f872c3be4248fab` |
| 8 | `theorem` | [convexBodyLT_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-volume--2564fcf15308f32ff846a332.md) | 100 | `result-track:2564fcf15308f32ff846a332b0fc6d66a53f985e1d0eb28b80bc2c6fa617f8c7` |
| 9 | `theorem` | [adjust_f](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/adjust-f--5da2e75a434623de937cdfc0.md) | 125 | `result-track:5da2e75a434623de937cdfc07f6f0e4968ccef9661e8762b1feebad372fe20b7` |
| 10 | `abbrev` | [convexBodyLT'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt--44a323b41600958f09dd0d5c.md) | 152 | `declaration-track:44a323b41600958f09dd0d5c532e363aa4f943970c99069a90b1b29f739c7831` |
| 11 | `theorem` | [convexBodyLT'_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-mem--7f7b97d8b9a1453a71c3da53.md) | 157 | `result-track:7f7b97d8b9a1453a71c3da536271313da005ac8f00bad48f87b0f380af51f5ab` |
| 12 | `theorem` | [convexBodyLT'_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-neg-mem--592dc2599d18126f1440a34b.md) | 179 | `result-track:592dc2599d18126f1440a34b60f6ebc58bad9630aba56d444fc9871fa5ca00d9` |
| 13 | `theorem` | [convexBodyLT'_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-convex--97db17739efa2336c870c5eb.md) | 186 | `result-track:97db17739efa2336c870c5eb32c2ecaea1f3ea0078eefc9cd5803c7621f3a429` |
| 14 | `abbrev` | [convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-factor--cdca478b32d56fbbc100897a.md) | 199 | `declaration-track:cdca478b32d56fbbc100897a441b92bc8c9df3ecdb35c59d108cd7b2e50ac990` |
| 15 | `theorem` | [convexBodyLT'Factor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-factor-ne-zero--c097a276de38b2541e9ab168.md) | 202 | `result-track:c097a276de38b2541e9ab168c2b4cdcd9f61da8e5e19314de9ec975c9dea8fee` |
| 16 | `theorem` | [one_le_convexBodyLT'Factor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/one-le-convexbodylt-factor--eb543edb7c6705ca3c095bc5.md) | 205 | `result-track:eb543edb7c6705ca3c095bc51a343c1373425135f5fadb723d8163dfc6802221` |
| 17 | `theorem` | [convexBodyLT'_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodylt-volume--486d0da263102b411803dbb7.md) | 209 | `result-track:486d0da263102b411803dbb7d24a134b58fc5e3f56e1079c8937fee458731d1d` |
| 18 | `abbrev` | [convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun--24f6b88d7d3e43319714d1d7.md) | 264 | `declaration-track:24f6b88d7d3e43319714d1d76e7fc133e32d2a4061de57c2af6420937ca4fd4b` |
| 19 | `theorem` | [convexBodySumFun_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-apply--88e75a212b55fc11089e0f7e.md) | 266 | `result-track:88e75a212b55fc11089e0f7e3d5fbfaa8a3ed86cfba67542af0ee1236bdd1e80` |
| 20 | `theorem` | [convexBodySumFun_apply'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-apply--7b4f25d93d2d55adfa21394c.md) | 270 | `result-track:7b4f25d93d2d55adfa21394cb3b44cf2acbc575d76caec1daa0863313c1ac4fa` |
| 21 | `theorem` | [convexBodySumFun_nonneg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-nonneg--7df16c5279f4e28dec2646f1.md) | 276 | `result-track:7df16c5279f4e28dec2646f1dc929b80cd24dabd873e59a8a69f42e660b22c2a` |
| 22 | `theorem` | [convexBodySumFun_neg](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-neg--f3a5ee94272559d8f61473d8.md) | 280 | `result-track:f3a5ee94272559d8f61473d8f6e622cf9d93c04469ac59cb4604ad5922c0afac` |
| 23 | `theorem` | [convexBodySumFun_add_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-add-le--7cdb28b9d473eb1b7a15b1f5.md) | 284 | `result-track:7cdb28b9d473eb1b7a15b1f508747866746871ae1e23ee6904defe1e46fd5b91` |
| 24 | `theorem` | [convexBodySumFun_smul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-smul--0b363433d4b79b1c5a923357.md) | 290 | `result-track:0b363433d4b79b1c5a9233579c65d512849a43198b47c73961106d6fd4e71a35` |
| 25 | `theorem` | [convexBodySumFun_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-eq-zero-iff--3133620b74e3b5be6c10e6b4.md) | 294 | `result-track:3133620b74e3b5be6c10e6b401be8fa3558fc279e0d0fc19d5f5dec72b717b95` |
| 26 | `theorem` | [norm_le_convexBodySumFun](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/norm-le-convexbodysumfun--e21fe40baad44d24d626d5c1.md) | 305 | `result-track:e21fe40baad44d24d626d5c13fd37294af38f918c05c04582b65b87807f30252` |
| 27 | `theorem` | [convexBodySumFun_continuous](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfun-continuous--6f4e6b89153b63ce6e54b463.md) | 316 | `result-track:6f4e6b89153b63ce6e54b463fa9f1d3c6690cb27c2d75e400cef62f91330362c` |
| 28 | `abbrev` | [convexBodySum](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum--53ca33d9f143997511dd94bb.md) | 326 | `declaration-track:53ca33d9f143997511dd94bbb20f2dbac0c13282a1a73c15203b9f3bc84a07b3` |
| 29 | `theorem` | [convexBodySum_volume_eq_zero_of_le_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-volume-eq-zero-of-le-zero--d4b83148f7b42ad6a53ed151.md) | 329 | `result-track:d4b83148f7b42ad6a53ed1514c4e94d26d9b145770ccd08c769d3d9254dce175` |
| 30 | `theorem` | [convexBodySum_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-mem--03fd95a1af79a619467d1244.md) | 342 | `result-track:03fd95a1af79a619467d1244180d7ebfb12a94e61636ed8b0bd54d674cda89d5` |
| 31 | `theorem` | [convexBodySum_neg_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-neg-mem--949d4aac9a36873c55bf82f5.md) | 348 | `result-track:949d4aac9a36873c55bf82f5be70b825edfa7c3b1ddf5a82e68820bcf31715db` |
| 32 | `theorem` | [convexBodySum_convex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-convex--39407054875b2cebef4aea06.md) | 353 | `result-track:39407054875b2cebef4aea06004a89b9211e9849227c074e3357ca500abafa30` |
| 33 | `theorem` | [convexBodySum_isBounded](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-isbounded--e9958a40b561b4820b98eaa0.md) | 358 | `result-track:e9958a40b561b4820b98eaa035479c10dd02bcd52e87a834c06ddbe967e81151` |
| 34 | `theorem` | [convexBodySum_compact](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-compact--453cede4d37c19905740eee3.md) | 365 | `result-track:453cede4d37c19905740eee37247bf861a68c4123a69fab2a75318f3212762ff` |
| 35 | `abbrev` | [convexBodySumFactor](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfactor--52722bd301f2e5aea87a957c.md) | 374 | `declaration-track:52722bd301f2e5aea87a957c6d3ce213c9ff45c186efcfb7aeac235c4fb5a2eb` |
| 36 | `theorem` | [convexBodySumFactor_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysumfactor-ne-zero--e3cbed1623e1ffcde5073e97.md) | 377 | `result-track:e3cbed1623e1ffcde5073e97f71f06495f6e8f29a17c79f0b1acb832f04aeb86` |
| 37 | `theorem` | [convexBodySum_volume](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/convexbodysum-volume--edbce7cefcb9523688a69d43.md) | 384 | `result-track:edbce7cefcb9523688a69d43923c6313608190cfa38f3d0e1593faa6f6122ca6` |
| 38 | `def` | [minkowskiBound](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/minkowskibound--664e3dfe1e75788ea244d733.md) | 451 | `declaration-track:664e3dfe1e75788ea244d733419afcc43d6e1900cbdc3aae7cf3f66db5cd6c5a` |
| 39 | `theorem` | [volume_fundamentalDomain_fractionalIdealLatticeBasis](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/volume-fundamentaldomain-fractionalideallatticebasis--6d1bffac847d6b38ca5500e9.md) | 456 | `result-track:6d1bffac847d6b38ca5500e9508291e209eb969a5b4d9f735ac66b3600b1f649` |
| 40 | `theorem` | [minkowskiBound_lt_top](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/minkowskibound-lt-top--11fbe1c37ec4069d153c9d4a.md) | 470 | `result-track:11fbe1c37ec4069d153c9d4a4633c27d2f2dce076e46e00d2c450ef6a3534079` |
| 41 | `theorem` | [minkowskiBound_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/minkowskibound-pos--b36365aba1ad38da565aa957.md) | 476 | `result-track:b36365aba1ad38da565aa9577f42f8955ffe17efcd00dc574f48c40097219950` |
| 42 | `theorem` | [exists_ne_zero_mem_ideal_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ideal-lt--e5d846081b3730b9a874302a.md) | 490 | `result-track:e5d846081b3730b9a874302a629d6ed408d258662c24528d4430d7f75706a03c` |
| 43 | `theorem` | [exists_ne_zero_mem_ideal_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ideal-lt--42f38e503809b83ebfb22e0f.md) | 505 | `result-track:42f38e503809b83ebfb22e0ff71cb4229b97bab7332f461976f502d58c892de5` |
| 44 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--0c5c04f7748bb79304323fd9.md) | 521 | `result-track:0c5c04f7748bb79304323fd937d8fe8e1b1bc2a6f475d29861b7f0c0b65fed43` |
| 45 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_lt'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ringofintegers-lt--c81bc5587efc064e18027b4f.md) | 529 | `result-track:c81bc5587efc064e18027b4fbd738f52f9d67ae4f4b080b5c294e8fb0a1a4ffb` |
| 46 | `theorem` | [exists_primitive_element_lt_of_isReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-primitive-element-lt-of-isreal--770d80d57ac5fb0fd0e8b5a1.md) | 537 | `result-track:770d80d57ac5fb0fd0e8b5a1dcc2df211f87c3ba1a65793dce63fcce84adf233` |
| 47 | `theorem` | [exists_primitive_element_lt_of_isComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-primitive-element-lt-of-iscomplex--f96f8baf76ed116e142dbe20.md) | 554 | `result-track:f96f8baf76ed116e142dbe20974591900c3fcebf8700539d17b61d4609836670` |
| 48 | `theorem` | [exists_ne_zero_mem_ideal_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ideal-of-norm-le--08664cb783cedcbbe769f79f.md) | 591 | `result-track:08664cb783cedcbbe769f79ff892334a257a7ba0907929bfa7db98d1a01cd54c` |
| 49 | `theorem` | [exists_ne_zero_mem_ringOfIntegers_of_norm_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/declarations/exists-ne-zero-mem-ringofintegers-of-norm-le--1ae03d0148b910e092adebfc.md) | 625 | `result-track:1ae03d0148b910e092adebfc408acd939448e2c4e97455aeb1236683411c6cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
