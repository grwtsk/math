# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverLifting.Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa3db1f7bbcd01c46d6a27136857f8519498b17",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa3db1f7bbcd01c46d6a27136857f8519498b17`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean.json)

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
| 1 | `class` | [Functor.IsCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-iscocontinuous--eeeaa7f36fb351702b258cb7.md) | 83 | `declaration-track:eeeaa7f36fb351702b258cb764da2ced54a16857efa0b7fdb67002695496c18d` |
| 2 | `lemma` | [Functor.cover_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-cover-lift--00b4765190091d756d53510c.md) | 86 | `result-track:00b4765190091d756d53510c661075a846d06ad0f8a91b421ca50723631e523b` |
| 3 | `instance` | [isCocontinuous_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/iscocontinuous-id--46e410c4bb02994a33175e0d.md) | 91 | `declaration-track:46e410c4bb02994a33175e0dbbd774fd3677e908bee932a54cd83cfd58b24742` |
| 4 | `theorem` | [isCocontinuous_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/iscocontinuous-comp--464674b23ca3ef1d929aaa00.md) | 95 | `result-track:464674b23ca3ef1d929aaa00b3e730fb60f3b1cf2296ec5a17e5fa5fc68c484b` |
| 5 | `lemma` | [Functor.IsCocontinuous.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-iscocontinuous-of-iso--24db4a40c3ed12b62194a8fb.md) | 100 | `result-track:24db4a40c3ed12b62194a8fb25289a20eadf01e403455cfc68a76a078b882e10` |
| 6 | `lemma` | [Functor.IsCocontinuous.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-iscocontinuous-iff-of-iso--1c7c07811bcde587d0acd0cd.md) | 109 | `result-track:1c7c07811bcde587d0acd0cd4f710d9f680c651b0d2b5012de4c65fd7f77c132` |
| 7 | `lemma` | [CoverPreserving.of_comp_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/coverpreserving-of-comp-of-iscocontinuous--4925a10e7db19ec3a73286f3.md) | 113 | `result-track:4925a10e7db19ec3a73286f36ecbc1e73c6008c021ade61e6b1c2eeb8dc2d1d1` |
| 8 | `lemma` | [Adjunction.isCocontinuous_iff_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/adjunction-iscocontinuous-iff-coverpreserving--e8924f82194bd16a8dcf1d11.md) | 124 | `result-track:e8924f82194bd16a8dcf1d119524413f3f3e7fa4cc0f171ac9dee2dd30e5f9b4` |
| 9 | `lemma` | [Adjunction.isContinuous_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/adjunction-iscontinuous-of-iscocontinuous--94be93cee6d20321700629aa.md) | 139 | `result-track:94be93cee6d20321700629aa4e051ee8b4903bec8d069384b5f7821ecc95d775` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/instance--7da6de7a729b3cac24ab08f7.md) | 145 | `declaration-track:7da6de7a729b3cac24ab08f75425c7bf29bcb264420451a98beea6a886214104` |
| 11 | `def` | [liftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/liftaux--7c27c59915c60e385c03f1cd.md) | 180 | `declaration-track:7c27c59915c60e385c03f1cd2882f45756aeb65292a91223366229b84317dd6d` |
| 12 | `lemma` | [liftAux_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/liftaux-map--3c11eb2918fab643d434676b.md) | 197 | `result-track:3c11eb2918fab643d434676b68108c55d50f2e9dad94531ddd01d6465d716968` |
| 13 | `lemma` | [liftAux_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/liftaux-map--0c98775f4d62f1a7a6c34e35.md) | 217 | `result-track:0c98775f4d62f1a7a6c34e35c837e331a0aad2f28fa7c23ffa8ac36fb85b2c1f` |
| 14 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/lift--58fde1854c6a37c89c038394.md) | 233 | `declaration-track:58fde1854c6a37c89c038394e59a4bce0fe0d13156f8151722e4db6f7ae8804d` |
| 15 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/fac--7955457d9c05362f014b8504.md) | 240 | `result-track:7955457d9c05362f014b8504633dfd319a4110784e4a6bac5b3ec5146f63eb58` |
| 16 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/fac--e3c3c3b9e604becc63d234d1.md) | 247 | `result-track:e3c3c3b9e604becc63d234d126aa72b3690c0e781108012f1bcfee3265b914ce` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/hom-ext--7509f3d0298b3d56f08b4ed2.md) | 259 | `result-track:7509f3d0298b3d56f08b4ed20368b7011068475e2e0bc2fe4cf550f64db6dbff` |
| 18 | `def` | [isLimitMultifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/islimitmultifork--f5fde05681cc42a2ebac0504.md) | 274 | `declaration-track:f5fde05681cc42a2ebac05045136800eb5a2b8d38dfd9f645471f9799fd886fc` |
| 19 | `theorem` | [ran_isSheaf_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/ran-issheaf-of-iscocontinuous--a331e4148e7aa477309d1521.md) | 288 | `result-track:a331e4148e7aa477309d1521cd4efe336b24a442338e2544af5e3f45a5b333c7` |
| 20 | `def` | [Functor.sheafPushforwardCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-sheafpushforwardcocontinuous--275a076d70b5ab67aa30466d.md) | 298 | `declaration-track:275a076d70b5ab67aa30466d1ddbb99e78dee02cc3956dee0f92f06c57d7ccbe` |
| 21 | `def` | [Functor.sheafPushforwardCocontinuousCompSheafToPresheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/functor-sheafpushforwardcocontinuouscompsheaftopresheafiso--79eb0b9d555837dbede94162.md) | 304 | `declaration-track:79eb0b9d555837dbede94162f95b985891abe47fdddd6d2dad718602d5e0836f` |
| 22 | `def` | [sheafAdjunctionCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/sheafadjunctioncocontinuous--c020c8dcaca0062e0aebe286.md) | 329 | `declaration-track:c020c8dcaca0062e0aebe28648a5d2e654ffc06f6f292028501e4ee7bb8c1625` |
| 23 | `lemma` | [sheafAdjunctionCocontinuous_unit_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/sheafadjunctioncocontinuous-unit-app-hom--bc4b0d393f04ae6a6e28f826.md) | 336 | `result-track:bc4b0d393f04ae6a6e28f826b315845e997b1e2f03ee173a37cf8889db273a85` |
| 24 | `lemma` | [sheafAdjunctionCocontinuous_counit_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/sheafadjunctioncocontinuous-counit-app-hom--b12cfe97c9203695a35cc776.md) | 354 | `result-track:b12cfe97c9203695a35cc77663cfe2c49b807f33ab8e0444f6617e9ea8964ca3` |
| 25 | `lemma` | [sheafAdjunctionCocontinuous_homEquiv_apply_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/sheafadjunctioncocontinuous-homequiv-apply-hom--d86bccc9fe25a45c5fc6c5b2.md) | 369 | `result-track:d86bccc9fe25a45c5fc6c5b25d6e3a0cd56cbd8f9b744155845a6996df352e9b` |
| 26 | `def` | [pushforwardContinuousSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/pushforwardcontinuoussheafificationcompatibility--a372a6ee5a827bb514d8a532.md) | 389 | `declaration-track:a372a6ee5a827bb514d8a532af65689b6058e563a5b3cf4495339084265722d8` |
| 27 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/tosheafify-pullbacksheafificationcompatibility--903125e2ce8e4221f7f0d84a.md) | 398 | `result-track:903125e2ce8e4221f7f0d84a9804a5c98396908c3b7c57f882034ae4d0dc9638` |
| 28 | `lemma` | [pushforwardContinuousSheafificationCompatibility_hom_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/declarations/pushforwardcontinuoussheafificationcompatibility-hom-app-hom--ec129ffaa5823cdd2a68a5fd.md) | 421 | `result-track:ec129ffaa5823cdd2a68a5fd96d783810f49f0bf2558df2f523fd2ba430d60f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
