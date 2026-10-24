# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheafify.Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10045c7187f1a7c70ec23b0b08a494137feccd41",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10045c7187f1a7c70ec23b0b08a494137feccd41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Sheaf.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smul--cf20b0edfabba610f8b04196.md) | 50 | `declaration-track:cf20b0edfabba610f8b041966e43adb0052bfdbbc2a62a95f1e928379673cd41` |
| 2 | `lemma` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SMulCandidate.Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-smulcandidate--0a88484694a54d229a79c88f.md) | 64 | `result-track:0a88484694a54d229a79c88f95475f8691fe5c2a43145dc2182a58217412c0e2` |
| 3 | `lemma` | [isCompatible_map_smul_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/iscompatible-map-smul-aux--911dcd600ef397ec071a6fcd.md) | 80 | `result-track:911dcd600ef397ec071a6fcd99618517fbd65b608cc599ec8199242824a18572` |
| 4 | `lemma` | [isCompatible_map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/iscompatible-map-smul--026b78a87e966301e7af63fd.md) | 97 | `result-track:026b78a87e966301e7af63fd3add3992317e38d3e47b547e287da5dc05a20349` |
| 5 | `structure` | [SMulCandidate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smulcandidate--90dacec7856eecf42f73ff80.md) | 150 | `declaration-track:90dacec7856eecf42f73ff80d19d89f6b8fc89744e99acd9697181632742f512` |
| 6 | `def` | [SMulCandidate.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smulcandidate-mk--0bfdf162fe07179c7af785a3.md) | 157 | `declaration-track:0bfdf162fe07179c7af785a3f26049f785ba61df1e839c562378bb3b445d7d78` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/instance--b190ca80bedd0b253c5b19d8.md) | 182 | `declaration-track:b190ca80bedd0b253c5b19d8f7c6f68d2a028f772fbcc3a240173897f57b7410` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/instance--f6c5d4bf484f60bdef909881.md) | 203 | `declaration-track:f6c5d4bf484f60bdef90988131f44fbb85bba3728d2cad348751adacfa71f19c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/instance--375dcbf27bc591d4c716d796.md) | 215 | `declaration-track:375dcbf27bc591d4c716d796515b62ceddca89fd65bd3d57cd07f4d747373183` |
| 10 | `def` | [smulCandidate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smulcandidate--12dc3a8171a668aed477ab45.md) | 219 | `declaration-track:12dc3a8171a668aed477ab45129a6b398021dd95f59437e83c64c47be2e5558c` |
| 11 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smul--360ca2a4d92a8b5f1f85afac.md) | 222 | `declaration-track:360ca2a4d92a8b5f1f85afac4cb319f57b8f96bdd8594a0bc28b3401c7776126` |
| 12 | `lemma` | [map_smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/map-smul-eq--868d4abba9f1eb55fd6c4edb.md) | 224 | `result-track:868d4abba9f1eb55fd6c4edb66f41e98672e813b7fce73fc4f0bfe0376f7fc82` |
| 13 | `lemma` | [one_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/one-smul--23c380617574afa5b733bfde.md) | 229 | `result-track:23c380617574afa5b733bfdebed49d96b3230807778fe29733e29314dd990e29` |
| 14 | `lemma` | [zero_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/zero-smul--cf7895025846561e5588c425.md) | 234 | `result-track:cf7895025846561e5588c4251dee1cb9ec073e74a55f03d62d5dc89f2607aa66` |
| 15 | `lemma` | [smul_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smul-zero--9e028c4a0083d3807db1d15d.md) | 240 | `result-track:9e028c4a0083d3807db1d15de3294bef8e5ddd90e8a7589b2250ac817b9a62d0` |
| 16 | `lemma` | [smul_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/smul-add--2642f3101135c1619a26434b.md) | 246 | `result-track:2642f3101135c1619a26434b7aa76a459c5801c918cf9a22a0fdc6c9b15552e8` |
| 17 | `lemma` | [add_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/add-smul--71866774603574eb994fa5b2.md) | 260 | `result-track:71866774603574eb994fa5b2e97b31e6965320989d569d96a654160c760c8508` |
| 18 | `lemma` | [mul_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/mul-smul--396fd5a37ee4c92b3a920540.md) | 273 | `result-track:396fd5a37ee4c92b3a9205407104275e11154a4af8424a5722d97e8e0c4e06d4` |
| 19 | `def` | [module](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/module--7decc4fb45a09c38c8096fd7.md) | 291 | `declaration-track:7decc4fb45a09c38c8096fd77d8a66bd220d260171f272d372f5aebaeba16e6e` |
| 20 | `lemma` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/map-smul--462e06d7ec9813f88791e5dc.md) | 300 | `result-track:462e06d7ec9813f88791e5dce6aa23e76352b88dd398d7aaf68483908f07e6b9` |
| 21 | `def` | [sheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/sheafify--2f7a84c88858714e8d19c8e6.md) | 322 | `declaration-track:2f7a84c88858714e8d19c8e620fe6a22f1e1c40af8548930a981b31d58e43fdf` |
| 22 | `def` | [toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/tosheafify--973c77d95c6b1c418d5f3594.md) | 327 | `declaration-track:973c77d95c6b1c418d5f3594ca00c551f226a4113a58258dd6cca56a91fb4377` |
| 23 | `lemma` | [toSheafify_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/tosheafify-app-apply--e54e530f47fb1388699d6935.md) | 332 | `result-track:e54e530f47fb1388699d69355023a3faa90efff3b42ec742c1c671d38304acf6` |
| 24 | `lemma` | [toSheafify_app_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/tosheafify-app-apply--daa8c045d9ad8100530c2212.md) | 337 | `result-track:daa8c045d9ad8100530c2212781671227f305227b65247cd1a3a3a766c4370c0` |
| 25 | `lemma` | [toPresheaf_map_toSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/topresheaf-map-tosheafify--e829d27ddd5ed31138ade9cd.md) | 342 | `result-track:e829d27ddd5ed31138ade9cd944de6d9c9e945c06be80229439d3cf9b3f11576` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/instance--0dba996f1233f4e5fb376ab3.md) | 344 | `declaration-track:0dba996f1233f4e5fb376ab30b8785a9b98ade3b25acd6d2f51b423a4207ff28` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/instance--5dd13fc53ac040fef1123af8.md) | 347 | `declaration-track:5dd13fc53ac040fef1123af81b6ece3149b1c004cc4454ac3d959bc2ba8796b3` |
| 28 | `def` | [sheafifyHomEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/sheafifyhomequiv--8de6a038daa14e6f3624d1e3.md) | 355 | `declaration-track:8de6a038daa14e6f3624d1e3d4a01bc28010d70964ffbf70be531dd30503ca0d` |
| 29 | `lemma` | [comp_toPresheaf_map_sheafifyHomEquiv'_symm_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/comp-topresheaf-map-sheafifyhomequiv-symm-hom--12c67b58f1dd4759cb074551.md) | 362 | `result-track:12c67b58f1dd4759cb074551a76f43efd55e56e54290c08f3cb22212d5cd0b26` |
| 30 | `def` | [sheafifyHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/sheafifyhomequiv--3fa42565c02901f3a54958c7.md) | 371 | `declaration-track:3fa42565c02901f3a54958c7b7b2b829b62af677c23bbeb9c90758f56152ed10` |
| 31 | `def` | [sheafifyMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/declarations/sheafifymap--88d97ea43757a5c37a9fee8d.md) | 388 | `declaration-track:88d97ea43757a5c37a9fee8d22d59e9845f3f88cef852c4a0b44d673399d5447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
