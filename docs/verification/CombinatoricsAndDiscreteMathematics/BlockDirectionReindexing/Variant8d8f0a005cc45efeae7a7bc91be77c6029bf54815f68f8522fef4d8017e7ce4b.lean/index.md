# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BlockDirectionReindexing.Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ce4927be8e0f0affc46e6c26462a59e98989603",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ce4927be8e0f0affc46e6c26462a59e98989603`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MomentCumulantPartitions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockorderiso--46a8a78d73ba7b8d002b5e82.md) | 49 | `declaration-track:46a8a78d73ba7b8d002b5e82f6503595ec16f1c622c6dedc9330dc5b70ea5a72` |
| 2 | `theorem` | [blockOrderIso_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockorderiso-mem--1018d6560cfb2943e7b8da09.md) | 54 | `result-track:1018d6560cfb2943e7b8da09087f7f22097b60e88762e6b0009a82f7a69cfaa7` |
| 3 | `def` | [blockDirections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockdirections--f11558e2d0816956af4f8277.md) | 61 | `declaration-track:f11558e2d0816956af4f82771f4ce71de9e01e9feb39d947da0d4db944f83fd1` |
| 4 | `theorem` | [blockDirections_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockdirections-apply--d2b543cbde536a83d99bb0e3.md) | 69 | `result-track:d2b543cbde536a83d99bb0e3d65b187ded7895a107174d6afbf09cbf8a41cc68` |
| 5 | `theorem` | [exists_blockIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/exists-blockindex--c0bdc403b1fc4b30ded057c9.md) | 79 | `result-track:c0bdc403b1fc4b30ded057c9d41703d5b91cdfe25baf6fbb0b33b8ee4bf96d05` |
| 6 | `theorem` | [block_nonempty_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/block-nonempty-of-mem-parts--b7d44d24f689fa21237fb2d7.md) | 90 | `result-track:b7d44d24f689fa21237fb2d7fdb6aff4c246fb2f90e32068450d0352c2d21368` |
| 7 | `theorem` | [block_card_pos_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/block-card-pos-of-mem-parts--16872721928a144cdc99aded.md) | 102 | `result-track:16872721928a144cdc99aded7734122810f6e4bc0db70e9c41867f5c29724e8a` |
| 8 | `theorem` | [block_card_lt_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/block-card-lt-of-ne-univ--ac417a5e46a3bd4afa7a33fa.md) | 112 | `result-track:ac417a5e46a3bd4afa7a33fa3232867768b9313d6858624864aa3894ebf1655a` |
| 9 | `theorem` | [block_card_lt_of_mem_properPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/block-card-lt-of-mem-properpartition--6565f4c2af3df9b914c19baf.md) | 126 | `result-track:6565f4c2af3df9b914c19baf831cfbcd6c8f69e55c853b64e60a0361fb55c788` |
| 10 | `abbrev` | [DirectionCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directioncumulantfamily--820b795708945191a8cd556a.md) | 139 | `declaration-track:820b795708945191a8cd556a52002b5c1a7d84c9c855c771c6859a308ac967a2` |
| 11 | `def` | [blockCumulantValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockcumulantvalue--05720d42dbfa002f8ed82d8b.md) | 145 | `declaration-track:05720d42dbfa002f8ed82d8b55eac99ba64b423711f7626d872ad4c1a3d083da` |
| 12 | `def` | [blockCumulantFunctional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockcumulantfunctional--ed271f1764a30a4a851b4329.md) | 154 | `declaration-track:ed271f1764a30a4a851b43293cc349dc60ca27b2c826d6be6ef6a6a60d61c636` |
| 13 | `theorem` | [blockCumulantFunctional_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockcumulantfunctional-apply--0d6ca5ad77792d8bb7628a08.md) | 162 | `result-track:0d6ca5ad77792d8bb7628a08bb97fcca87af693561f2732975f65ade2526a716` |
| 14 | `def` | [directionalPartitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpartitionweight--7d5bb7d58c0cb344883c22fd.md) | 176 | `declaration-track:7d5bb7d58c0cb344883c22fd312f60e00b75fdfd50cb75cf0d733bc1469d2f61` |
| 15 | `def` | [directionalPartitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpartitionmoment--cc1f7a975fe6db52b9a37585.md) | 184 | `declaration-track:cc1f7a975fe6db52b9a37585e44097be6511992927cbce8093ebc8059ffcbfef` |
| 16 | `def` | [directionalProperContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpropercontribution--c8fc982673b8907d271ff6cc.md) | 192 | `declaration-track:c8fc982673b8907d271ff6cc074d309559aaf76e524b6d3d1d8438c4fb652f68` |
| 17 | `theorem` | [directionalPartitionWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpartitionweight-apply--2dfc3bbccf0d1e987de42d61.md) | 200 | `result-track:2dfc3bbccf0d1e987de42d6146cf69b977149ebaf9c855f310e763b03f8cf4fa` |
| 18 | `def` | [AgreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/agreebelow--2ab2d45387b0facba553f86a.md) | 211 | `declaration-track:2ab2d45387b0facba553f86a417f4d461926b6121836d7b583313ed45c2a92ab` |
| 19 | `theorem` | [AgreeBelow.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/agreebelow-refl--0989d23708a85232e023f268.md) | 218 | `result-track:0989d23708a85232e023f268ae848f970b51064e61e13469e2ed9a9c80cc0eea` |
| 20 | `theorem` | [AgreeBelow.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/agreebelow-symm--31cc2286e5fd2ee0bcbcc19d.md) | 225 | `result-track:31cc2286e5fd2ee0bcbcc19dd09dce183326f86f7d76f8abde1359902de6f8c3` |
| 21 | `theorem` | [AgreeBelow.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/agreebelow-trans--50da7662fde66c4fd49717b3.md) | 233 | `result-track:50da7662fde66c4fd49717b3d9823c72d67bb8cf6fa1b521450e3f4704355aee` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/blockcumulantvalue-eq-of-agreebelow--917ae69d1146fa0f9a2d2186.md) | 245 | `result-track:917ae69d1146fa0f9a2d2186cd2b582b6d08d89bfb53a6158ae189b581021de2` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpartitionweight-congr-of-agreebelow--ff2808e35dea2ee393e9a2f7.md) | 258 | `result-track:ff2808e35dea2ee393e9a2f76ca7816ba960d6f08bd2796ce3189d7e4f01bd84` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/directionalpropercontribution-congr-of-agreebelow--410e8f84f6d9bb5aa27a489f.md) | 276 | `result-track:410e8f84f6d9bb5aa27a489fc8aa5c0751dd73cf602cc2112a80f7cd82d56e7b` |
| 25 | `def` | [recursiveDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/recursivedirectionalcumulant--99189a24cd4359df008cd2fa.md) | 292 | `declaration-track:99189a24cd4359df008cd2fa847d49e6d303e48bbe93ca080414175d30cae6b7` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/recursivedirectionalcumulant-eq-isolated--fc5062c4280e82368aab91c8.md) | 302 | `result-track:fc5062c4280e82368aab91c8c5aa58834adf8af0f4dd5797681558fd2289fdd1` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/recursivedirectionalcumulant-congr-of-agreebelow--6ba65027c447033aeb8cbcce.md) | 314 | `result-track:6ba65027c447033aeb8cbcce15fa9ed9a1915e07cdb9e3fdefedd8a0f11128fe` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant8d8f0a005cc45efeae7a7bc91be77c6029bf54815f68f8522fef4d8017e7ce4b.lean/declarations/recursivedirectionalupdate-satisfies--8c01309567ebce09a5f4ab6d.md) | 328 | `result-track:8c01309567ebce09a5f4ab6dcbc0b0fa4df0879d858f17ce4e999dc81af91b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
