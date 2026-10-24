# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abc8b9e4f01bab22cd13d0a995e0759ea7b36cb9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abc8b9e4f01bab22cd13d0a995e0759ea7b36cb9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/instance--a9398501fa9b9b6607edeb02.md) | 40 | `declaration-track:a9398501fa9b9b6607edeb0228c93e16aef425465e09ed48d2b0631b794dec02` |
| 2 | `def` | [coconeTypesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/coconetypesequiv--a83bcaee2749c79609d0a449.md) | 48 | `declaration-track:a83bcaee2749c79609d0a4492814af24a67d354cbfee854cd1b8660e6b1e5e61` |
| 3 | `lemma` | [CoconeTypes.isColimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/coconetypes-iscolimit-iff--1fc70e1905f40699df3fff35.md) | 63 | `result-track:1fc70e1905f40699df3fff357c03f0c863ef94fc6e2926dfad8b6d298a008d73` |
| 4 | `theorem` | [isColimit_iff_coconeTypesIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/iscolimit-iff-coconetypesiscolimit--9ffd741912e856b967f5dbed.md) | 100 | `result-track:9ffd741912e856b967f5dbedcfaa97a1116ab77e014419978755efbe40802b4b` |
| 5 | `abbrev` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitcocone--be4ebaae0297546169067990.md) | 107 | `declaration-track:be4ebaae0297546169067990137df8bc5b5277a75f566d5fb588350d3f1f9c60` |
| 6 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitcoconeiscolimit--df8504489c82988daccd2378.md) | 111 | `declaration-track:df8504489c82988daccd23788681d94d393141cd67da94684376c1380d817cf0` |
| 7 | `theorem` | [hasColimit_iff_small_colimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/hascolimit-iff-small-colimittype--3ae4db2b50da12ae54dccd5f.md) | 116 | `result-track:3ae4db2b50da12ae54dccd5f3523258f21bb3c0479e84e9bd1cd62b34dd68b4f` |
| 8 | `theorem` | [small_colimitType_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/small-colimittype-of-hascolimit--762ea8b9fe958432d414e703.md) | 122 | `result-track:762ea8b9fe958432d414e703d06f60dea5a0b41d79160aed982c6d851d178e35` |
| 9 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/hascolimit--d325351dc31dca0bfaa42a74.md) | 126 | `declaration-track:d325351dc31dca0bfaa42a745c05895d5def69412e16d667d7b666f9a8fe0272` |
| 10 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/hascolimitsofshape--ffc2aac96420759880822bfe.md) | 129 | `declaration-track:ffc2aac96420759880822bfe383b558bab3df80781d2f58990ba926fd4aac406` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/instance--190371baf3204a5bcd34bc92.md) | 133 | `declaration-track:190371baf3204a5bcd34bc926f75a6928bfc5be0314f172920022b8b814d5387` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/example--c01a5372b78b45b561fe91b6.md) | 138 | `declaration-track:c01a5372b78b45b561fe91b667fca752fba3c857b518a0fa926728e3fa64ded7` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/example--7335049f09086ee0db7ab15f.md) | 140 | `declaration-track:7335049f09086ee0db7ab15f225aa11d8e0669c1acf5e651ece40ff260a8370b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/example--82ebffbb77b4e1ea3192fe11.md) | 143 | `declaration-track:82ebffbb77b4e1ea3192fe1147bb968da53a97fee662e21023b78a54c4ff1551` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/example--5f1070559de4395cfc7c8060.md) | 144 | `declaration-track:5f1070559de4395cfc7c8060f27b616eb666724946dc5dfcb163d0fa2fb1a3a0` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/example--0a7cc6ef81877a1555a259e9.md) | 146 | `declaration-track:0a7cc6ef81877a1555a259e937efe92f163a3b02b5e1960ff6d32a021ee4dec1` |
| 17 | `abbrev` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitcocone--68a58886e390452c9c2a77aa.md) | 155 | `declaration-track:68a58886e390452c9c2a77aa319c1ab74748f6ce79590066b624836d6944ab7b` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitcoconeiscolimit--4228baec6290e2786d2ffe0d.md) | 159 | `declaration-track:4228baec6290e2786d2ffe0da2f5b8a11158bffaa5b11edf308ffde7b690f93e` |
| 19 | `def` | [colimitEquivColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitequivcolimittype--86df5c30c1fd1529b6edaee3.md) | 172 | `declaration-track:86df5c30c1fd1529b6edaee3f24893d5a461206ca45016cfb09f484dd35dedd0` |
| 20 | `theorem` | [colimitEquivColimitType_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitequivcolimittype-symm-apply--21ab90e2c40ef6b30e24371e.md) | 177 | `result-track:21ab90e2c40ef6b30e24371e61743fe7b8ab9625a5591a341e23730c6f87b28f` |
| 21 | `theorem` | [colimitEquivColimitType_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimitequivcolimittype-apply--04205b76fe3060a087088049.md) | 182 | `result-track:04205b76fe3060a0870880491d88d346e056d97eeb849c1b605660a29d278b6b` |
| 22 | `theorem` | [Colimit.w_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-w-apply--e6da37708a2d50c10f38ca0c.md) | 195 | `result-track:e6da37708a2d50c10f38ca0c1a86d2e388039e2ac5fba32c28f01125df657b57` |
| 23 | `theorem` | [Colimit.ι_desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-desc-apply--8254f2391a7cd7ddea7887a2.md) | 201 | `result-track:8254f2391a7cd7ddea7887a287e466d155556b3c0ff5f1dc93eef46a4cb6ab0a` |
| 24 | `theorem` | [Colimit.ι_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-map-apply--d0617f0b99d1125d3eb00221.md) | 206 | `result-track:d0617f0b99d1125d3eb0022175a33caea4a5e8865a0d3975b6cbd10f3d52f399` |
| 25 | `theorem` | [colimit_sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-sound--6177a6d39323714832853cac.md) | 214 | `result-track:6177a6d39323714832853cac02ae2b6a8316f47a570d47b9d7877d6e92fd5616` |
| 26 | `theorem` | [colimit_sound'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-sound--9cdf4b92a59fda50ecc5c974.md) | 219 | `result-track:9cdf4b92a59fda50ecc5c974dc4d7952c20b107721148a905bad9dd88a509fa5` |
| 27 | `theorem` | [colimit_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/colimit-eq--9057de9f42a3827a99360956.md) | 225 | `result-track:9057de9f42a3827a99360956ba01355d158189485df2abcf43fd6c3132ea79b4` |
| 28 | `theorem` | [jointly_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/jointly-surjective-of-iscolimit--545e699508b91bc79dbd2817.md) | 232 | `result-track:545e699508b91bc79dbd2817287297f9d0167863abed4ca38dd0534e58ba0fb9` |
| 29 | `theorem` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/jointly-surjective--ed788e4401982c58ea8d46a0.md) | 249 | `result-track:ed788e4401982c58ea8d46a0ca54162bbbb9336f77f38ce13a923d317b9298c4` |
| 30 | `theorem` | [jointly_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/jointly-surjective--434d68f6aee6b2395b70347a.md) | 254 | `result-track:434d68f6aee6b2395b70347a6664462c7067dd19ba2fd5e050ab5f22f8f433a4` |
| 31 | `theorem` | [nonempty_of_nonempty_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantdddb71469747fc92a8dd8f568d904d3d2c51fe9b17b023eec41f6cecd6660ac4.lean/declarations/nonempty-of-nonempty-colimit--54f90d1b9c9a1f9ed263eea7.md) | 259 | `result-track:54f90d1b9c9a1f9ed263eea79f66b6b8b8b187055b38c54b7e83cd58917ee041` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
