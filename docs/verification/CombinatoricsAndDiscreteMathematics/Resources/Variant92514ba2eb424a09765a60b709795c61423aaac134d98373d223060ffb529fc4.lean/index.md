# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Resources.Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8562049e93fc16aa03371cae2b98468b0342b4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8562049e93fc16aa03371cae2b98468b0342b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/coordinate--0c8bd09a07ee2404ada346e8.md) | 18 | `declaration-track:0c8bd09a07ee2404ada346e891dd18b13fe2084d0718cdf37acedf2b3134285b` |
| 2 | `instance` | [coordinateFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/coordinatefintype--8be07a15f91970ff5c7138a7.md) | 50 | `declaration-track:8be07a15f91970ff5c7138a7613abcdc139b7a4bd9a6988ac438ced52db6099b` |
| 3 | `abbrev` | [Vector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/vector--159e1319255f2f45f272ef9b.md) | 58 | `declaration-track:159e1319255f2f45f272ef9bb8ec5efd3cf4053756e24915264e1a2ddd4c2b01` |
| 4 | `abbrev` | [ResourceVector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/resourcevector--d768477454ac8d7b853e433f.md) | 61 | `declaration-track:d768477454ac8d7b853e433f3a872f2776beaab714a617d730ae53788e67190a` |
| 5 | `def` | [ComponentwiseLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwisele--8e9fda9c9692cfa5eae958a8.md) | 64 | `declaration-track:8e9fda9c9692cfa5eae958a8f860b41897956a3a5551b9d1fd53b7df2affb771` |
| 6 | `def` | [StrictPareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/strictpareto--0fce330ccb0b0a5c81904fb8.md) | 68 | `declaration-track:0fce330ccb0b0a5c81904fb87cbd46578677625383cb9ef9b78c55a6e0da68f7` |
| 7 | `def` | [Incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable--c616f420c00c3168890d661d.md) | 72 | `declaration-track:c616f420c00c3168890d661d33ead0eedc0d6929bea3a5338001da8b70b69b67` |
| 8 | `theorem` | [componentwise_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-refl--be9f3676624acc66005103e0.md) | 76 | `result-track:be9f3676624acc66005103e02aa5cfa7155dae7bfb1437ec01741ea14df02d8b` |
| 9 | `theorem` | [componentwise_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-trans--f29b1cd4460d7e196be6f3e2.md) | 81 | `result-track:f29b1cd4460d7e196be6f3e2ccb0e747025680393b5c66a6851ca4e95f129e38` |
| 10 | `theorem` | [componentwise_antisymm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-antisymm--e0f3823cf0c35e4712238a0b.md) | 87 | `result-track:e0f3823cf0c35e4712238a0b31bff6cdc9546f9f7c5b913657cb1c8e9078d785` |
| 11 | `theorem` | [componentwise_iff_product_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-iff-product-le--c9223515db9cba43ac163946.md) | 93 | `result-track:c9223515db9cba43ac163946007f48b1afe37793d7c324e6f6f7492f8355cceb` |
| 12 | `theorem` | [strictPareto_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/strictpareto-irrefl--236b1a752f3187a56d016485.md) | 97 | `result-track:236b1a752f3187a56d01648522fb3eee940e4e928d125719691e212d1ccc7cec` |
| 13 | `theorem` | [strictPareto_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/strictpareto-trans--0821af3ece1563898d63a555.md) | 103 | `result-track:0821af3ece1563898d63a5552b1297aa3f69968c1689b1b872ced87ecae7173e` |
| 14 | `theorem` | [strictPareto_not_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/strictpareto-not-reverse--b01bcea559fbb9cdef8bd796.md) | 111 | `result-track:b01bcea559fbb9cdef8bd796884777439393cecebff4256de97eef6547eed37d` |
| 15 | `theorem` | [incomparable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable-symm--510ec997d0fc59b2fed51283.md) | 118 | `result-track:510ec997d0fc59b2fed512833e31ae95b68af22fbbb4ac3cdd55306adf80463a` |
| 16 | `theorem` | [incomparable_no_pareto](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable-no-pareto--2818b5fab3595b05e60e55d7.md) | 123 | `result-track:2818b5fab3595b05e60e55d7fcb19f6aafcaca157c1d16ee5df11d8b03d7712a` |
| 17 | `theorem` | [componentwise_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-reindex-iff--ba72d62abbe2b1b6a29790b0.md) | 129 | `result-track:ba72d62abbe2b1b6a29790b0f4b204b01cdfaf0ed7928ad5ec789f2d40a95df2` |
| 18 | `theorem` | [incomparable_reindex_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable-reindex-iff--e548b31a74ec5e498cc4deff.md) | 140 | `result-track:e548b31a74ec5e498cc4deff2c5200f52e1eb77aab8e17ed728989822346ac14` |
| 19 | `theorem` | [componentwise_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/componentwise-add-common-iff--ed811db8d28ce58e150b790c.md) | 147 | `result-track:ed811db8d28ce58e150b790c4438b11a078c90fed6f84efb04c599f1da8969f8` |
| 20 | `theorem` | [incomparable_add_common_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable-add-common-iff--e452f9a8de02a1caf0e863fa.md) | 155 | `result-track:e452f9a8de02a1caf0e863fa2d619cbbda26178840be2d5bd3e1792f7eccec87` |
| 21 | `def` | [ParetoMember](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/paretomember--701bce9d15dc7f3dc6f1a616.md) | 163 | `declaration-track:701bce9d15dc7f3dc6f1a616c857c52e700aa99d93e59c480a95f3700e8d36ca` |
| 22 | `theorem` | [incomparable_pair_retained](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/incomparable-pair-retained--591c182445d2f31080901a31.md) | 167 | `result-track:591c182445d2f31080901a31b6f13d973ab6f8b1d117ce89636e5a1e73673d5c` |
| 23 | `structure` | [ScalarProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/scalarprojection--ae34bad0c1a31cb1c071bb21.md) | 185 | `declaration-track:ae34bad0c1a31cb1c071bb21f993cd7f81007730847a3b06dd362ccc8575e71f` |
| 24 | `def` | [ScalarProjection.value](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/scalarprojection-value--e26a9f15fd6c4bbbb9c5694c.md) | 194 | `declaration-track:e26a9f15fd6c4bbbb9c5694cb205a3c07f08b7a43d80d639593db8f3dc14ff98` |
| 25 | `theorem` | [ScalarProjection.monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/scalarprojection-monotone--75a87311f1afe41e3bc46979.md) | 199 | `result-track:75a87311f1afe41e3bc4697970e6162e0b173d32a258319dbe7f65d805acd141` |
| 26 | `structure` | [FrozenObjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/frozenobjective--bdc25c8eebdfa21ed16293eb.md) | 208 | `declaration-track:bdc25c8eebdfa21ed16293eb917e7bea9c051442e86c4d945d09a4724074757d` |
| 27 | `def` | [FrozenObjective.Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/frozenobjective-admissible--58c44213bf898fcad37bb306.md) | 223 | `declaration-track:58c44213bf898fcad37bb3062566d7a7984eacc999b12a20b0bc47465b2f8e36` |
| 28 | `theorem` | [FrozenObjective.admissible_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/frozenobjective-admissible-of-le--774ae55e11f3fac5ab4efc9a.md) | 228 | `result-track:774ae55e11f3fac5ab4efc9af7197f316c4dcd56668992a7066b89436c2d4700` |
| 29 | `inductive` | [Measurement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/measurement--76505c8417acb5848c6b6cf5.md) | 234 | `declaration-track:76505c8417acb5848c6b6cf5b0aeea94814128c5d28dbc3f6c35623cf43dcd91` |
| 30 | `def` | [FullyMeasured](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/fullymeasured--53d8c10ded59e4e905a1bef7.md) | 244 | `declaration-track:53d8c10ded59e4e905a1bef70c1530a1162e9a9d3ada9f3b8fa06da7f50839c7` |
| 31 | `theorem` | [notMeasured_blocks_completion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/notmeasured-blocks-completion--db7c1c530ecf911e1e232284.md) | 248 | `result-track:db7c1c530ecf911e1e23228454cab69db0da5d8fa37b71af3982a0326d035865` |
| 32 | `theorem` | [unsupported_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/unsupported-ne-measured-zero--34c00f69c14faf82f6041071.md) | 257 | `result-track:34c00f69c14faf82f60410710a1d38b3897ab30b5ea4290a2c5df9d63aaf55e4` |
| 33 | `theorem` | [notMeasured_ne_measured_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/notmeasured-ne-measured-zero--140f8bb47cb3c64331573ea1.md) | 261 | `result-track:140f8bb47cb3c64331573ea13b577766f27336109859f675fa41f2a9006eb44e` |
| 34 | `structure` | [ResourceReport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/resourcereport--679895c141e8cdf35ac51d44.md) | 265 | `declaration-track:679895c141e8cdf35ac51d44d93c725b22980dc8e684b9b8cd4923288fa17338` |
| 35 | `def` | [lowDimensionProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/lowdimensionprofile--230db97094dc51fe40c75ad3.md) | 274 | `declaration-track:230db97094dc51fe40c75ad3ea21a03a1b5a8eb3c993a04e7ba1c66d85f129e6` |
| 36 | `def` | [lowDepthProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/lowdepthprofile--e38bdebd72fee8a4e8e73ec0.md) | 280 | `declaration-track:e38bdebd72fee8a4e8e73ec04ca5502d96860640adbce5c53ea256ed41dc875f` |
| 37 | `theorem` | [dimension_depth_incomparable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/dimension-depth-incomparable--6b0178efa75e28c4356de4eb.md) | 286 | `result-track:6b0178efa75e28c4356de4eb7f8ac2aede4bd1962450dac0e45260b966acd0f5` |
| 38 | `theorem` | [depth_objective_preserves_tradeoff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/declarations/depth-objective-preserves-tradeoff--f2730854ce602236b1472692.md) | 296 | `result-track:f2730854ce602236b1472692a3f087bd1af21b09ab0401eb18957c34e4b42203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
