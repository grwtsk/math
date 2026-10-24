# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BlockDirectionReindexing.Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean.json)

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
| 1 | `def` | [blockOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockorderiso--0247e62617003a0809df0b8c.md) | 41 | `declaration-track:0247e62617003a0809df0b8c80b58cacf11ce1606add8c1e349632325aa176d4` |
| 2 | `theorem` | [blockOrderIso_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockorderiso-mem--579d82563c08335e65e4f157.md) | 46 | `result-track:579d82563c08335e65e4f15764fda047dd2d5ee6d589816102c431000a117d6f` |
| 3 | `def` | [blockDirections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockdirections--023b238c02dc34c6c0a86335.md) | 53 | `declaration-track:023b238c02dc34c6c0a86335d6e491e3d37b21b53fad422a8bb95aaba374a508` |
| 4 | `theorem` | [blockDirections_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockdirections-apply--130775e57d5500cb63dacd41.md) | 61 | `result-track:130775e57d5500cb63dacd414d9d3b62650ca02582534a5f875b70bbf8ee1697` |
| 5 | `theorem` | [exists_blockIndex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/exists-blockindex--c63d9a7851a6e6597cd44b28.md) | 71 | `result-track:c63d9a7851a6e6597cd44b28bb8fc04806d7578635432fa6711a6a8b37979839` |
| 6 | `theorem` | [block_nonempty_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/block-nonempty-of-mem-parts--28e3374fdb46c4e1c602a6dc.md) | 82 | `result-track:28e3374fdb46c4e1c602a6dc69ad1c90c59f5d3d0bcb08a2c4c4ea408593b983` |
| 7 | `theorem` | [block_card_pos_of_mem_parts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/block-card-pos-of-mem-parts--ce50d0d29a3571682fe315d6.md) | 94 | `result-track:ce50d0d29a3571682fe315d69f7cb819639ea9cc550224e47b8661d0bbccfff6` |
| 8 | `theorem` | [block_card_lt_of_ne_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/block-card-lt-of-ne-univ--7626dfdc2386a5a8176c85b4.md) | 104 | `result-track:7626dfdc2386a5a8176c85b4fec503f2a48ddac97b4c560fb4de5b14bc54fefb` |
| 9 | `theorem` | [block_card_lt_of_mem_properPartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/block-card-lt-of-mem-properpartition--4874fed32c3292f76cbfff9f.md) | 118 | `result-track:4874fed32c3292f76cbfff9fcc8cbe4c2f5eb9953d7b511e85bf838e1a68c9e5` |
| 10 | `abbrev` | [DirectionCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directioncumulantfamily--edc1df9a1f42680277d983d5.md) | 131 | `declaration-track:edc1df9a1f42680277d983d593f0bcc3d4be8875b0841daa12628343e4b3adbf` |
| 11 | `def` | [blockCumulantValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockcumulantvalue--3fce359366bc9eb8a0dfa610.md) | 137 | `declaration-track:3fce359366bc9eb8a0dfa610970892e51d0235501c7508aa85b84adeebd6b010` |
| 12 | `def` | [blockCumulantFunctional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockcumulantfunctional--bbded3b59678a449e8abfd85.md) | 146 | `declaration-track:bbded3b59678a449e8abfd85c7a41ccb3825273ca5227060810bcedbf1ad9875` |
| 13 | `theorem` | [blockCumulantFunctional_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockcumulantfunctional-apply--b54fd9710bd5ba3713125a14.md) | 154 | `result-track:b54fd9710bd5ba3713125a14c09f613e3cab648d61c620d2233cb64fe1c61817` |
| 14 | `def` | [directionalPartitionWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpartitionweight--d487dc8b8655428e34a71580.md) | 168 | `declaration-track:d487dc8b8655428e34a71580f11d1403a6c2757f8c9ab228db20bee593753a21` |
| 15 | `def` | [directionalPartitionMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpartitionmoment--b91446f2b54766e28496e852.md) | 176 | `declaration-track:b91446f2b54766e28496e852088e4485afcf011e9f75e6f1828e410b669555b7` |
| 16 | `def` | [directionalProperContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpropercontribution--f2716bda45bf6f33c529d928.md) | 184 | `declaration-track:f2716bda45bf6f33c529d928a61f3f43555ae953488ab80ea98a3a7d9ee96ce0` |
| 17 | `theorem` | [directionalPartitionWeight_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpartitionweight-apply--d107d55873b4101eecb5f60b.md) | 192 | `result-track:d107d55873b4101eecb5f60bd24de5ab4f0526bfca9e87ef423326750895ff86` |
| 18 | `def` | [AgreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/agreebelow--01ae433dd2f4207109ca509f.md) | 203 | `declaration-track:01ae433dd2f4207109ca509f0ed241859fc3e4c2e08acdf71e15b43cc0e8778d` |
| 19 | `theorem` | [AgreeBelow.refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/agreebelow-refl--3e86f520b372acf2b7f85b41.md) | 210 | `result-track:3e86f520b372acf2b7f85b41837fadb5d0073e9d62f5a16c6bdeddc3c86c139e` |
| 20 | `theorem` | [AgreeBelow.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/agreebelow-symm--c96a209eeb9f7f6b02977f07.md) | 217 | `result-track:c96a209eeb9f7f6b02977f075e698e8eac9bac0e65e57557fccc712e9dbdb579` |
| 21 | `theorem` | [AgreeBelow.trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/agreebelow-trans--b337a012ce5a5daa27e347ed.md) | 225 | `result-track:b337a012ce5a5daa27e347edf471674670a60328527dcaa9cfa1eaff20cb42c2` |
| 22 | `theorem` | [blockCumulantValue_eq_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/blockcumulantvalue-eq-of-agreebelow--d1f593754ddc4b6602704048.md) | 237 | `result-track:d1f593754ddc4b66027040486336620d764dc68b6dbfa5c9e3d8471b98998505` |
| 23 | `theorem` | [directionalPartitionWeight_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpartitionweight-congr-of-agreebelow--a34e5885091d04cd97dc756e.md) | 250 | `result-track:a34e5885091d04cd97dc756edfe462f74cf37349e1deb023341357164e304dc6` |
| 24 | `theorem` | [directionalProperContribution_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/directionalpropercontribution-congr-of-agreebelow--ca39302f4eaf966cacb8f32d.md) | 268 | `result-track:ca39302f4eaf966cacb8f32da9bae8937f7d3058a413923752652f53169ab02d` |
| 25 | `def` | [recursiveDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/recursivedirectionalcumulant--a6813e6cb4e90a5a0607356a.md) | 284 | `declaration-track:a6813e6cb4e90a5a0607356aa5adc11488b8cd927cf5d7ff69b397e1101eb8e4` |
| 26 | `theorem` | [recursiveDirectionalCumulant_eq_isolated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/recursivedirectionalcumulant-eq-isolated--c0a92f164a87205030932a31.md) | 294 | `result-track:c0a92f164a87205030932a3111e08719aa85bb37c23d2a146049c7d4ea754580` |
| 27 | `theorem` | [recursiveDirectionalCumulant_congr_of_agreeBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/recursivedirectionalcumulant-congr-of-agreebelow--4ef9529e150cc5a2ff02f039.md) | 306 | `result-track:4ef9529e150cc5a2ff02f039d927f85f3ad2e5c9c42fca4724548e3a2eafe45d` |
| 28 | `theorem` | [recursiveDirectionalUpdate_satisfies](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/declarations/recursivedirectionalupdate-satisfies--beb481fae9e0b74ef74a09ec.md) | 320 | `result-track:beb481fae9e0b74ef74a09ecc0d7bf6b15b454418efffca15cbe7d35f96eb926` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
