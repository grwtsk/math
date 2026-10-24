# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BlockDirectionReindexing.Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d2b2dcd7da688982808002567756abeb3644e0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d2b2dcd7da688982808002567756abeb3644e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MomentCumulantPartitions` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockorderiso--ce7a99b5040a797332cd3662.md) | 41 | `declaration-track:ce7a99b5040a797332cd3662b8a274e6668719129fb8bfaff4be30ae39b004d0` |
| 2 | `theorem` | [blockOrderIso_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockorderiso-mem--d1e61fc600065f22dd666c08.md) | 45 | `result-track:d1e61fc600065f22dd666c08613ef9cf8369c5a2d83375b2c48eabd59fb00568` |
| 3 | `def` | [blockDirections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockdirections--6ef77f3433efc79a0998dfeb.md) | 52 | `declaration-track:6ef77f3433efc79a0998dfeb1c81bc57f4f55937cbd9605cbe80a10bc73a3204` |
| 4 | `theorem` | [blockDirections_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockdirections-apply--8e896abe3fd4f49ccfe936b8.md) | 60 | `result-track:8e896abe3fd4f49ccfe936b8b624dfc9bf792ce07d95b17661aac9758617a184` |
| 5 | `theorem` | [exists_blockIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/exists-blockindex--de00077a5183edb889cf2197.md) | 70 | `result-track:de00077a5183edb889cf21977aef1935efcbacdd8512c5db358caac5aad3d158` |
| 6 | `theorem` | [block_nonempty_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/block-nonempty-of-mem-parts--86126cdd921a5541f1c5ccca.md) | 81 | `result-track:86126cdd921a5541f1c5cccab2a5ff44a765f53d98b562bd9d517874d1d23ae8` |
| 7 | `theorem` | [block_card_pos_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/block-card-pos-of-mem-parts--c1f292969ceae8da0e769b56.md) | 93 | `result-track:c1f292969ceae8da0e769b560d6563ac0158ae30f691679ddb435895d0106c90` |
| 8 | `theorem` | [block_card_lt_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/block-card-lt-of-ne-univ--e51d8a33674340df714d5d36.md) | 103 | `result-track:e51d8a33674340df714d5d3634103bc51236ee31d47736abd275f50243308ad3` |
| 9 | `theorem` | [block_card_lt_of_mem_properPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/block-card-lt-of-mem-properpartition--186c40bad5d20d7dbe2d1bdb.md) | 117 | `result-track:186c40bad5d20d7dbe2d1bdb86a6dd8902a63cfa7a7a1cb2506d498a65f1c8e4` |
| 10 | `abbrev` | [DirectionCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directioncumulantfamily--c9aeba1327ff81700c1297e5.md) | 130 | `declaration-track:c9aeba1327ff81700c1297e57fca0f4ade37d22c9c1c6463c37aef37a5c158ab` |
| 11 | `def` | [blockCumulantValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockcumulantvalue--37352f7ffed4428555147b18.md) | 136 | `declaration-track:37352f7ffed4428555147b18c618a8b443be265e5069fc3af5783429f5826aa1` |
| 12 | `def` | [blockCumulantFunctional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockcumulantfunctional--d5660ba2430c08f7724d49e1.md) | 145 | `declaration-track:d5660ba2430c08f7724d49e18531e066a9f40361430f730284c48598618ea10a` |
| 13 | `theorem` | [blockCumulantFunctional_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockcumulantfunctional-apply--465e05588f7bbbbf4b60b69e.md) | 153 | `result-track:465e05588f7bbbbf4b60b69ed53f4f88c9fe9608468729b334acc5f9e82c10b8` |
| 14 | `def` | [directionalPartitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpartitionweight--5eed34027012f12a4aba11db.md) | 167 | `declaration-track:5eed34027012f12a4aba11dbf0a73d9c125220a48b23b6b5fcbc55a7951901ea` |
| 15 | `def` | [directionalPartitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpartitionmoment--b5c11dc386dcb7d1b2d0816f.md) | 175 | `declaration-track:b5c11dc386dcb7d1b2d0816f21c96434e08a4b6ad924183e06325cf1e205051a` |
| 16 | `def` | [directionalProperContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpropercontribution--ad9b005d160213631d9f6229.md) | 183 | `declaration-track:ad9b005d160213631d9f6229b1b65e3d93e9a0f675992428fb641b36824ce7c6` |
| 17 | `theorem` | [directionalPartitionWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpartitionweight-apply--a842cea36bd56e35c147ce93.md) | 191 | `result-track:a842cea36bd56e35c147ce9354bac61494660e6e508a11cb6a423078219d04a7` |
| 18 | `def` | [AgreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/agreebelow--15bf1d5d0aa81f6d67e2db1a.md) | 202 | `declaration-track:15bf1d5d0aa81f6d67e2db1aa9b198aabbe4eca0f1312e7b34228f4b47e019dc` |
| 19 | `theorem` | [AgreeBelow.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/agreebelow-refl--02273c427bd8cac505f70e65.md) | 210 | `result-track:02273c427bd8cac505f70e65be6e1f89580affe304a512b741cf0040a8e33a1b` |
| 20 | `theorem` | [AgreeBelow.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/agreebelow-symm--b41aa4a47057b03841793207.md) | 218 | `result-track:b41aa4a47057b038417932077cc721cadbc3565d017860635d59c3bd66e354a4` |
| 21 | `theorem` | [AgreeBelow.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/agreebelow-trans--dfcd901a74991098b4666ee2.md) | 227 | `result-track:dfcd901a74991098b4666ee24f7362858a62ebb4c3717918a99741c34d8a22e1` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/blockcumulantvalue-eq-of-agreebelow--0110c8cd4aba8512725b447e.md) | 240 | `result-track:0110c8cd4aba8512725b447eed78412c278d107c1b901d96c6556ba6b74d4620` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpartitionweight-congr-of-agreebelow--a5facfb0e96bdde34d4676f3.md) | 253 | `result-track:a5facfb0e96bdde34d4676f38c1fa938a3a8c20cace487c7b263bc1349dc586a` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/directionalpropercontribution-congr-of-agreebelow--c9418b4751c4a82787a64934.md) | 271 | `result-track:c9418b4751c4a82787a649349ce145c68006325b0d0e38bc8b77418e0b1e75b3` |
| 25 | `def` | [recursiveDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/recursivedirectionalcumulant--6aa6919c0ec3d6ffe7753194.md) | 287 | `declaration-track:6aa6919c0ec3d6ffe7753194682a238b78c2924ba59ac93096d7fd877d40f74f` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/recursivedirectionalcumulant-eq-isolated--2e8c0fa799cc9e71e2ae795a.md) | 297 | `result-track:2e8c0fa799cc9e71e2ae795aafd25f156f5c0ff14e3883cb17914a1211d6b035` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/recursivedirectionalcumulant-congr-of-agreebelow--2ceb5797f4f6e59f1509ae6b.md) | 309 | `result-track:2ceb5797f4f6e59f1509ae6bb6952fcb1de72ffe015e26a4d9efb2e1dc8a4bd6` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant3b35ad417abbdfab93194b4d43585ffdef7aabe5f221f25024ef04fd9cbe9927.lean/declarations/recursivedirectionalupdate-satisfies--fff6f7e0c7ac56051d9a545c.md) | 323 | `result-track:fff6f7e0c7ac56051d9a545cfc6fa6917ffc29ea47f0b4260e97b11995a53bdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
