# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84f74b665a3ff6998894946ecff8d8dbc6638c85",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84f74b665a3ff6998894946ecff8d8dbc6638c85`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Map` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers--caae23e8cf0dd9f4de6dbe23.md) | 26 | `declaration-track:caae23e8cf0dd9f4de6dbe23b5ecad32a92ce33fb8a6b6c8dc0f2b48f570abe8` |
| 2 | `theorem` | [mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/mem-zpowers--dd220e94c69a5a0d4ce6ce2e.md) | 33 | `result-track:dd220e94c69a5a0d4ce6ce2ec16a5802660effd9eb801150cd8ded3c07b2142d` |
| 3 | `theorem` | [coe_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/coe-zpowers--5bf5260df168cf1190672660.md) | 37 | `result-track:5bf5260df168cf1190672660b70b25647e0ec21976c1ea6a5a5522cb56cbe59f` |
| 4 | `instance` | [decidableMemZPowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/decidablememzpowers--02e9a8cd5b051293bb343300.md) | 41 | `declaration-track:02e9a8cd5b051293bb34330017a1a5b0600ff3378e6152c0174130cbfc4aefcf` |
| 5 | `theorem` | [zpowers_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-eq-closure--f3fa994a217db09cbaec5381.md) | 45 | `result-track:f3fa994a217db09cbaec5381db7b4ebf8dfbb793c2d8bdb3f7448cca62bf74ca` |
| 6 | `theorem` | [mem_zpowers_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/mem-zpowers-iff--6d5c23e6b8b4b47c61e5932c.md) | 50 | `result-track:6d5c23e6b8b4b47c61e5932c3db8dbe1d8cfe7c3033f2e1725ff74f76802520c` |
| 7 | `theorem` | [zpow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpow-mem-zpowers--7e6bfed3c91705707c1d54f1.md) | 54 | `result-track:7e6bfed3c91705707c1d54f135a1ac8efda23650f6902ad90d789f31db7ff499` |
| 8 | `theorem` | [npow_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/npow-mem-zpowers--7c3c7ab24279896b5e2f5f9f.md) | 58 | `result-track:7c3c7ab24279896b5e2f5f9f7551a9ce848b0f9ec66b231a1c2e184f53962b3d` |
| 9 | `theorem` | [forall_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/forall-zpowers--a36636531d42ce631d683737.md) | 63 | `result-track:a36636531d42ce631d683737a47abc1a612d230a396fecc209d45c68a807a329` |
| 10 | `theorem` | [exists_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/exists-zpowers--a9763377282a4c63f6db800f.md) | 68 | `result-track:a9763377282a4c63f6db800fd2cbf8fd1e8c2bca61be09a95640c4cdb26a4602` |
| 11 | `theorem` | [forall_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/forall-mem-zpowers--ac0395cb8d6c3682c3a1b25e.md) | 72 | `result-track:ac0395cb8d6c3682c3a1b25e9031cd229cfd1e7aa5673107e44a114e3d3017bb` |
| 12 | `theorem` | [exists_mem_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/exists-mem-zpowers--62f3cb48fec26f744aa626f0.md) | 76 | `result-track:62f3cb48fec26f744aa626f008ada09e975834b0072efe684e60aa8dc80a5aaf` |
| 13 | `theorem` | [MonoidHom.map_zpowers](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/monoidhom-map-zpowers--b0918d89aff0db82f0bb3ef5.md) | 82 | `result-track:b0918d89aff0db82f0bb3ef5867a8aab119e9b04286dddeabe726395eb3a27d1` |
| 14 | `theorem` | [Int.mem_zmultiples_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/int-mem-zmultiples-iff--27547efe173005624f2e9715.md) | 86 | `result-track:27547efe173005624f2e9715ee351b415b646642263b1e8592343cae025bfbc7` |
| 15 | `lemma` | [Int.zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/int-zmultiples-one--c9932616603c5c5bf4d41695.md) | 90 | `result-track:c9932616603c5c5bf4d416956567c16cc12a6466c37aadce0e7d8b6955e9cf52` |
| 16 | `theorem` | [ofMul_image_zpowers_eq_zmultiples_ofMul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/ofmul-image-zpowers-eq-zmultiples-ofmul--779b44be4c98f6dbed39b4fb.md) | 94 | `result-track:779b44be4c98f6dbed39b4fb31f8bd9005906b3606e7b4d04c5b69f559f1120b` |
| 17 | `theorem` | [ofAdd_image_zmultiples_eq_zpowers_ofAdd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/ofadd-image-zmultiples-eq-zpowers-ofadd--10499184bc2d75ffd6e34258.md) | 106 | `result-track:10499184bc2d75ffd6e34258b76e1c0e369bf56504f97db5eb66fab5b61aaa04` |
| 18 | `instance` | [zpowers_isMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-ismulcommutative--146c0a896684aa46a312b5c1.md) | 118 | `declaration-track:146c0a896684aa46a312b5c109657d3f4243fa8d42cf971287140f43adb3e790` |
| 19 | `theorem` | [zpowers_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-le--f925c22df3f109b9ce03b50e.md) | 128 | `result-track:f925c22df3f109b9ce03b50ed1aa4b241fcb6437301bf3979ca1e18273dea55f` |
| 20 | `theorem` | [zpowers_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-eq-bot--00299569eec7b56cdb58dcb9.md) | 138 | `result-track:00299569eec7b56cdb58dcb9605d9f3e28a287aab8a21d7f2756a289c25ebc74` |
| 21 | `theorem` | [zpowers_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-ne-bot--77580c2871ac35ff59640b05.md) | 141 | `result-track:77580c2871ac35ff59640b05dc11da2a03df63f7e6af76fa2a8e7a1f5f48d871` |
| 22 | `theorem` | [zpowers_one_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-one-eq-bot--a75f63ae128f7036872b2ecf.md) | 145 | `result-track:a75f63ae128f7036872b2ecf368b4b570025614e35eb135789b49fdc4eae5293` |
| 23 | `theorem` | [zpowers_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/zpowers-inv--7922a884e0837ba868cad8b6.md) | 149 | `result-track:7922a884e0837ba868cad8b6b9c03dd04f3d4d926d37bad055f34fa98ce9a0a2` |
| 24 | `theorem` | [Int.zmultiples_natAbs](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/int-zmultiples-natabs--29dae883eb651a82c9a58b67.md) | 154 | `result-track:29dae883eb651a82c9a58b6749974aa26998bbb6e2b15dcc33455cef849c8070` |
| 25 | `lemma` | [AddSubgroup.closure_singleton_int_one_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/addsubgroup-closure-singleton-int-one-eq-top--49b87f4351386c1beaedc1eb.md) | 158 | `result-track:49b87f4351386c1beaedc1ebd5bfe32407d68a08e695664aa018cce5fa0b865e` |
| 26 | `lemma` | [AddSubgroup.zmultiples_one_eq_top](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant4e9cf9ae1d7706667159dea0ba8cb1e08e4169a3d416509d0fe4979da5ccecc8.lean/declarations/addsubgroup-zmultiples-one-eq-top--6183013911a0196769d7a0f2.md) | 162 | `result-track:6183013911a0196769d7a0f29d2164d6ba2ea62fcae011294bdf48d9f8e77c40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
