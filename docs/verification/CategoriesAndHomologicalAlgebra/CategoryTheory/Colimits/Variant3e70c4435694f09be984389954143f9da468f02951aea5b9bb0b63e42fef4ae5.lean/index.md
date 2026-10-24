# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46fb445ebdbc4110e8117402dd9dd29626ab9c3b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46fb445ebdbc4110e8117402dd9dd29626ab9c3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/instance--d3fd8ec38991a709c53e1144.md) | 32 | `declaration-track:d3fd8ec38991a709c53e1144c2d752f4ed2d7a71f25c52837bc97faa77cb5dc8` |
| 2 | `def` | [coconeTypesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/coconetypesequiv--3532cac7f11aeef226cbffa0.md) | 40 | `declaration-track:3532cac7f11aeef226cbffa08b4c21f9e62a889fa91ad6255db3e38ff90795bf` |
| 3 | `lemma` | [CoconeTypes.isColimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/coconetypes-iscolimit-iff--a9cd11ce1eb1855b0fe2dcce.md) | 55 | `result-track:a9cd11ce1eb1855b0fe2dccef4f6fbd370788585e2610b416ec7e79cb46d2e9b` |
| 4 | `theorem` | [isColimit_iff_coconeTypesIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/iscolimit-iff-coconetypesiscolimit--f4e21ed9bcbde7d4cfa489fe.md) | 92 | `result-track:f4e21ed9bcbde7d4cfa489fedaa25eda976c8cea7eef49fa65b7b79ccb7c43f8` |
| 5 | `abbrev` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitcocone--47e51028a26a5cc1b352fc9d.md) | 99 | `declaration-track:47e51028a26a5cc1b352fc9d558866f5390a7f39b7d518723b6aebf871f9774f` |
| 6 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitcoconeiscolimit--007a11f74041877a342a3f39.md) | 103 | `declaration-track:007a11f74041877a342a3f3912a4db50af725c643f9ef00fcf1caaf599833044` |
| 7 | `theorem` | [hasColimit_iff_small_colimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/hascolimit-iff-small-colimittype--f4af91b18e14f5ed450b4cc0.md) | 108 | `result-track:f4af91b18e14f5ed450b4cc01d7dc4baf9ffaa1c3c4eb79adb79257e53386e29` |
| 8 | `theorem` | [small_colimitType_of_hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/small-colimittype-of-hascolimit--9ae715530e09d6b3b3719cbd.md) | 114 | `result-track:9ae715530e09d6b3b3719cbd4c3cd6e1f619336af5ca73be64a66ad2c5de4dd9` |
| 9 | `instance` | [hasColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/hascolimit--eefb3ddff4db47d9e03d0314.md) | 118 | `declaration-track:eefb3ddff4db47d9e03d0314ea232e35cfb46cdb963255f2a9767aae78d9b2ca` |
| 10 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/hascolimitsofshape--013bb58380b0b3a2b18b53ef.md) | 121 | `declaration-track:013bb58380b0b3a2b18b53ef7693c53aef18c2c5b17288166aa33f8b8aefa73f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/instance--a0b946842d869bab6bc71468.md) | 125 | `declaration-track:a0b946842d869bab6bc7146829bfb2737efb26b02f59d7df77b1afc8237f48a0` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/example--cfc28feddb2aa39d78c94475.md) | 130 | `declaration-track:cfc28feddb2aa39d78c94475e1257c45d64bb3d3c64b72924d7ca11c7b35dab9` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/example--8cd8efd7766ff845bce79348.md) | 132 | `declaration-track:8cd8efd7766ff845bce79348da637328c0639573068e51a16702b2933079dcb1` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/example--9421a5f830c50bef5e7ef807.md) | 135 | `declaration-track:9421a5f830c50bef5e7ef807f20f6be12df8da069e67fcb77bef9a666d0824de` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/example--336bfa0f40cd24798a523ed6.md) | 136 | `declaration-track:336bfa0f40cd24798a523ed63a1d3fc30057534d1c94cebc72b7fa9aaa843129` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/example--6f1faef2fd1a96dae3463993.md) | 138 | `declaration-track:6f1faef2fd1a96dae34639936cd6691e2761aa9deafe1fd4a62884ab6b1a733f` |
| 17 | `abbrev` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitcocone--e39ec85f16eec6a5327a7112.md) | 147 | `declaration-track:e39ec85f16eec6a5327a7112d19daf76ec0ea0aa14f71c96bd76cb2c334a60f0` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitcoconeiscolimit--a189311f63a3126e8badcf31.md) | 151 | `declaration-track:a189311f63a3126e8badcf31ee78d9d227e9286e77789942923412f4f0399684` |
| 19 | `def` | [colimitEquivColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitequivcolimittype--9a361344cc12f9b6c392f729.md) | 164 | `declaration-track:9a361344cc12f9b6c392f7294590a09f80628dd9481bb6441c789be01641a95f` |
| 20 | `theorem` | [colimitEquivColimitType_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitequivcolimittype-symm-apply--fb14034fbef5c67a8f148ac4.md) | 169 | `result-track:fb14034fbef5c67a8f148ac48be7cbb21de803aa71dce41fcc2c4e6e206b51e2` |
| 21 | `theorem` | [colimitEquivColimitType_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimitequivcolimittype-apply--be2be81621ad6f06cb10e9a0.md) | 174 | `result-track:be2be81621ad6f06cb10e9a0198d254928bb1410e9493d78c8800ac52621ebb6` |
| 22 | `theorem` | [Colimit.w_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-w-apply--899938c484d5a3e2d3e0b0ee.md) | 187 | `result-track:899938c484d5a3e2d3e0b0ee3437cb3b056050f9d3ab55fe314f32adde0507ea` |
| 23 | `theorem` | [Colimit.ι_desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-desc-apply--be52ad4fb3c6a115ed9d5039.md) | 193 | `result-track:be52ad4fb3c6a115ed9d5039ea91b34a09aae84f8cb3fe91324784de55388ee4` |
| 24 | `theorem` | [Colimit.ι_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-map-apply--bbb36728917687b981ca56ab.md) | 198 | `result-track:bbb36728917687b981ca56ab60a8edefb05199a486705dee227d63c28c1e69bf` |
| 25 | `theorem` | [colimit_sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-sound--950f4e400e0a95342f795c51.md) | 206 | `result-track:950f4e400e0a95342f795c51a31f019f8ef8bdddab108d27cfa5ba3bfb38fb74` |
| 26 | `theorem` | [colimit_sound'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-sound--b68892137cc00537f4393658.md) | 211 | `result-track:b68892137cc00537f4393658012d82269148a1734dc69189baccf56bddcda812` |
| 27 | `theorem` | [colimit_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/colimit-eq--837f3c891e2a8a762a7fbe06.md) | 217 | `result-track:837f3c891e2a8a762a7fbe06b6a08d2c6cdd01085e31d662f3d1aa0444757c45` |
| 28 | `theorem` | [jointly_surjective_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/jointly-surjective-of-iscolimit--1faa36895b8e2283ad4d53fe.md) | 224 | `result-track:1faa36895b8e2283ad4d53fe2999d59bd02ca3d2c7decbe15680d4ad07174c49` |
| 29 | `theorem` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/jointly-surjective--7c2cc3f070b4b9aaace2f458.md) | 241 | `result-track:7c2cc3f070b4b9aaace2f458242a44078e54883253d8e2e850fba9a229527201` |
| 30 | `theorem` | [jointly_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/jointly-surjective--46bfb71f20b86e2de9d9c651.md) | 246 | `result-track:46bfb71f20b86e2de9d9c65173e49e141640943129a1ca4bd44087ef0e0a15da` |
| 31 | `theorem` | [nonempty_of_nonempty_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean/declarations/nonempty-of-nonempty-colimit--8cef320654f3336456bde6ea.md) | 251 | `result-track:8cef320654f3336456bde6eaf085a4e715f51de1aa5e0a92886f60b1507783f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
