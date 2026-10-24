# Verification target: GRWTSK.Algebra.LinearAlgebra.Range.Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28a9dd7d66ede0fc907e6f1995c4a2f3ed695306",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28a9dd7d66ede0fc907e6f1995c4a2f3ed695306`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Ker` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.RestrictScalars` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range--860a70d98206cf265bf7a72b.md) | 56 | `declaration-track:860a70d98206cf265bf7a72bc9702423a69d01b07c5648c35dc00d78570f0de7` |
| 2 | `theorem` | [range_coe](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-coe--ad5bd5368447ae7e89623821.md) | 59 | `result-track:ad5bd5368447ae7e896238216e3e32c72c2eba728158e5262a8137ab9ed7639a` |
| 3 | `theorem` | [range_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-toaddsubmonoid--41f6451545d333606474bbf2.md) | 62 | `result-track:41f6451545d333606474bbf2da24c5a2ccf067d668c94ea50664fe1641705938` |
| 4 | `theorem` | [mem_range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mem-range--ef73ee6a2ff698e5f25e9d8b.md) | 67 | `result-track:ef73ee6a2ff698e5f25e9d8b858dd03aaff1610d175f2fa6c3e02ef6a5784deb` |
| 5 | `theorem` | [range_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-eq-map--24100b9611e22c2386848bea.md) | 70 | `result-track:24100b9611e22c2386848bea2292e280910b492de6f07ad826aa5985710e415a` |
| 6 | `theorem` | [mem_range_self](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mem-range-self--9fa9e0f02ce8f7ffa318eafb.md) | 74 | `result-track:9fa9e0f02ce8f7ffa318eafbe0170c9897ce26f5f88c083f04f75b1ce357b356` |
| 7 | `theorem` | [range_id](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-id--16c99fe6759444bda6a702ac.md) | 78 | `result-track:16c99fe6759444bda6a702accd6c4e9584fe0e3dc7baab363c0be9b9ccca67f2` |
| 8 | `theorem` | [range_comp](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-comp--a30d05d20c1780a2599a7ec6.md) | 81 | `result-track:a30d05d20c1780a2599a7ec600e5f38bb8a0b21ea9d97620181e9b7490f09ddc` |
| 9 | `theorem` | [range_comp_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-comp-le-range--d4d62b76595b920337025384.md) | 85 | `result-track:d4d62b76595b9203370253846f8c0a2bed8d871d27d25102d1f89d2313e94a3b` |
| 10 | `theorem` | [range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-eq-top--88501d198c4325bff32c1b98.md) | 89 | `result-track:88501d198c4325bff32c1b9846f0f952c09a5a9d1c9ea52c80001a2612ea2918` |
| 11 | `theorem` | [range_eq_top_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-eq-top-of-surjective--cae706f665a09d39646fe4ab.md) | 93 | `result-track:cae706f665a09d39646fe4ab8985234423874fb3b90ef1b9ac564107fd670ca9` |
| 12 | `theorem` | [range_le_iff_comap](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-le-iff-comap--5e5935d8e713b13da0a6516e.md) | 96 | `result-track:5e5935d8e713b13da0a6516e5dd3f53c486f3e81ad1ec8b6a00df20899bb8c3e` |
| 13 | `theorem` | [map_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-le-range--35a63325e38f5d74d500fca7.md) | 99 | `result-track:35a63325e38f5d74d500fca77c5fccd6d9fba9efa57ac329b8fd198f76f2385a` |
| 14 | `theorem` | [range_neg](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-neg--1a5a129126a456a5146dd5a8.md) | 103 | `result-track:1a5a129126a456a5146dd5a82101a1ec073a5c48dcc42b1b2058c521ab4a76aa` |
| 15 | `lemma` | [range_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-domrestrict--32e2faead1fc54b77dbd1952.md) | 109 | `result-track:32e2faead1fc54b77dbd1952dbf6b30595f33a3c4d2264d2a40aa5c58fb7a6e5` |
| 16 | `lemma` | [range_domRestrict_le_range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-domrestrict-le-range--93b0fbe91b0f8db621a18b13.md) | 112 | `result-track:93b0fbe91b0f8db621a18b13ccbf6901503ec03e6f3edb279099a01537efa7cf` |
| 17 | `theorem` | [_root_.AddMonoidHom.coe_toIntLinearMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/root-addmonoidhom-coe-tointlinearmap-range--cf6737d1b71674bfe9521008.md) | 118 | `result-track:cf6737d1b71674bfe952100882a996962d02c29c2d48cad1d22dbfd7107b4ff5` |
| 18 | `lemma` | [_root_.Submodule.map_comap_eq_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/root-submodule-map-comap-eq-of-le--f0c5a0c2d6dfc20dd70f9f94.md) | 122 | `result-track:f0c5a0c2d6dfc20dd70f9f9430c34131e1eb1f694dde0a629322399ae5477c3c` |
| 19 | `lemma` | [range_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-restrictscalars--ac0c6a0b1e40f857b91fcac2.md) | 126 | `result-track:ac0c6a0b1e40f857b91fcac2e3c4eec4f72b6a3ba1f21f8640358a180a2d3a9a` |
| 20 | `def` | [iterateRange](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/iteraterange--f8af30da88255d6776d326b6.md) | 135 | `declaration-track:f8af30da88255d6776d326b60e1638aa61d7fcf392162a5e34613dc475755801` |
| 21 | `abbrev` | [rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/rangerestrict--217fa30e23531f35bb821f33.md) | 148 | `declaration-track:217fa30e23531f35bb821f33e1ad611d950624dc221f0d427b044cb2f091a7a6` |
| 22 | `instance` | [fintypeRange](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/fintyperange--c0689a08c32cfb8d1e304f60.md) | 154 | `declaration-track:c0689a08c32cfb8d1e304f60d8243c49a469f6c3467087b1e9a10c17783f1b18` |
| 23 | `theorem` | [range_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-codrestrict--e81be28b23c10741c21c28dc.md) | 160 | `result-track:e81be28b23c10741c21c28dcef6df1ec4093e89c0533234a6284e1909798ba7a` |
| 24 | `theorem` | [_root_.Submodule.map_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/root-submodule-map-comap-eq--a19cc53c1577a7d66f884cf9.md) | 165 | `result-track:a19cc53c1577a7d66f884cf92cec26e583b6a45a95c26666066b9119f4c81af8` |
| 25 | `theorem` | [_root_.Submodule.map_comap_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/root-submodule-map-comap-eq-self--6414004b847efe06f7e14816.md) | 170 | `result-track:6414004b847efe06f7e148165872bc529771aa4fe459da2ef65fd3577de2a384` |
| 26 | `theorem` | [range_zero](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-zero--11bf4b96b2c6074d092c9923.md) | 174 | `result-track:11bf4b96b2c6074d092c9923713e930f6b922f08bfae2532705fac9af959500a` |
| 27 | `theorem` | [range_le_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-le-bot-iff--78245ba44759763d56280710.md) | 181 | `result-track:78245ba44759763d5628071040bb0440ae5f4ef2bcb98d734ae8d8b30259ce64` |
| 28 | `theorem` | [range_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-eq-bot--1f629218416cfebe639428a9.md) | 184 | `result-track:1f629218416cfebe639428a9a52befc64c10174ca33c6a313b59f16905520dcb` |
| 29 | `theorem` | [range_le_ker_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-le-ker-iff--5f279e4483e138a13358604c.md) | 187 | `result-track:5f279e4483e138a13358604c4422f6c720a0c5220f417450801e7811f83e18bb` |
| 30 | `theorem` | [comap_le_comap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/comap-le-comap-iff--f903de46f5d2a9131ce874f2.md) | 192 | `result-track:f903de46f5d2a9131ce874f2701f1f815930e01efce3486ce9500aadde61c0d9` |
| 31 | `theorem` | [comap_injective](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/comap-injective--2c130ee086eb31ed7d866877.md) | 195 | `result-track:2c130ee086eb31ed7d866877d66891d611176f13769577af6bb91e29d69ff5b2` |
| 32 | `theorem` | [ker_eq_range_of_comp_eq_id](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/ker-eq-range-of-comp-eq-id--2f42c8376f053ae5a58302f4.md) | 199 | `result-track:2f42c8376f053ae5a58302f4841dab778158acc80c0ddc4bd4b42e0f3dc4cc53` |
| 33 | `theorem` | [range_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-toaddsubgroup--0935d842d605dcbbe25968f0.md) | 220 | `result-track:0935d842d605dcbbe25968f0dcb79fc6cf96eee357a554d8d1b871e00d731845` |
| 34 | `theorem` | [ker_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/ker-le-iff--8c231ffd4c7dfbf3275344ae.md) | 224 | `result-track:8c231ffd4c7dfbf3275344ae64feee487b719f96f44a936ec60f084a1c053b39` |
| 35 | `theorem` | [range_smul](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-smul--95bc48810f9d7e3d07d0e2d3.md) | 252 | `result-track:95bc48810f9d7e3d07d0e2d37c100d3d7320d31f39c039eac21134d8fef7d16f` |
| 36 | `theorem` | [range_smul'](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-smul--7126cb71e6c8bc387311f497.md) | 255 | `result-track:7126cb71e6c8bc387311f49798d7bd5484ed59c3b0e66074454e2b039aa7e529` |
| 37 | `theorem` | [map_top](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-top--a66c6602ffae9e16ed446a9f.md) | 276 | `result-track:a66c6602ffae9e16ed446a9f3c1e13f9719f20e522cc13e3e31c9e7b6e83d20b` |
| 38 | `theorem` | [range_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-subtype--56d91b877f0e618571f0211e.md) | 279 | `result-track:56d91b877f0e618571f0211ea8dd50ff6338aea1787f4896034ccd905e0925f3` |
| 39 | `theorem` | [map_subtype_le](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-subtype-le--da2698e2b5cc51ae1b285b80.md) | 281 | `result-track:da2698e2b5cc51ae1b285b8033d722ed8d3c510951e748d8d517ddd8db49e1da` |
| 40 | `theorem` | [map_subtype_top](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-subtype-top--87b7f48a4bab7311a0748da1.md) | 286 | `result-track:87b7f48a4bab7311a0748da1d82580d61c1e7cf884e1cd908511755b0db34990` |
| 41 | `theorem` | [comap_subtype_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/comap-subtype-eq-top--3df03c9f47cc8ddc805a31da.md) | 289 | `result-track:3df03c9f47cc8ddc805a31da57ba699b28f275dde876dee826a6cfe1eb66e054` |
| 42 | `theorem` | [comap_subtype_self](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/comap-subtype-self--0b14d95e615709a158f2c90e.md) | 293 | `result-track:0b14d95e615709a158f2c90e928c9c6c59a0bce77ba5da63ec87e510a9c9a9a6` |
| 43 | `theorem` | [submoduleOf_self](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/submoduleof-self--b57d07d901ef66c6d1b99be6.md) | 296 | `result-track:b57d07d901ef66c6d1b99be64c71911748708b392bff7380076703b9bbef455d` |
| 44 | `theorem` | [submoduleOf_sup_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/submoduleof-sup-of-le--3003b9e3bc6cb88dfbdf8bd5.md) | 298 | `result-track:3003b9e3bc6cb88dfbdf8bd52c67c45ed2fee9652f46647c9c92be54eac1fea6` |
| 45 | `lemma` | [comap_subtype_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/comap-subtype-le-iff--384a2b4881dd1573930624db.md) | 305 | `result-track:384a2b4881dd1573930624db2ae66ac8990bca5d6e04590c6f58730726744dfe` |
| 46 | `theorem` | [range_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-inclusion--a9ca887b5758fa68b5c975da.md) | 310 | `result-track:a9ca887b5758fa68b5c975da13dfde084297ba36825475fce80f26a9aa0fc7e6` |
| 47 | `theorem` | [map_subtype_range_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-subtype-range-inclusion--19a4c9fb1aab1d7f1bbf951d.md) | 315 | `result-track:19a4c9fb1aab1d7f1bbf951db722f9d38add5ed1140fc5e7674076d6d82cd31e` |
| 48 | `lemma` | [restrictScalars_map](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/restrictscalars-map--014144440ce7af9a44d1338d.md) | 318 | `result-track:014144440ce7af9a44d1338d867c0a610929f7170de2e2bda0a75e92d9c5e369` |
| 49 | `def` | [MapSubtype.relIso](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mapsubtype-reliso--a4fb9aff61465b91c714ed95.md) | 325 | `declaration-track:a4fb9aff61465b91c714ed95e7b4669ee347e7c166d13f446a4fd9f1416f429a` |
| 50 | `def` | [MapSubtype.orderEmbedding](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mapsubtype-orderembedding--6c41a5ffd939294a6bdb0c57.md) | 337 | `declaration-track:6c41a5ffd939294a6bdb0c577a344a894a5be8583fbec060221f1ee70899dd07` |
| 51 | `theorem` | [map_subtype_embedding_eq](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/map-subtype-embedding-eq--f1c3395e05e407b7c7fcb7ba.md) | 342 | `result-track:f1c3395e05e407b7c7fcb7bab0b12ac03579395b10a3de564a5368510ce29298` |
| 52 | `def` | [mapIic](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mapiic--6a1efab0f7db46f4f3c2a3b0.md) | 347 | `declaration-track:6a1efab0f7db46f4f3c2a3b018da9fe3c806f1fd7a5720e8787b9d094892578b` |
| 53 | `lemma` | [coe_mapIic_apply](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/coe-mapiic-apply--86633085b6ecbc9c049d95bf.md) | 351 | `result-track:86633085b6ecbc9c049d95bf201556629625ed3bb8fae2e2aa807734a2392978` |
| 54 | `theorem` | [ker_eq_bot_of_cancel](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/ker-eq-bot-of-cancel--fcc97cac4aebe59da2dcf46a.md) | 371 | `result-track:fcc97cac4aebe59da2dcf46a96adb77db19ff13526d20abc56ccf6a0f290d33c` |
| 55 | `theorem` | [range_comp_of_range_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-comp-of-range-eq-top--ab3c6269efb607198c8525a9.md) | 378 | `result-track:ab3c6269efb607198c8525a9d59c7a94a4235a825fd01a711b51bc9f5029ca67` |
| 56 | `def` | [submoduleImage](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/submoduleimage--c3e96b9d8e3fc92d4419461c.md) | 386 | `declaration-track:c3e96b9d8e3fc92d4419461cec4d18393317c5bcb905b381ad40c855afebcb81` |
| 57 | `theorem` | [mem_submoduleImage](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mem-submoduleimage--1f4c9f9dd5fdd038a15a9860.md) | 391 | `result-track:1f4c9f9dd5fdd038a15a9860f07ebf26a76f56aefac33b44ab11122e93083baf` |
| 58 | `theorem` | [mem_submoduleImage_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/mem-submoduleimage-of-le--3005e19b3e2ac663b8a71ec5.md) | 400 | `result-track:3005e19b3e2ac663b8a71ec509d05b5621c949868c62434faf05c91e336b4a6a` |
| 59 | `theorem` | [submoduleImage_apply_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/submoduleimage-apply-of-le--d57d97e4d8a82b668c9e1e9d.md) | 409 | `result-track:d57d97e4d8a82b668c9e1e9d44cffa7620cba1561a96d93a95de8bd1c9cc32c2` |
| 60 | `theorem` | [range_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/range-rangerestrict--1448a011b657016bbf6d74c1.md) | 420 | `result-track:1448a011b657016bbf6d74c1072c82cf2e69d43752e88c133df79b8eefa69124` |
| 61 | `theorem` | [surjective_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/surjective-rangerestrict--abe2ef3ffe9d21b1a1426c74.md) | 422 | `result-track:abe2ef3ffe9d21b1a1426c743787109508e575605afc781f5fdc7755f9b72d2d` |
| 62 | `theorem` | [ker_rangeRestrict](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/ker-rangerestrict--9c96943b9c34a162960830dd.md) | 425 | `result-track:9c96943b9c34a162960830dd94756f1cbf08727157a8b7abd2f824e5e9563e22` |
| 63 | `theorem` | [injective_rangeRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Range/Variantbdd17b010614ac1ef6b1c72ac2d8937d162d198646b862e933320eada4db3faa.lean/declarations/injective-rangerestrict-iff--41368a538c4d0ef6747211ab.md) | 427 | `result-track:41368a538c4d0ef6747211ab9ed0f41cacd44dc70d2fc98957a3c6183f86d9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
