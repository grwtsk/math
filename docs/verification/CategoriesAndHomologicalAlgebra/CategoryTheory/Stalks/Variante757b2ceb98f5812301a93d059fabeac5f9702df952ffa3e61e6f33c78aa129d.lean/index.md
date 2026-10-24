# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d620ea12831b2d3f8861cfe9574d7736220242f4",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d620ea12831b2d3f8861cfe9574d7736220242f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.OpenNhds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Presheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Evaluation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pushforward` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stalkFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkfunctor--0f6b3213a058e8226b46247b.md) | 85 | `declaration-track:0f6b3213a058e8226b46247ba93220d35de334423460df1a548a6b5a751d962e` |
| 2 | `def` | [stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalk--eb3535d767ba9530a48db111.md) | 95 | `declaration-track:eb3535d767ba9530a48db111795021fbe052094836d3d751b3caf4a873fee58b` |
| 3 | `theorem` | [stalkFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkfunctor-obj--dd00df86034c325ac8afb71f.md) | 102 | `result-track:dd00df86034c325ac8afb71f6993197a2f5fdb3d54421d1ac56594575e20e236` |
| 4 | `def` | [germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ--4e8ae9809875323675c01662.md) | 109 | `declaration-track:4e8ae9809875323675c01662676dd3bc8c81e3eac815fc22d4ecc79229dce352` |
| 5 | `theorem` | [germ_res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-res--4636176aeb69a24ffd5ec132.md) | 114 | `result-track:4636176aeb69a24ffd5ec1321ce6172bde8a5ddc72d33b9af52fa566392b647c` |
| 6 | `theorem` | [germ_res_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-res-apply--f1b4dfb6c1860d574e900d4d.md) | 122 | `result-track:f1b4dfb6c1860d574e900d4daf7fc635f54350da323bbd7a53a4e918e2c606c3` |
| 7 | `theorem` | [stalk_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalk-hom-ext--00894619697372f3d1228144.md) | 131 | `result-track:00894619697372f3d122814484dada394bf434b015c9c44fd429f0246059742c` |
| 8 | `theorem` | [stalkFunctor_map_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkfunctor-map-germ--e9e5cbdf343038dd26812619.md) | 139 | `result-track:e9e5cbdf343038dd2681261965b1bde068b5c57c349fcfc6dd3b667653aaa78e` |
| 9 | `def` | [stalkPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpushforward--a419be1a3ad6bab063fa06f0.md) | 150 | `declaration-track:a419be1a3ad6bab063fa06f0988e684a92924e6bf8f8809dd0a42d23ec9169ac` |
| 10 | `theorem` | [stalkPushforward_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpushforward-germ--9500843c626e1ae8b3221c17.md) | 159 | `result-track:9500843c626e1ae8b3221c17ce2184ff1a1e282c87efff5342b3261bf8ffabbe` |
| 11 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/id--226386740657e7d983e57bf2.md) | 185 | `result-track:226386740657e7d983e57bf26b1617b9656be2bd77b6968dec69d6cc8f181217` |
| 12 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/comp--fc8b5373fd4246ca313729a1.md) | 200 | `result-track:fc8b5373fd4246ca313729a1f9aafc337ff79a0483c27faf9d388a0ab245b2cd` |
| 13 | `theorem` | [stalkPushforward_iso_of_openEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpushforward-iso-of-openembedding--43b5c0665dc7ad261bf8c899.md) | 211 | `result-track:43b5c0665dc7ad261bf8c899e403f45fea55969cb9aa7ffe7b013c3cd0e0462f` |
| 14 | `def` | [stalkPullbackHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpullbackhom--e5e4114c9fce1e093a6fc66b.md) | 244 | `declaration-track:e5e4114c9fce1e093a6fc66b1a598e565c554daf613adcdc698c46ad8a1ed5e0` |
| 15 | `def` | [germToPullbackStalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germtopullbackstalk--a21a3954dd198bbe2be353a4.md) | 252 | `declaration-track:a21a3954dd198bbe2be353a4913128193b7ae0942fbbec5fb475c184c2e9a3de` |
| 16 | `def` | [stalkPullbackInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpullbackinv--b89f9df3cc549041e01742c7.md) | 263 | `declaration-track:b89f9df3cc549041e01742c7122472bf412f8c67ce4d1f24522f268f738ec3df` |
| 17 | `def` | [stalkPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkpullbackiso--0e95d3a89232e4e38ea213cf.md) | 274 | `declaration-track:0e95d3a89232e4e38ea213cfc033a028b36c63a42c6bebfca2b72897c1006598` |
| 18 | `def` | [stalkSpecializes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkspecializes--067818443bbebfa116633dd5.md) | 320 | `declaration-track:067818443bbebfa116633dd5a3d9bf46cc79bd9c136dbcaccc54880d9e684260` |
| 19 | `theorem` | [germ_stalkSpecializes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-stalkspecializes--81dd4490289f27ac8cc36439.md) | 336 | `result-track:81dd4490289f27ac8cc3643936718f10e204abc439dcd168f99401044079765d` |
| 20 | `theorem` | [germ_stalk_specializes'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-stalk-specializes--04fa251e6ded3c9a1e1ad500.md) | 343 | `result-track:04fa251e6ded3c9a1e1ad500150e2e597509030843a8958e05c7d2cf7d8eb714` |
| 21 | `theorem` | [stalkSpecializes_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkspecializes-refl--dbdc4fd2a88596bfd2721e61.md) | 350 | `result-track:dbdc4fd2a88596bfd2721e613c518b6c70c8ca9b19aec74c6d3615aefc3e85a9` |
| 22 | `theorem` | [stalkSpecializes_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkspecializes-comp--ef3d1b8bbe338b1030da3bdf.md) | 358 | `result-track:ef3d1b8bbe338b1030da3bdfdb47f5b11aced5c647e9410cb55afe482ed9bc7f` |
| 23 | `theorem` | [stalkSpecializes_stalkFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkspecializes-stalkfunctor-map--947a14b84ba0ad78934f7042.md) | 367 | `result-track:947a14b84ba0ad78934f7042a67604e5fb78069c05a183b25438310127c6cc69` |
| 24 | `theorem` | [stalkSpecializes_stalkPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkspecializes-stalkpushforward--f7f0b3ad944cc6dc07f18323.md) | 376 | `result-track:f7f0b3ad944cc6dc07f1832307f903d1a66023b5c739507198177e128b254912` |
| 25 | `def` | [stalkCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkcongr--366c8cccb8915fdd90ec7b00.md) | 389 | `declaration-track:366c8cccb8915fdd90ec7b00a85141a1d963f168c6be8cfcc6b37a91524b6089` |
| 26 | `theorem` | [germ_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-ext--b332fda273311719e0d9cf33.md) | 409 | `result-track:b332fda273311719e0d9cf3372b793fc931a34ee06669988045ea33eacb878ae` |
| 27 | `theorem` | [germ_exist](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-exist--2c23452380132d425c4ad29f.md) | 423 | `result-track:2c23452380132d425c4ad29f762135d9d1b4ba4abe5d0f9dbe017df2b6459936` |
| 28 | `theorem` | [germ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/germ-eq--0fd13628c3487c6d3eac2091.md) | 435 | `result-track:0fd13628c3487c6d3eac20917be062bd27a3e0ca6d7a9cb238cb093ace9a8c2d` |
| 29 | `theorem` | [stalkFunctor_map_injective_of_app_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkfunctor-map-injective-of-app-injective--922ed089e6a4c57004a03332.md) | 445 | `result-track:922ed089e6a4c57004a033320ab28aa1543ea5063dcb1c1171bb3d9255918067` |
| 30 | `theorem` | [section_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/section-ext--f65ce81ce1b33ed9305cea8b.md) | 465 | `result-track:f65ce81ce1b33ed9305cea8b32c9f6030484143eb297d0a63301fe93ffc5e9ae` |
| 31 | `theorem` | [app_injective_of_stalkFunctor_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-injective-of-stalkfunctor-map-injective--ecf3a89dcfdd0e44d505993a.md) | 486 | `result-track:ecf3a89dcfdd0e44d505993a78142e0bb7b5e70bf1a168f573130ee227fb0544` |
| 32 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-injective-iff-stalkfunctor-map-injective--eaf16ffa005ffb328f21da8e.md) | 494 | `result-track:eaf16ffa005ffb328f21da8ea55ed6ab3c6ca6fe6a555aba764bd126c215e1a0` |
| 33 | `instance` | [stalkFunctor_preserves_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalkfunctor-preserves-mono--0113e600385a1d62810e0249.md) | 503 | `declaration-track:0113e600385a1d62810e02497973cc0f592bd2a0da2b3c7ab620a8a4bfdae145` |
| 34 | `theorem` | [stalk_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalk-mono-of-mono--ef09aaad26de489cfd0f5a30.md) | 517 | `result-track:ef09aaad26de489cfd0f5a30879b1941c0774daa431c3168009ae8fb040ed61d` |
| 35 | `theorem` | [mono_of_stalk_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/mono-of-stalk-mono--ec5727d8e390c1ebb5c32baa.md) | 523 | `result-track:ec5727d8e390c1ebb5c32baa3a9c9b5ed1742cb67cb76c15144b35fc5f770d00` |
| 36 | `theorem` | [mono_iff_stalk_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/mono-iff-stalk-mono--991b7a52b72c9c22a6151822.md) | 533 | `result-track:991b7a52b72c9c22a6151822bd7e1a25e2fbcf44adbc963df5609682b0181551` |
| 37 | `theorem` | [app_surjective_of_injective_of_locally_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-surjective-of-injective-of-locally-surjective--d3ea9ba4f737119dacb1427b.md) | 543 | `result-track:d3ea9ba4f737119dacb1427b0f49420737ffe463d64b8a0dc451616a2ffa2d36` |
| 38 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-surjective-of-stalkfunctor-map-bijective--336ffef64d084b844aeebbae.md) | 578 | `result-track:336ffef64d084b844aeebbae8b4c9075fc63df6c8233fd81b8df7987e3fcbf9f` |
| 39 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-bijective-of-stalkfunctor-map-bijective--86edb9917d9724022bb55f2f.md) | 598 | `result-track:86edb9917d9724022bb55f2fa85ece3540ac22e57126c80650a91e7592d7af0c` |
| 40 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/app-isiso-of-stalkfunctor-map-iso--001f7d982757538f7eebb01c.md) | 606 | `result-track:001f7d982757538f7eebb01c1eb3c79b4b8691609313f3634b5da90d3d4d3a7d` |
| 41 | `theorem` | [isIso_of_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/isiso-of-stalkfunctor-map-iso--698553ea60d9e93950e3616c.md) | 625 | `result-track:698553ea60d9e93950e3616cff8358324a635640d3ab7e4e1a9a23f8c1952ffc` |
| 42 | `theorem` | [isIso_iff_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/isiso-iff-stalkfunctor-map-iso--d9566c7b9a77dd38497b53f6.md) | 642 | `result-track:d9566c7b9a77dd38497b53f6df684d1addbdd380f9374d5fa754f4912e40ca71` |
| 43 | `instance` | [algebra_section_stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/algebra-section-stalk--d750b601c72767a334ba60f8.md) | 652 | `declaration-track:d750b601c72767a334ba60f878563ce526d4fb9c82f4fb3c23a6c108c9313a0d` |
| 44 | `theorem` | [stalk_open_algebraMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean/declarations/stalk-open-algebramap--93a645e5bf310725644b4a61.md) | 657 | `result-track:93a645e5bf310725644b4a61bffb2b1122422a503459923bcf926d8a7ae9d3c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
