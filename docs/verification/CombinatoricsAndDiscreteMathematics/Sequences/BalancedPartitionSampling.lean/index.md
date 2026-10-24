# Verification target: GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c`.

Source path: `GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/BalancedPartitionSampling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Partition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partition--4b798024433117112f3b71b4.md) | 29 | `declaration-track:4b798024433117112f3b71b49ccee56152e44cfe0e259e0f92e8fb7ecb2933d6` |
| 2 | `def` | [part](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/part--985a13b95602320ac0f4155c.md) | 33 | `declaration-track:985a13b95602320ac0f4155c33edbe648980d7d163b41832db2a83e78e16f883` |
| 3 | `theorem` | [mem_part](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/mem-part--093ae4e925d2983a9536b894.md) | 36 | `result-track:093ae4e925d2983a9536b894aa54b1c934c804e915a1ee9f8cf17f7f8bc04215` |
| 4 | `theorem` | [part_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/part-card--07845cf23a4b82b3e2626fc4.md) | 40 | `result-track:07845cf23a4b82b3e2626fc49edcd3ca38e9be91896e6e3f386b1cc55ce7f3e2` |
| 5 | `theorem` | [parts_pairwise_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/parts-pairwise-disjoint--e73304f59106bf3b799de2d0.md) | 46 | `result-track:e73304f59106bf3b799de2d0d02fb2057d20b715651ea41ac409df41f6796b05` |
| 6 | `theorem` | [parts_cover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/parts-cover--315ad095c49c286c8e68a106.md) | 54 | `result-track:315ad095c49c286c8e68a106a5f60387ad39907199cf6f0bccf80e318290e546` |
| 7 | `abbrev` | [Selection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/selection--65b1b543158c777b002d4487.md) | 63 | `declaration-track:65b1b543158c777b002d44879cbdcbd12375870aa56e6d6037db9b4f56c62116` |
| 8 | `def` | [Sample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/sample--50a4f4e7485a6aa07e7a9a2d.md) | 68 | `declaration-track:50a4f4e7485a6aa07e7a9a2d21c5688372a921538c8089b2a3faee894338f4cc` |
| 9 | `instance` | [partitionFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partitionfinite--739424a70bdd98d864083d26.md) | 72 | `declaration-track:739424a70bdd98d864083d26a35fffc9fba7c98b42c052dcbcc6cb13936e44b7` |
| 10 | `instance` | [sampleFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/samplefinite--9cab8ba32bb8182506dd4a16.md) | 75 | `declaration-track:9cab8ba32bb8182506dd4a167a5f40a0977da9cb8b24c28e5e94c17ca4f920f5` |
| 11 | `instance` | [partitionFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partitionfintype--067e4b8815b1322a15c0f756.md) | 78 | `declaration-track:067e4b8815b1322a15c0f756c60baf64c899a49d391c997989aeb50b8d3761d3` |
| 12 | `instance` | [sampleFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/samplefintype--35245a4e3e74a6f066383de4.md) | 81 | `declaration-track:35245a4e3e74a6f066383de49c8d1c4b1983268ed85ef600e360cc64b9473bfb` |
| 13 | `def` | [sampleSigmaEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/samplesigmaequiv--0504372e342bb89fb91e56b7.md) | 86 | `declaration-track:0504372e342bb89fb91e56b7077952e71fb2b54101efce99d8c4d937deadc429` |
| 14 | `theorem` | [selection_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/selection-card--ec0ae73369d276a62a40b3c5.md) | 94 | `result-track:ec0ae73369d276a62a40b3c5a87a3d8e4ffd3664f5d82173fc7262f12041b9b3` |
| 15 | `theorem` | [sample_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/sample-card--a1051081f7a84c4c7883fa67.md) | 102 | `result-track:a1051081f7a84c4c7883fa67fd678ff7b6e85ddccefb23699825605e05bbbd6c` |
| 16 | `def` | [output](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/output--f661398fec16a3a81b2b93c6.md) | 111 | `declaration-track:f661398fec16a3a81b2b93c6daed6008e0378b5b7562a3f8de3dd885af028c66` |
| 17 | `theorem` | [choices_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/choices-injective--5f100cc02d384ca5ac316eb9.md) | 114 | `result-track:5f100cc02d384ca5ac316eb95067363cc1990f2e9aa20aad0eed4ad689e62699` |
| 18 | `theorem` | [output_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/output-card--6d7831c8ad395ef59376f21c.md) | 120 | `result-track:6d7831c8ad395ef59376f21cbeadf97f5f0ca9c2f6893de7ff6da5ce7acca7f6` |
| 19 | `theorem` | [partition_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partition-nonempty--06a63fd79a8a3edc85129cde.md) | 128 | `result-track:06a63fd79a8a3edc85129cdeedeae445c33aeb973e5f436d7f9b2bd25e38e2f1` |
| 20 | `theorem` | [sample_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/sample-nonempty--009e7838ee6cf38d6c84fda6.md) | 138 | `result-track:009e7838ee6cf38d6c84fda6b4e7ce4be8ba25aff659c9a5ab153aecfd9a823c` |
| 21 | `def` | [relabel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/relabel--f209ba1b3743ed0fdf52e89d.md) | 149 | `declaration-track:f209ba1b3743ed0fdf52e89df5815671df8d8aadb4fbfafe4060be78f0e52f65` |
| 22 | `theorem` | [relabel_symm_relabel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/relabel-symm-relabel--c717a1df7fde109db8dff46d.md) | 163 | `result-track:c717a1df7fde109db8dff46d8f876c09020e5f512f4f2a62a21bcb9f2990baf7` |
| 23 | `def` | [relabelEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/relabelequiv--752f2c28427e41c03c53e32d.md) | 169 | `declaration-track:752f2c28427e41c03c53e32dccd4c147672879a07435e546f0804a9ea9ae9e06` |
| 24 | `theorem` | [output_relabel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/output-relabel--0eede0bc81aa863720bb980f.md) | 176 | `result-track:0eede0bc81aa863720bb980ff61b69a45b52ca900a97a600fa3433423a940736` |
| 25 | `abbrev` | [OutputFiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/outputfiber--5158c0a9f21803f3b029d178.md) | 189 | `declaration-track:5158c0a9f21803f3b029d17851314f25faa97ec6fc5cbf5f04df89fd75bb1b12` |
| 26 | `def` | [outputFiberEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/outputfiberequiv--c37c016418b97c0871289390.md) | 194 | `declaration-track:c37c016418b97c087128939029fbdb51e293e5b2a4682e25bc02937bd4f1398b` |
| 27 | `theorem` | [outputFiber_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/outputfiber-card-eq--9ab3db7a6f93e8de11a0c3fe.md) | 206 | `result-track:9ab3db7a6f93e8de11a0c3febc28390cb6a7b4cb610f72978168bd70c10195b2` |
| 28 | `theorem` | [sample_card_eq_output_fiber_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/sample-card-eq-output-fiber-mul--4257a480a1228d478d47ac32.md) | 214 | `result-track:4257a480a1228d478d47ac322a664940e6deb84bd646ecb06a2b4061d5d9c97b` |
| 29 | `def` | [jointProbability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/jointprobability--ab6ada1bc1a35138c057d048.md) | 235 | `declaration-track:ab6ada1bc1a35138c057d048c96013ed3f4660577331a4b834a7ca0a92c07d19` |
| 30 | `def` | [eventSigmaEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/eventsigmaequiv--2d6707ce00c2582b79b6a854.md) | 240 | `declaration-track:2d6707ce00c2582b79b6a854ffb0cea74fe5df133d93554adc3f4a1c77dba169` |
| 31 | `theorem` | [jointProbability_eq_partition_average](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/jointprobability-eq-partition-average--f6fe4cf0f81ebfdbfd0a2c21.md) | 251 | `result-track:f6fe4cf0f81ebfdbfd0a2c21140fe8fa7107d4f71dbd8c1cf6345ff7ef809202` |
| 32 | `theorem` | [output_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/output-probability--2a0b87adb3da7d771c521b34.md) | 266 | `result-track:2a0b87adb3da7d771c521b34b9da79c90d27d60ddf0b26919861bda24f91004a` |
| 33 | `theorem` | [selection_rectangle_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/selection-rectangle-probability--ba49492138b3e38d55aa22e5.md) | 296 | `result-track:ba49492138b3e38d55aa22e5ed85504e169e6c28dca85185948b49f368e5da9d` |
| 34 | `def` | [samplePartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/samplepartition--83535975f33ad2a6c19b215e.md) | 307 | `declaration-track:83535975f33ad2a6c19b215ea0480fa853ee59b1f6cdabed3e72c44d73318b3b` |
| 35 | `def` | [partitionFiberEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partitionfiberequiv--464398363281f1685ff7b6cb.md) | 311 | `declaration-track:464398363281f1685ff7b6cb15688aa8757bf57cc4b7b007495da303b96f4eb3` |
| 36 | `theorem` | [partition_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/partition-probability--c1aaea268a60f65022bb9552.md) | 317 | `result-track:c1aaea268a60f65022bb95526be27ba69e09c8aea01c2fee4a2c4699d0a4b243` |
| 37 | `theorem` | [output_event_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/output-event-probability--bc40ca9ab255abe2b85dcc93.md) | 329 | `result-track:bc40ca9ab255abe2b85dcc93ec7484afea720885b3716bae39f7bd821ec308cd` |
| 38 | `def` | [balancedSizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/balancedsizes--475a0fbb8e0e27bc2ffb8502.md) | 375 | `declaration-track:475a0fbb8e0e27bc2ffb850299f07bdab0a5cdaaaa37f42d0160946fe3205172` |
| 39 | `theorem` | [balancedSizes_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/balancedsizes-sum--b81cc3f9c49e6cfeb61b4b57.md) | 378 | `result-track:b81cc3f9c49e6cfeb61b4b574eb7ad450af0d4f1f520316437043e700c7b40fe` |
| 40 | `theorem` | [balancedSizes_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/balancedsizes-pos--69a0360e53e93be9f8c99b69.md) | 392 | `result-track:69a0360e53e93be9f8c99b691497d5c15aac15ad3050adf53b7257dfe2ee643e` |
| 41 | `theorem` | [balanced_sample_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/balanced-sample-nonempty--fa560f38b603b5f7b029409d.md) | 400 | `result-track:fa560f38b603b5f7b029409ddc7885b4015bafa0737150bd852782626bd92937` |
| 42 | `theorem` | [balanced_output_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean/declarations/balanced-output-probability--d50b0903b05e3f8eb0158f6e.md) | 404 | `result-track:d50b0903b05e3f8eb0158f6e5db51e20f6ed377927922d2f0e84613bcc305bb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
