# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb84221f7e946fcbd1c17187cb506334103569db",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb84221f7e946fcbd1c17187cb506334103569db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Zip` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range'_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/range-one--9cf618ad4af0f2cc58a10900.md) | 41 | `result-track:9cf618ad4af0f2cc58a1090037e272669fd85b52776ab6b53f56a3e7127cf8e6` |
| 2 | `theorem` | [pairwise_lt_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/pairwise-lt-range--72b4e23734351c93d8f560e2.md) | 51 | `result-track:72b4e23734351c93d8f560e22fefe67dba295f7885123a0f785239df09636dac` |
| 3 | `theorem` | [nodup_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nodup-range--1bcef1927802c556576b70cc.md) | 57 | `result-track:1bcef1927802c556576b70cce57122a72b67cc56505bb0183518d0fd4f44890d` |
| 4 | `theorem` | [nthLe_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nthle-range--760252e2ced13adc357e91e9.md) | 67 | `result-track:760252e2ced13adc357e91e9e5c5f5f8a3d8e8dc26ff8d4c6fb376b0a4a1c05e` |
| 5 | `theorem` | [nthLe_range'_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nthle-range-1--3044450030b494bb9f58c42f.md) | 71 | `result-track:3044450030b494bb9f58c42f342b9332bb9196d3630449e583c31958b5cc181c` |
| 6 | `theorem` | [pairwise_lt_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/pairwise-lt-range--0fd705bbcd3c25bc92312338.md) | 84 | `result-track:0fd705bbcd3c25bc923123383150dcc13d53b93c1bca2b75053820d2058bc51d` |
| 7 | `theorem` | [pairwise_le_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/pairwise-le-range--e2cd8926432d24551e6b0ef3.md) | 88 | `result-track:e2cd8926432d24551e6b0ef363e86714f0202d8fe9ff20e0c592201c74146204` |
| 8 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nodup-range--85e68f4f3a08787a3400a4fa.md) | 92 | `result-track:85e68f4f3a08787a3400a4faabe600b30e2591555e5aca4bce213ddabcf29e3d` |
| 9 | `theorem` | [chain'_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/chain-range-succ--e5f0c8e7e720b019d5b770a0.md) | 103 | `result-track:e5f0c8e7e720b019d5b770a078765c2e2c85b09329429410042eeaa9d9b93609` |
| 10 | `theorem` | [chain_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/chain-range-succ--0180e2ee109704ee2edb81d3.md) | 114 | `result-track:0180e2ee109704ee2edb81d37dba9ed334808b014709f191c7bc16c51a01c8bf` |
| 11 | `theorem` | [pairwise_gt_iota](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/pairwise-gt-iota--7030a425bcb0140b61395e18.md) | 124 | `result-track:7030a425bcb0140b61395e18bb515e8c5a16122fbe69bdce8148672c633a3b23` |
| 12 | `theorem` | [nodup_iota](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nodup-iota--1b93644b054bd2ca63d099f3.md) | 128 | `result-track:1b93644b054bd2ca63d099f3aefef48625bdac9af88d893e1e0b482bf8be95fd` |
| 13 | `def` | [finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/finrange--be23d31dff62a6c1aac0645a.md) | 136 | `declaration-track:be23d31dff62a6c1aac0645a397929866ebf735802ce3a3637de22368d25a44d` |
| 14 | `theorem` | [finRange_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/finrange-zero--4aecc16583b3fa3802a8dc08.md) | 141 | `result-track:4aecc16583b3fa3802a8dc08b5d4128d125aa7291947d4f78fe882e812102ffe` |
| 15 | `theorem` | [mem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/mem-finrange--df1b601a8f0872c410e594c4.md) | 146 | `result-track:df1b601a8f0872c410e594c4667fd4945ab44b305fbbeacd6401a198d072b23a` |
| 16 | `theorem` | [nodup_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nodup-finrange--57c77b25a8dc5e81e56d0834.md) | 153 | `result-track:57c77b25a8dc5e81e56d0834a99ba5d801a04c0e72fe21483ca5299a42a6a3f6` |
| 17 | `theorem` | [length_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/length-finrange--c601527e11c58aa7ec91f6f1.md) | 158 | `result-track:c601527e11c58aa7ec91f6f188e3207c985b7b9fa57d520e4361644487ea505a` |
| 18 | `theorem` | [finRange_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/finrange-eq-nil--b865ba1d2ac84b118f255781.md) | 163 | `result-track:b865ba1d2ac84b118f255781fead8ddf8e600f0c06d7a7e2bf1e1831007bd2ec` |
| 19 | `theorem` | [prod_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/prod-range-succ--b0452e1191f754370fa8a4f0.md) | 168 | `result-track:b0452e1191f754370fa8a4f09daeca90265f21d6e43ec6ded42d25613a775f6f` |
| 20 | `theorem` | [prod_range_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/prod-range-succ--3558d3f55f602c53cdaa2115.md) | 178 | `result-track:3558d3f55f602c53cdaa2115ab0f76c5b238475d2aaaeb6760646dccfc89bda2` |
| 21 | `theorem` | [enum_eq_zip_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/enum-eq-zip-range--1c99c76984a5055b1fba22fa.md) | 188 | `result-track:1c99c76984a5055b1fba22fa8872a8c62b1f938b572f70751d97caa4425ac48a` |
| 22 | `theorem` | [unzip_enum_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/unzip-enum-eq-prod--43a2e49e63eafb5dfbc14c59.md) | 193 | `result-track:43a2e49e63eafb5dfbc14c5935e11b7462426700a3878aaca8c73ebf6735178b` |
| 23 | `theorem` | [enumFrom_eq_zip_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/enumfrom-eq-zip-range--254a658597b34bf5c08554c0.md) | 197 | `result-track:254a658597b34bf5c08554c0fe1ebc60b33aca2e2220fbfab3902dad6ca755e4` |
| 24 | `theorem` | [unzip_enumFrom_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/unzip-enumfrom-eq-prod--e883fb96aff85605b1804704.md) | 202 | `result-track:e883fb96aff85605b18047048179ebd095f9bb21e636f9d8a23867cb1c53f1f0` |
| 25 | `theorem` | [nthLe_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nthle-range--45cd28f045a3e789c1046738.md) | 209 | `result-track:45cd28f045a3e789c1046738b1138826da454cb09414ace04333a28990f769a2` |
| 26 | `theorem` | [get_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/get-finrange--41dff7d5f329fa796be3b003.md) | 215 | `result-track:41dff7d5f329fa796be3b0035e5d454b817eb46c74103c4806aeb68aa1553ff0` |
| 27 | `theorem` | [finRange_map_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/finrange-map-get--845bcb313128c79c943f705b.md) | 221 | `result-track:845bcb313128c79c943f705bf09e0f405b657e624d9fa138a179de13e95860af` |
| 28 | `theorem` | [nthLe_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant7c12c683dff77af24fddd20c2d2173edeabd1fe4433c4b2f1907818b89b20276.lean/declarations/nthle-finrange--606503adeefd0d28a320e244.md) | 227 | `result-track:606503adeefd0d28a320e24422d2d6cfb41805e3f658423dc66f0c41f37e07be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
