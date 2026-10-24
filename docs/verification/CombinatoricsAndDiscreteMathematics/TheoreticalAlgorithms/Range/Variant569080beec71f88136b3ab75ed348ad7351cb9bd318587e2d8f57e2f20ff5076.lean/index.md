# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8b61866727934c30596462fb86a165786c00495",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8b61866727934c30596462fb86a165786c00495`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/length-range--d0006f7aa8eaa06780a69ab9.md) | 45 | `result-track:d0006f7aa8eaa06780a69ab92970ae920f42cc1acc7837a4871a46fc4f80a09b` |
| 2 | `theorem` | [range'_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-eq-nil-iff--82844c196f777e22e8eec684.md) | 49 | `result-track:82844c196f777e22e8eec684c4cbd51c16c80f18184cb1dbc0b77909a482feb9` |
| 3 | `theorem` | [range'_ne_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-ne-nil-iff--3b9862824746b81c28991e75.md) | 52 | `result-track:3b9862824746b81c28991e757af6ace8002958818ea2a2b90e5929a07ef1a4bf` |
| 4 | `theorem` | [range'_eq_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-eq-cons-iff--a021ef89913d225624c1530a.md) | 55 | `result-track:a021ef89913d225624c1530a2d68d335a0f1715b3c94805e58319f1ca21f86c1` |
| 5 | `theorem` | [tail_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/tail-range--e91e06a0268dfbe51cb47967.md) | 64 | `result-track:e91e06a0268dfbe51cb479674c040cb0e5749b34417faf96386de15557412dfa` |
| 6 | `theorem` | [range'_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-inj--af374379dbc6886f362c548e.md) | 69 | `result-track:af374379dbc6886f362c548e5a28def3b0b279a830721a22bd78731b54ff2068` |
| 7 | `theorem` | [mem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/mem-range--977d4a5df079dc73a0f6c4fb.md) | 82 | `result-track:977d4a5df079dc73a0f6c4fb24072f076dfb77dbb47449633aea032bb1bb127f` |
| 8 | `theorem` | [getElem?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-range--63c483e1d2ecf8f5b34da9e4.md) | 90 | `result-track:63c483e1d2ecf8f5b34da9e4f5ac8a23bbb1f56b140f7f36f8d71c64236f54e1` |
| 9 | `theorem` | [getElem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-range--50bfc10a37053afd90ee54c8.md) | 98 | `result-track:50bfc10a37053afd90ee54c8487507f2b95b5539d53f7f2c11c64b0e68e79fbf` |
| 10 | `theorem` | [head?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/head-range--9a35ac207c65e38305a8733d.md) | 102 | `result-track:9a35ac207c65e38305a8733d712308664f42f2e921825fd07224b9e73cbdc81d` |
| 11 | `theorem` | [head_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/head-range--1b76e92b9960604b5b0be105.md) | 105 | `result-track:1b76e92b9960604b5b0be10575174c1825e1422b5e86868c84e1488dd82a9073` |
| 12 | `theorem` | [map_add_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/map-add-range--f87c0ecd95c09b463cfc584d.md) | 108 | `result-track:f87c0ecd95c09b463cfc584d73e7c3399ee8e12a88c9e1a3647ba0a01a202872` |
| 13 | `theorem` | [range'_succ_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-succ-left--a55878bcad2cc4c247b1a6fd.md) | 112 | `result-track:a55878bcad2cc4c247b1a6fd82d973bb133b75416a8db9776168baecc6286674` |
| 14 | `theorem` | [range'_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-append--fb25eb0788dcaeba2589724a.md) | 117 | `result-track:fb25eb0788dcaeba2589724a003e2908cde3da3be02a56e407dcd88267458a0f` |
| 15 | `theorem` | [range'_append_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-append-1--e633a2ed0db7e15658d47f84.md) | 124 | `result-track:e633a2ed0db7e15658d47f84ac656c8f48ea4e78b7f49e82b2cb4e7592f88b78` |
| 16 | `theorem` | [range'_sublist_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-sublist-right--ff595cc1ef4a22cd82190327.md) | 127 | `result-track:ff595cc1ef4a22cd8219032796b39b0a26fb43dc7a02cf9a447f61e75c8dcfc9` |
| 17 | `theorem` | [range'_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-subset-right--bf5d367f17d6c1846de0dae6.md) | 131 | `result-track:bf5d367f17d6c1846de0dae66961b473b09a00bb377684e23a4ccb681b268599` |
| 18 | `theorem` | [range'_subset_right_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-subset-right-1--af85eec6955d64996f2d43bc.md) | 137 | `result-track:af85eec6955d64996f2d43bc0e750695eb66e65832c96f405703125c5573df23` |
| 19 | `theorem` | [range'_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-concat--4224be52cd9a0cc9aeb038b2.md) | 140 | `result-track:4224be52cd9a0cc9aeb038b2a8650e3841902c1b2c41674573a509831b73a861` |
| 20 | `theorem` | [range'_1_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-1-concat--e5b07b4a9e0b5be6092591fd.md) | 143 | `result-track:e5b07b4a9e0b5be6092591fd6b796aa9969192b35d29685d5089f58776fd8435` |
| 21 | `theorem` | [range_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-one--b1cad64817074b1522bb65b0.md) | 148 | `result-track:b1cad64817074b1522bb65b05693722ad51d1dbb6650070cb5d0ecd3b4384e11` |
| 22 | `theorem` | [range_loop_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-loop-range--876900c7ed9992f97359833f.md) | 150 | `result-track:876900c7ed9992f97359833f92a05f585924127c5f6d29749cb16ddc6671f3b2` |
| 23 | `theorem` | [range_eq_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-eq-range--79385efb4363691cf6473a41.md) | 154 | `result-track:79385efb4363691cf6473a4122a0c5ce602b9cc63d1a8e4bfea5b4ffa6f314c0` |
| 24 | `theorem` | [getElem?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-range--5c89daccc3c286f6717ef305.md) | 157 | `result-track:5c89daccc3c286f6717ef305b97d77b8ff7e7444ed1ab40e2f684b09a467ed85` |
| 25 | `theorem` | [getElem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-range--0c30a6c392d66512614b61af.md) | 160 | `result-track:0c30a6c392d66512614b61af467973c84f9eff2e54443e6130ec1796fcb43b3a` |
| 26 | `theorem` | [range_succ_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-succ-eq-map--c4e560b4d3b4e3dcfaa9484c.md) | 163 | `result-track:c4e560b4d3b4e3dcfaa9484c0cc0874e19f0fef6149e0732cc9ddc4d8f9f1fc1` |
| 27 | `theorem` | [range'_eq_map_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-eq-map-range--52530cbfa036f78409240e95.md) | 167 | `result-track:52530cbfa036f78409240e95b36ad3e6be445e63ef777204746ad09ec8f80ed4` |
| 28 | `theorem` | [length_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/length-range--b23f0c513c8efc192c8fa4ce.md) | 170 | `result-track:b23f0c513c8efc192c8fa4ce7f4c81703b8be93cca80a0bba596958f4c738d56` |
| 29 | `theorem` | [range_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-eq-nil--51b7a3d695336f57e0736271.md) | 173 | `result-track:51b7a3d695336f57e073627183a17cf2ac65dfafb51e366d8bb7b2b36a859419` |
| 30 | `theorem` | [range_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-ne-nil--9756fffe912a2ddf8ea23d6c.md) | 176 | `result-track:9756fffe912a2ddf8ea23d6c2dcc39591464c6cee34ec7752bbad1bc6c3b68c8` |
| 31 | `theorem` | [tail_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/tail-range--ef7062c28dbf0bd1080ce88c.md) | 179 | `result-track:ef7062c28dbf0bd1080ce88c64d9e4c75c3716c063c9a2804f1bc7f8aeec7104` |
| 32 | `theorem` | [range_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-sublist--da667f61749986cef5760b3a.md) | 183 | `result-track:da667f61749986cef5760b3a080bc4013ea77da73b1fe740390232b4d0f4e39b` |
| 33 | `theorem` | [range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-subset--d6d52edb533da0e08496f4b1.md) | 187 | `result-track:d6d52edb533da0e08496f4b198ca535f3023871c1a24c172c604173910c37c63` |
| 34 | `theorem` | [range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-succ--bdbd89aa3eb1c88fe943c681.md) | 190 | `result-track:bdbd89aa3eb1c88fe943c681e9792edcf9af73267659737933b369820e614c05` |
| 35 | `theorem` | [range_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/range-add--65fa13fa5025a8fe9f516730.md) | 193 | `result-track:65fa13fa5025a8fe9f5167304a0d74894966aec280c4d7cdb3dff10fc9308cc2` |
| 36 | `theorem` | [head?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/head-range--e4c00c96b6c7c2195ba72e99.md) | 197 | `result-track:e4c00c96b6c7c2195ba72e9937a3079e4f8aac71167652db68869631617d34cc` |
| 37 | `theorem` | [head_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/head-range--3ea614534b3246582250d91e.md) | 204 | `result-track:3ea614534b3246582250d91e00424dfd2c8211f5f189e9332ef6e98be927dce8` |
| 38 | `theorem` | [getLast?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getlast-range--5230e5efa044b819001109f7.md) | 209 | `result-track:5230e5efa044b819001109f7473d962c09e3b3124195d9cc0d02e21647e2c191` |
| 39 | `theorem` | [getLast_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getlast-range--921032a0be36b972095762b9.md) | 216 | `result-track:921032a0be36b972095762b9fb2425ad72858c03285f76afa8f8cdd3a6e84db7` |
| 40 | `theorem` | [zipIdx_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-eq-nil-iff--b1e7287ae9edb17a8b6c48b4.md) | 224 | `result-track:b1e7287ae9edb17a8b6c48b40504eb0d5c013ad5a0371c484ee7bcb43388a3ac` |
| 41 | `theorem` | [length_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/length-zipidx--7ad0b9e01b43fef7458a159e.md) | 227 | `result-track:7ad0b9e01b43fef7458a159e4eac12444101e53c28f5c920a5940055eb56e660` |
| 42 | `theorem` | [getElem?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-zipidx--d8eb3c50e2bd9440ff4330c2.md) | 232 | `result-track:d8eb3c50e2bd9440ff4330c26f58249adb8a7b6f2a127a5439c8a811befc5440` |
| 43 | `theorem` | [getElem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/getelem-zipidx--7dd071ba2d135affbadce89d.md) | 241 | `result-track:7dd071ba2d135affbadce89d298b48a9253be86795cb0aa9b91bd1f04cef78bd` |
| 44 | `theorem` | [tail_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/tail-zipidx--5a348c13802f2e31e8367e0c.md) | 249 | `result-track:5a348c13802f2e31e8367e0cdda97e324096f85a9665b4a3cd800ec4bc72c15e` |
| 45 | `theorem` | [map_snd_add_zipIdx_eq_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/map-snd-add-zipidx-eq-zipidx--958c805e81a6b0e362ef007e.md) | 254 | `result-track:958c805e81a6b0e362ef007e8288ea9eeb435b485e71fe819c0b89603389edce` |
| 46 | `theorem` | [zipIdx_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-cons--f0730ee1e1304e68aa8def22.md) | 258 | `result-track:f0730ee1e1304e68aa8def2259837a0692c399a50fd626f4ea4e3ada42aa0d7f` |
| 47 | `theorem` | [zipIdx_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-map-snd--a48356f1e8003f9c6e2a5885.md) | 264 | `result-track:a48356f1e8003f9c6e2a5885e3e7e74e8eb45058187dd5f875a2bba2595937c9` |
| 48 | `theorem` | [zipIdx_map_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-map-fst--1bf586867ff9a56af5305c62.md) | 271 | `result-track:1bf586867ff9a56af5305c625d2f461acc009ff5f894237c2f6778775fcc2999` |
| 49 | `theorem` | [zipIdx_eq_zip_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-eq-zip-range--d5a05684f99ffaf865494ef8.md) | 275 | `result-track:d5a05684f99ffaf865494ef8df197342cd394c41b0b33103f0a8d55e21c8ef4c` |
| 50 | `theorem` | [unzip_zipIdx_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/unzip-zipidx-eq-prod--77cfd03ce528cd58b91ffdc9.md) | 279 | `result-track:77cfd03ce528cd58b91ffdc9cd9f5e5e1eb8c64af9694c3660d00ca67564ef3b` |
| 51 | `theorem` | [zipIdx_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-succ--94ea52db200f6e5ad02346f4.md) | 285 | `result-track:94ea52db200f6e5ad02346f44966fb9d33d2f19e098c3b2d7c3e73ca8b907bc8` |
| 52 | `theorem` | [zipIdx_eq_map_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant569080beec71f88136b3ab75ed348ad7351cb9bd318587e2d8f57e2f20ff5076.lean/declarations/zipidx-eq-map-add--9fc658dbf98238e7eedd8969.md) | 293 | `result-track:9fc658dbf98238e7eedd8969f865394ea2ba8c1ad27dba55a2a8ad647d661cad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
