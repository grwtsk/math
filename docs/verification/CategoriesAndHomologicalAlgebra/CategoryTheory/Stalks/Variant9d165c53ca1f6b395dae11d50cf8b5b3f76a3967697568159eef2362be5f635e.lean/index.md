# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Stalks.Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402610cb5d8820923fccc00f18e8043a9a2d9cab",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402610cb5d8820923fccc00f18e8043a9a2d9cab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.OpenNhds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Presheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Evaluation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Pushforward` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stalkFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkfunctor--c3c6dcc67d99f7b26645f2bb.md) | 77 | `declaration-track:c3c6dcc67d99f7b26645f2bbd993856c938cee043dce913267245190442339df` |
| 2 | `def` | [stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalk--f2ef41622f06dd844253aa6d.md) | 87 | `declaration-track:f2ef41622f06dd844253aa6d2632d6f003e6858b2a07cb294ff88b7a815df4b7` |
| 3 | `theorem` | [stalkFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkfunctor-obj--d43492e128e5f625a8ba9b4e.md) | 94 | `result-track:d43492e128e5f625a8ba9b4ea1d518470d526eb77f377f7cb8699fe24436624e` |
| 4 | `def` | [germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ--b06492d8347019e902c7d177.md) | 101 | `declaration-track:b06492d8347019e902c7d17740427277e6eb33de81f2caf8a45456e2964fec58` |
| 5 | `theorem` | [germ_res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-res--c750881feadbd159f16e8034.md) | 106 | `result-track:c750881feadbd159f16e8034fb1d3ff65f38508faa998fd7d68171f3b4118650` |
| 6 | `theorem` | [germ_res_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-res-apply--0e6970f627c946a00bcb752c.md) | 114 | `result-track:0e6970f627c946a00bcb752c579b8b007eef58d7f7295058096cd6cbaf932c0b` |
| 7 | `theorem` | [stalk_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalk-hom-ext--d8c1b61a24f91fdae0b1f906.md) | 123 | `result-track:d8c1b61a24f91fdae0b1f90675d515b204d378be6a500e875e8719b55063b7f9` |
| 8 | `theorem` | [stalkFunctor_map_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkfunctor-map-germ--a40905769ef6f9ada736912b.md) | 131 | `result-track:a40905769ef6f9ada736912bb4e279cb4b917b512fd9c4275b38b92a49f24bac` |
| 9 | `def` | [stalkPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpushforward--e758c942e0d58566ab93beee.md) | 142 | `declaration-track:e758c942e0d58566ab93beeee0f5090334bdfe5833172e8e3eabf23fdc0418f9` |
| 10 | `theorem` | [stalkPushforward_germ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpushforward-germ--f471736ed137e0d4ac855ef5.md) | 151 | `result-track:f471736ed137e0d4ac855ef549b4c1ee675fb20e161837565d56bbad66e6aae9` |
| 11 | `theorem` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/id--671bb8b77c8cfcb158002486.md) | 177 | `result-track:671bb8b77c8cfcb1580024865d13a9435f33f9fb3405024d6e3fa2dfdff8dace` |
| 12 | `theorem` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/comp--1c357f7f1884b426bb1d43c6.md) | 192 | `result-track:1c357f7f1884b426bb1d43c61d84caea461ba1295bb32f2abb2211628e50c8be` |
| 13 | `theorem` | [stalkPushforward_iso_of_openEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpushforward-iso-of-openembedding--db7533eaab6c553b73219179.md) | 203 | `result-track:db7533eaab6c553b73219179b16473856b379379ffdb61d1b1afdf4477654f02` |
| 14 | `def` | [stalkPullbackHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpullbackhom--99a953d3c6c40dce2c403b41.md) | 236 | `declaration-track:99a953d3c6c40dce2c403b4117c092d8c4e05b496a67e156dc8ceb2aad90a66e` |
| 15 | `def` | [germToPullbackStalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germtopullbackstalk--505090b5716eb7cd49a2e92c.md) | 244 | `declaration-track:505090b5716eb7cd49a2e92c6189b7a22cf2f677dba6dcadf8b3686e49164d6f` |
| 16 | `def` | [stalkPullbackInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpullbackinv--31c5392c85b8306a83d33183.md) | 255 | `declaration-track:31c5392c85b8306a83d33183e4be3de751df42a7c119b440cbb41bee1ddb3a6d` |
| 17 | `def` | [stalkPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkpullbackiso--48f65af5737ec60c0c78fa30.md) | 266 | `declaration-track:48f65af5737ec60c0c78fa30d8324d155a42e6516c1b558ab932e1f7db7fa3de` |
| 18 | `def` | [stalkSpecializes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkspecializes--df7fa16d72db13f256fbef54.md) | 312 | `declaration-track:df7fa16d72db13f256fbef5423ee80670703c553151be980e08cdab05d04990a` |
| 19 | `theorem` | [germ_stalkSpecializes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-stalkspecializes--ff337bfe7fac5783c0ba997d.md) | 328 | `result-track:ff337bfe7fac5783c0ba997dddc0b7c9e84110dc9ac4734e8f60fcec27ddc6d0` |
| 20 | `theorem` | [germ_stalk_specializes'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-stalk-specializes--0aa63b7d5f13f5f35d4b788c.md) | 335 | `result-track:0aa63b7d5f13f5f35d4b788cdff3747d4a3fa9b347cf5128e71c793a2311c8ab` |
| 21 | `theorem` | [stalkSpecializes_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkspecializes-refl--90ed812276ecc9968305e24b.md) | 342 | `result-track:90ed812276ecc9968305e24b5b8b068cb42a2169a951a97335f3dabd3cc30b8b` |
| 22 | `theorem` | [stalkSpecializes_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkspecializes-comp--b465f951821827aa6202d6fd.md) | 350 | `result-track:b465f951821827aa6202d6fda6351f61a1c98c55bc9c2b2e70945e211f3dc2e3` |
| 23 | `theorem` | [stalkSpecializes_stalkFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkspecializes-stalkfunctor-map--349687ded4400d63e905a31a.md) | 359 | `result-track:349687ded4400d63e905a31a603b1426af65ca01c2987278e61383dd47046cdc` |
| 24 | `theorem` | [stalkSpecializes_stalkPushforward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkspecializes-stalkpushforward--46f78d2554ccc77c97b81ebb.md) | 368 | `result-track:46f78d2554ccc77c97b81ebb8b2d4ad0cb8c825ac91546b5efc0ac7db95ab812` |
| 25 | `def` | [stalkCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkcongr--2eaf1114f6514d3dd07d1250.md) | 381 | `declaration-track:2eaf1114f6514d3dd07d125091602bd2a9cdbb91a9f098c359ddaf88717ccf17` |
| 26 | `theorem` | [germ_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-ext--006a3a9f9333bfa82eeeabcb.md) | 401 | `result-track:006a3a9f9333bfa82eeeabcbfda3f5d679bd631253730dd60817ccf4610a755a` |
| 27 | `theorem` | [germ_exist](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-exist--78c614de0f08c94b9a60e485.md) | 415 | `result-track:78c614de0f08c94b9a60e4855b84de66f9353ee98ac7a070c177666b1ced3632` |
| 28 | `theorem` | [germ_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/germ-eq--a4420f84822dfbd5ccb9789b.md) | 427 | `result-track:a4420f84822dfbd5ccb9789bcc02d439ce6f633c647a945db04ec0d6b032029c` |
| 29 | `theorem` | [stalkFunctor_map_injective_of_app_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkfunctor-map-injective-of-app-injective--be13a0eba7c330a1c481d3ba.md) | 437 | `result-track:be13a0eba7c330a1c481d3baa1af156d43a28484370ea11112a1c8b470f38222` |
| 30 | `theorem` | [section_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/section-ext--57a7b0b39e522a953429667c.md) | 457 | `result-track:57a7b0b39e522a953429667c74faef7a94689bd10acc40c2413b3aba916bdcf8` |
| 31 | `theorem` | [app_injective_of_stalkFunctor_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-injective-of-stalkfunctor-map-injective--ffd538ef25326ce8e70ef039.md) | 478 | `result-track:ffd538ef25326ce8e70ef039b6f80bbf385763c74f08763700bb3a8b2a8931f6` |
| 32 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-injective-iff-stalkfunctor-map-injective--f20a8726fd26d60a2c129975.md) | 486 | `result-track:f20a8726fd26d60a2c129975bcdca1ba0809ee74328c01812a675281211c3cda` |
| 33 | `instance` | [stalkFunctor_preserves_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalkfunctor-preserves-mono--8b7a747a45bf12131210dfd4.md) | 495 | `declaration-track:8b7a747a45bf12131210dfd44a3d9a6e1f7bc4280601d90605a82f455d29eb32` |
| 34 | `theorem` | [stalk_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalk-mono-of-mono--96668369990f51b06df8c8ec.md) | 509 | `result-track:96668369990f51b06df8c8ecec613d3d8fab52173d9ee45f9a3bba8e4cb1c6c0` |
| 35 | `theorem` | [mono_of_stalk_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/mono-of-stalk-mono--0ce5621af3bc5254f15271c4.md) | 515 | `result-track:0ce5621af3bc5254f15271c48b82be1f0283c9461f4ab102bf62c50f4cd7f1d8` |
| 36 | `theorem` | [mono_iff_stalk_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/mono-iff-stalk-mono--03eea3211275ed49c333fcbe.md) | 525 | `result-track:03eea3211275ed49c333fcbeceadd067b375adf71ae3cfa56d32f30a1478ba6a` |
| 37 | `theorem` | [app_surjective_of_injective_of_locally_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-surjective-of-injective-of-locally-surjective--f8c01bae9e033b459a382922.md) | 535 | `result-track:f8c01bae9e033b459a382922e548a8a65ba0bca83bbaf15885427aa9a472a52b` |
| 38 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-surjective-of-stalkfunctor-map-bijective--5339f0d5de330957778fa084.md) | 570 | `result-track:5339f0d5de330957778fa0842a952791736ff7bd6920b154d40f45b6f3c46d53` |
| 39 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-bijective-of-stalkfunctor-map-bijective--608f93722c6fc231c9b5fdc5.md) | 590 | `result-track:608f93722c6fc231c9b5fdc54c7ab2ae9dcb734e53b2865213e65f94e29f1e08` |
| 40 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/app-isiso-of-stalkfunctor-map-iso--a6e6d8ffc5f21385b2fb7e06.md) | 598 | `result-track:a6e6d8ffc5f21385b2fb7e06ca4ae5a026367a563067aa43f415d00de8138d0a` |
| 41 | `theorem` | [isIso_of_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/isiso-of-stalkfunctor-map-iso--2f58da12f05baca4ed2e70ad.md) | 617 | `result-track:2f58da12f05baca4ed2e70ad811691bfd86ce9124a91c1c6b93057aeed4ba44a` |
| 42 | `theorem` | [isIso_iff_stalkFunctor_map_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/isiso-iff-stalkfunctor-map-iso--9e0f0c8405deadcc0e2fee56.md) | 634 | `result-track:9e0f0c8405deadcc0e2fee56dc4f2bfdef0c3c745795afe237059fcf94d81601` |
| 43 | `instance` | [algebra_section_stalk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/algebra-section-stalk--1295d8939c6c8eb8650d023d.md) | 644 | `declaration-track:1295d8939c6c8eb8650d023dbdbac14c00850a2abaec929b2624d33f58ed4fa2` |
| 44 | `theorem` | [stalk_open_algebraMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant9d165c53ca1f6b395dae11d50cf8b5b3f76a3967697568159eef2362be5f635e.lean/declarations/stalk-open-algebramap--002858c1d3c2d25a59f5384b.md) | 649 | `result-track:002858c1d3c2d25a59f5384b3e9d6b9e5d423f757cf6b83fcdf6de19a7e245e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
