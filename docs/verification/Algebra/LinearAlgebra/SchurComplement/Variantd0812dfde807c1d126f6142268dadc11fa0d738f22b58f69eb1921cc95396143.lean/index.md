# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurComplement.Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63a5a216c3ed66af6a10637702bc0d666b89bf31",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63a5a216c3ed66af6a10637702bc0d666b89bf31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean.json)

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
| 1 | `theorem` | [fromBlocks_eq_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblocks-eq-of-invertible--e69cc3204073d8a0fd845c27.md) | 50 | `result-track:e69cc3204073d8a0fd845c271795a6767fe07611fedad2ae7d143ca73ff583ae` |
| 2 | `theorem` | [fromBlocks_eq_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblocks-eq-of-invertible--7a021f18350f28a79c2c2dad.md) | 61 | `result-track:7a021f18350f28a79c2c2dad0d69ada6c031c0b78a97180ecad76a343a72e95a` |
| 3 | `def` | [fromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblockszero-invertible--19510424323a19e18c4d87b5.md) | 77 | `declaration-track:19510424323a19e18c4d87b5fbc64cbf3b24c879494eb1507d732c1d86ed1635` |
| 4 | `def` | [fromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblockszero-invertible--4677ed07277f98ae4634fb30.md) | 85 | `declaration-track:4677ed07277f98ae4634fb301003667ea1db3ec2c6d44197c093615950d85a28` |
| 5 | `theorem` | [invOf_fromBlocks_zero₂₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invof-fromblocks-zero-eq--7047cb095eeb1e7e16256d97.md) | 94 | `result-track:7047cb095eeb1e7e16256d9767a2d6621993adba34997fc6b2351e3ba2190f4a` |
| 6 | `theorem` | [invOf_fromBlocks_zero₁₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invof-fromblocks-zero-eq--620fa672b0669622ac2bbe4f.md) | 100 | `result-track:620fa672b0669622ac2bbe4fb7548bba7858658eca83ee5069da9585515991cb` |
| 7 | `def` | [invertibleOfFromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleoffromblockszero-invertible--dd17ecd146391a757ece6669.md) | 108 | `declaration-track:dd17ecd146391a757ece6669716527a9960441e010487ea70aa95c1e1f8767c2` |
| 8 | `def` | [invertibleOfFromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleoffromblockszero-invertible--7a5a8b350e534605e6152eef.md) | 127 | `declaration-track:7a5a8b350e534605e6152eefbf5758f6c902b5a656f5c2404d00bdfef5c6311e` |
| 9 | `def` | [fromBlocksZero₂₁InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblockszero-invertibleequiv--b4a6541df12e20fa5a3927d0.md) | 146 | `declaration-track:b4a6541df12e20fa5a3927d07eebbe780ec6ae9ac8a57a49c9b1e290765e426b` |
| 10 | `def` | [fromBlocksZero₁₂InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblockszero-invertibleequiv--26b35fa4d7da589f4402238f.md) | 158 | `declaration-track:26b35fa4d7da589f4402238fcc563cc4f4226f27d16a495aa186ede6ae8e7f43` |
| 11 | `theorem` | [isUnit_fromBlocks_zero₂₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/isunit-fromblocks-zero--99e918029e3c509035ac9caf.md) | 172 | `result-track:99e918029e3c509035ac9caf58d6908c842122d9facf9cb890f02e6aa107df34` |
| 12 | `theorem` | [isUnit_fromBlocks_zero₁₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/isunit-fromblocks-zero--f8f521f4fc48d31beb3a9648.md) | 181 | `result-track:f8f521f4fc48d31beb3a9648400ad9e74f6695d4377953922a8875820f8a2e6d` |
| 13 | `theorem` | [inv_fromBlocks_zero₂₁_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/inv-fromblocks-zero-of-isunit-iff--a3af45a316032ef73c71e1c2.md) | 188 | `result-track:a3af45a316032ef73c71e1c22b689a282163f032803b79d9cd74acec661c05ac` |
| 14 | `theorem` | [inv_fromBlocks_zero₁₂_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/inv-fromblocks-zero-of-isunit-iff--47659db430105797ced4adff.md) | 205 | `result-track:47659db430105797ced4adff087b8ccaf1d262d212cda3b7e35bf04ea32f4aa2` |
| 15 | `def` | [fromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblocks-invertible--b23afb569a77bec9aee47ff5.md) | 232 | `declaration-track:b23afb569a77bec9aee47ff5ff1548276f7398ecb5112eea7c583218fd78c042` |
| 16 | `def` | [fromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/fromblocks-invertible--bf45a9073c49b5e964a40212.md) | 259 | `declaration-track:bf45a9073c49b5e964a4021295b89187cb06e2281ba4e3707b0992e067040a3b` |
| 17 | `theorem` | [invOf_fromBlocks₂₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invof-fromblocks-eq--a93df8743a2cf497e602fa50.md) | 273 | `result-track:a93df8743a2cf497e602fa50a4f05371a385413e545846f82683b8b9a8c4db3c` |
| 18 | `theorem` | [invOf_fromBlocks₁₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invof-fromblocks-eq--873a6b0322d14a515bfc1c8e.md) | 282 | `result-track:873a6b0322d14a515bfc1c8ead38cd8302d95aacdb7dc71f2d9dee8da738fa4d` |
| 19 | `def` | [invertibleOfFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleoffromblocks-invertible--20b43e03f764c9423fdac0cc.md) | 293 | `declaration-track:20b43e03f764c9423fdac0cc9bc571b23dfbf91e529bcc80df57b0f1bf6a9740` |
| 20 | `def` | [invertibleOfFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleoffromblocks-invertible--33840bebea79ac99b3142e82.md) | 310 | `declaration-track:33840bebea79ac99b3142e8284e4644ec7ec156fe87fa73c99a462e675420d08` |
| 21 | `def` | [invertibleEquivFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleequivfromblocks-invertible--0dea3037b607c5de16feedc1.md) | 321 | `declaration-track:0dea3037b607c5de16feedc18985404e0d06438a10700795918d39a212b38b7e` |
| 22 | `def` | [invertibleEquivFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/invertibleequivfromblocks-invertible--644404a8ecd2399a7c15f79d.md) | 331 | `declaration-track:644404a8ecd2399a7c15f79d2bfa2967e631535b77f289b35d826a67a4f2fc15` |
| 23 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/isunit-fromblocks-iff-of-invertible--0da1b4f6e171281d1ef873ca.md) | 341 | `result-track:0da1b4f6e171281d1ef873ca98ead1e688cd092314b123b433cfd764643528fd` |
| 24 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/isunit-fromblocks-iff-of-invertible--a9e679d98ff5ebe06f6c8013.md) | 349 | `result-track:a9e679d98ff5ebe06f6c80135f54bfa8861bdf09507166038166d725d4a2630a` |
| 25 | `theorem` | [det_fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-fromblocks--2b68173c2e9d3626797e9304.md) | 364 | `result-track:2b68173c2e9d3626797e930447c5e543eb6c4abbeb74b2884052cfdc0e5ad415` |
| 26 | `theorem` | [det_fromBlocks_one₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-fromblocks-one--e374a36b81ddc50b7befb496.md) | 371 | `result-track:e374a36b81ddc50b7befb496b3f168c1bdca513ea3067a288d625c594fa4b4ca` |
| 27 | `theorem` | [det_fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-fromblocks--e6894416e4db1d4a24797838.md) | 378 | `result-track:e6894416e4db1d4a247978385c4607218377a853cda2b995bbff32ffb06e2dea` |
| 28 | `theorem` | [det_fromBlocks_one₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-fromblocks-one--0e20488341c4e56174a5a8b2.md) | 388 | `result-track:0e20488341c4e56174a5a8b2a1bf5435728f24fef835880b899370f5e3fac68c` |
| 29 | `theorem` | [det_one_add_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-one-add-mul-comm--c8b5624132db6a263e1aa932.md) | 395 | `result-track:c8b5624132db6a263e1aa93297183ec327af37b6599520a1760cc060a777e66d` |
| 30 | `theorem` | [det_mul_add_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-mul-add-one-comm--90ecc7d84c2dfa69400d7987.md) | 403 | `result-track:90ecc7d84c2dfa69400d7987d5524b87af958e1d80046226d91088a0d714527f` |
| 31 | `theorem` | [det_one_sub_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-one-sub-mul-comm--094128cb9f0064685cffc0cf.md) | 406 | `result-track:094128cb9f0064685cffc0cf74b10490df1458dd7d5ebbb0d7732e49b9782eb5` |
| 32 | `theorem` | [det_one_add_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-one-add-replicatecol-mul-replicaterow--04d45b176a4350ed23c32c96.md) | 411 | `result-track:04d45b176a4350ed23c32c96f9b0062f870c2ae564c0d4d0d916eb7357e37207` |
| 33 | `theorem` | [det_add_replicateCol_mul_replicateRow](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-add-replicatecol-mul-replicaterow--d56ddaba8c9ad06f8c3d07fe.md) | 425 | `result-track:d56ddaba8c9ad06f8c3d07feda4c69200fd5bd67a74a37ccddda82638c3edd7a` |
| 34 | `theorem` | [det_add_mul](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/det-add-mul--7c77d69d506cbe594eef10ac.md) | 437 | `result-track:7c77d69d506cbe594eef10acd79dab1e082ff17a7176956975681342b9c9de70` |
| 35 | `theorem` | [schur_complement_eq₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/schur-complement-eq--909888b175441c207d33823c.md) | 458 | `result-track:909888b175441c207d33823cea76f3e93f72b22d41f15addbb22ca95d9c08f3b` |
| 36 | `theorem` | [schur_complement_eq₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/schur-complement-eq--b24ef2d0a0ad30671c36129b.md) | 469 | `result-track:b24ef2d0a0ad30671c36129b65aa92923621b03010e7b1261817ab91272a2c87` |
| 37 | `theorem` | [IsHermitian.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/ishermitian-fromblocks--07d0199a3185ba319f9cdc99.md) | 480 | `result-track:07d0199a3185ba319f9cdc992e2ceeea313b167aafec6eab38c5b6107b1a6658` |
| 38 | `theorem` | [IsHermitian.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/ishermitian-fromblocks--83a2662b72178d87705161a0.md) | 495 | `result-track:83a2662b72178d87705161a0b2e6c34c39bc9e75e453343ba3635debbe204ddf` |
| 39 | `theorem` | [PosSemidef.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/possemidef-fromblocks--1f92bd8147b8838d11ad86dc.md) | 504 | `result-track:1f92bd8147b8838d11ad86dcdfc7b123a41e7c802f2bacb1ac08d649d868d1ef` |
| 40 | `theorem` | [PosSemidef.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/declarations/possemidef-fromblocks--10151a1e3f6728d32e2cd198.md) | 522 | `result-track:10151a1e3f6728d32e2cd198c45ea6c4007d78e4a1118fb4461e75785b5b9c32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
