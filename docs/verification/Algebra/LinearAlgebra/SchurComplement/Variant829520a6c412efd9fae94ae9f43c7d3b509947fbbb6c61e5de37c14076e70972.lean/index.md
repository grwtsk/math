# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurComplement.Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27418df2c626cc39a3a437b5a9d02a4b3c62b3b7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fromBlocks_eq_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblocks-eq-of-invertible--acc46a604f893fbd38608caa.md) | 54 | `result-track:acc46a604f893fbd38608caa2ae139ab0bffb3d32164822b7d7f1755d75f5c59` |
| 2 | `theorem` | [fromBlocks_eq_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblocks-eq-of-invertible--a7072a0d96baffbe0dfff9c0.md) | 66 | `result-track:a7072a0d96baffbe0dfff9c09320a66cba6d57382407b02b7c528651acb2c6ae` |
| 3 | `def` | [fromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblockszero-invertible--6416b997598a8d114996bf74.md) | 83 | `declaration-track:6416b997598a8d114996bf747f07fcab4ecb9a8c217a98eecb1fc46e4b1eb39f` |
| 4 | `def` | [fromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblockszero-invertible--bab893476b1213fde2962ce9.md) | 92 | `declaration-track:bab893476b1213fde2962ce946148d148299fc8fa7a9965b8deca224b1cc57b5` |
| 5 | `theorem` | [invOf_fromBlocks_zero₂₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invof-fromblocks-zero-eq--37db58547236cede858e1091.md) | 102 | `result-track:37db58547236cede858e1091cb50b4508e83489980196ca2625efd0ae12c9f52` |
| 6 | `theorem` | [invOf_fromBlocks_zero₁₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invof-fromblocks-zero-eq--2f07a1c49154649c8a8bebf0.md) | 109 | `result-track:2f07a1c49154649c8a8bebf0408698f05e7e957b24b5af66bf080a234e09731f` |
| 7 | `def` | [invertibleOfFromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleoffromblockszero-invertible--0b795bbe922ce8107b3a31bc.md) | 118 | `declaration-track:0b795bbe922ce8107b3a31bcfef0ec409ecbbee1ed6c9c5f39db44bd2fc428d3` |
| 8 | `def` | [invertibleOfFromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleoffromblockszero-invertible--52b00fcd17d6707f0e38597c.md) | 138 | `declaration-track:52b00fcd17d6707f0e38597c93680532249f7d7ea2429bc85c060cafaef2f9cb` |
| 9 | `def` | [fromBlocksZero₂₁InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblockszero-invertibleequiv--da40690c3f8cc5ea18cb435c.md) | 158 | `declaration-track:da40690c3f8cc5ea18cb435c2d6af7731c7688c24ff20824ec7191aff91ec1c3` |
| 10 | `def` | [fromBlocksZero₁₂InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblockszero-invertibleequiv--39ca52a5760517b67871a511.md) | 171 | `declaration-track:39ca52a5760517b67871a511c8da94ea36da08f7bfd6428d2d4f227fd3db614f` |
| 11 | `theorem` | [isUnit_fromBlocks_zero₂₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/isunit-fromblocks-zero--66f3c9b1c1e86cdf809c7f6d.md) | 186 | `result-track:66f3c9b1c1e86cdf809c7f6d8dfcf0b55b7415990ebd9e8669918a16d89b07f6` |
| 12 | `theorem` | [isUnit_fromBlocks_zero₁₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/isunit-fromblocks-zero--1a58f36f87ad8e34c0fae186.md) | 196 | `result-track:1a58f36f87ad8e34c0fae186e2cb307ecfa3e615ce08c87a8afed5e89188110e` |
| 13 | `theorem` | [inv_fromBlocks_zero₂₁_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/inv-fromblocks-zero-of-isunit-iff--ee7830b9fb72c1b45cd8d55d.md) | 204 | `result-track:ee7830b9fb72c1b45cd8d55dfc8b842a26961f06d58c9fd32cf4a2c2fface031` |
| 14 | `theorem` | [inv_fromBlocks_zero₁₂_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/inv-fromblocks-zero-of-isunit-iff--8a228fe555bb17f0dd40f725.md) | 222 | `result-track:8a228fe555bb17f0dd40f725fae3c22ea414995d8f15715f9b1ac265790276eb` |
| 15 | `def` | [fromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblocks-invertible--27cb067aaba6f83c48de0919.md) | 250 | `declaration-track:27cb067aaba6f83c48de0919c5a575193a002da61a700bb003802c813ae33a35` |
| 16 | `def` | [fromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/fromblocks-invertible--042433c2c4b651516c723ada.md) | 280 | `declaration-track:042433c2c4b651516c723adaefecaa5f4fc6e2e786261f83c4e2683af17b8991` |
| 17 | `theorem` | [invOf_fromBlocks₂₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invof-fromblocks-eq--590d99276ce0b13fa890a139.md) | 295 | `result-track:590d99276ce0b13fa890a1390ab359c272df2c262451559384c38f16f60b6f69` |
| 18 | `theorem` | [invOf_fromBlocks₁₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invof-fromblocks-eq--be5842174c109dc1ed94c8d3.md) | 305 | `result-track:be5842174c109dc1ed94c8d3484d80b31442e23435a4afa890aaad096ff2a29e` |
| 19 | `def` | [invertibleOfFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleoffromblocks-invertible--1a2091aba27a2caa60b5039b.md) | 317 | `declaration-track:1a2091aba27a2caa60b5039b92b857dd9d8ec6040df0233e91dabcc76ff019a2` |
| 20 | `def` | [invertibleOfFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleoffromblocks-invertible--91758424e6052adebdd68f04.md) | 335 | `declaration-track:91758424e6052adebdd68f04645d11b41badc78fb3f1016581fc21c5e0623d0c` |
| 21 | `def` | [invertibleEquivFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleequivfromblocks-invertible--115be2497d6c521570b614f8.md) | 347 | `declaration-track:115be2497d6c521570b614f806724c5076d3a8936229d396db49da14c7182739` |
| 22 | `def` | [invertibleEquivFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/invertibleequivfromblocks-invertible--49a40ae3c0354308c5662a04.md) | 358 | `declaration-track:49a40ae3c0354308c5662a0432995f531427e6515d10b7d9afb1552c2ae3041a` |
| 23 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/isunit-fromblocks-iff-of-invertible--28e05b57fe477238df9fe04a.md) | 369 | `result-track:28e05b57fe477238df9fe04a81a1861f4698b90b1d95184f5bb2c5266864e578` |
| 24 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/isunit-fromblocks-iff-of-invertible--262351161adf5d33815a7ef0.md) | 378 | `result-track:262351161adf5d33815a7ef0196c6a3f1a8603ed69d284329d4e58f091745aed` |
| 25 | `theorem` | [det_fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-fromblocks--3a03a6851c0ae31e4aac555a.md) | 394 | `result-track:3a03a6851c0ae31e4aac555a7277249aac4bd30ab33124dba93c48a92e569c7d` |
| 26 | `theorem` | [det_fromBlocks_one₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-fromblocks-one--cc2db05e11cc17c57b6af2ec.md) | 402 | `result-track:cc2db05e11cc17c57b6af2ec5fb2639de1aac788ff85ae5552340211f8877d14` |
| 27 | `theorem` | [det_fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-fromblocks--4525abc46d8a3d9beff907a9.md) | 410 | `result-track:4525abc46d8a3d9beff907a9b6ff663fdb640191b08c7a7e3c1538971c2ae130` |
| 28 | `theorem` | [det_fromBlocks_one₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-fromblocks-one--e96a1689e37d9551d21c0703.md) | 421 | `result-track:e96a1689e37d9551d21c070310fc92299d9b310ad02a9eb3f36a576e0864574c` |
| 29 | `theorem` | [det_one_add_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-one-add-mul-comm--ee93b1131eee19b1bc2a75ca.md) | 429 | `result-track:ee93b1131eee19b1bc2a75ca0103db3597d29ad466749e263f145c5541152644` |
| 30 | `theorem` | [det_mul_add_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-mul-add-one-comm--e9f218b0532db37c40935662.md) | 438 | `result-track:e9f218b0532db37c40935662f5cc1efaac3a83d4817f28b03c021e5d9612b739` |
| 31 | `theorem` | [det_one_sub_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-one-sub-mul-comm--d957c0efaba52a336a260e7b.md) | 442 | `result-track:d957c0efaba52a336a260e7b10e4d5db050a856e84c8908b0b2da32c3195932d` |
| 32 | `theorem` | [det_one_add_col_mul_row](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/det-one-add-col-mul-row--86930315c19f229951eb9a22.md) | 450 | `result-track:86930315c19f229951eb9a22f5f180850e65c21b2ba23f2e1380c1eebe2b0fd3` |
| 33 | `theorem` | [schur_complement_eq₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/schur-complement-eq--586fdeaa3a4c81766063e800.md) | 468 | `result-track:586fdeaa3a4c81766063e80074dbfc65cb643209a0ad6d8b9dc0c74ea017bd6b` |
| 34 | `theorem` | [schur_complement_eq₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/schur-complement-eq--099bf5e5fff978b4d1de2b5f.md) | 480 | `result-track:099bf5e5fff978b4d1de2b5fee708c0d993caf4680672141883f76e07e13666b` |
| 35 | `theorem` | [IsHermitian.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/ishermitian-fromblocks--6509ebe1fe3e0906c0047356.md) | 492 | `result-track:6509ebe1fe3e0906c004735693eb4465db3be42d28087c8109ddd2927ae78dea` |
| 36 | `theorem` | [IsHermitian.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/ishermitian-fromblocks--c62b4cee9859879eda7a2961.md) | 508 | `result-track:c62b4cee9859879eda7a2961349ea9eb68e63102965c33304122ea02186a8b5a` |
| 37 | `theorem` | [PosSemidef.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/possemidef-fromblocks--ec790d0a5934b6a715cb7210.md) | 516 | `result-track:ec790d0a5934b6a715cb7210efa7fc546b8dd4f0dfc94b75aee6cf4cafd023a0` |
| 38 | `theorem` | [PosSemidef.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/declarations/possemidef-fromblocks--42c188bbbb06ee63f58d3a4d.md) | 535 | `result-track:42c188bbbb06ee63f58d3a4d4bf7d2429df33e17c918c9067cc6eebee9d24fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
