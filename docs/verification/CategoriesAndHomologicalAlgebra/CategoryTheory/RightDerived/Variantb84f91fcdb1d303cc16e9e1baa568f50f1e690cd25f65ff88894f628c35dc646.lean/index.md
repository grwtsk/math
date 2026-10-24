# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "185db28b4b6b93e2764550d6717ad79ef090a771",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `185db28b4b6b93e2764550d6717ad79ef090a771`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Injective.Resolution` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.rightDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/functor-rightderivedtohomotopycategory--706a6ab40aa9a2169b77ff7f.md) | 69 | `declaration-track:706a6ab40aa9a2169b77ff7f72efb1ca554a57dcc4ad030e7d99aaf6ee9d077f` |
| 2 | `def` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj--ff4bd80fe42e8c305456bed6.md) | 76 | `declaration-track:ff4bd80fe42e8c305456bed64ae0b5c29ef83fe91c50c96d42a56bf7c606c99a` |
| 3 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-hom-naturality--7bc32677362e8ad62f97f2cd.md) | 84 | `result-track:7bc32677362e8ad62f97f2cd7130be461fe4c4a65d1315e0ab661c3f12f34da6` |
| 4 | `lemma` | [InjectiveResolution.isoRightDerivedToHomotopyCategoryObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedtohomotopycategoryobj-inv-naturality--8100babd2573f8db3333404c.md) | 98 | `result-track:8100babd2573f8db3333404c6e6dd2158a20476522b2e4da599ad08e8ef104ba` |
| 5 | `def` | [Functor.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/functor-rightderived--77ce74781a160ba0529d0036.md) | 111 | `declaration-track:77ce74781a160ba0529d0036cc5e7a3b9dd52ecf7a1dceef2225cfdfd5c33c4c` |
| 6 | `def` | [InjectiveResolution.isoRightDerivedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedobj--f391d8dba576b3125650ed78.md) | 115 | `declaration-track:f391d8dba576b3125650ed78d3aad0e314bb4d243187a9f037c069797d4c4f96` |
| 7 | `lemma` | [InjectiveResolution.isoRightDerivedObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedobj-hom-naturality--7baa74cf8a62c0c236295516.md) | 125 | `result-track:7baa74cf8a62c0c236295516f51a3858049915f3ce3bd64e1b7ab3a79de2ca57` |
| 8 | `lemma` | [InjectiveResolution.isoRightDerivedObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-isorightderivedobj-inv-naturality--c26a80f3b5024e905bb71110.md) | 140 | `result-track:c26a80f3b5024e905bb7111046dbf9f461c8fe38974508f64e9e883880d687e7` |
| 9 | `lemma` | [Functor.isZero_rightDerived_obj_injective_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/functor-iszero-rightderived-obj-injective-succ--35e30859395c1f63b6a05687.md) | 152 | `result-track:35e30859395c1f63b6a056876ea9de30ddfa7a86588529d0aa450005d239bdf4` |
| 10 | `theorem` | [Functor.rightDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/functor-rightderived-map-eq--bcd3da59f3aaaac2354a9d62.md) | 162 | `result-track:bcd3da59f3aaaac2354a9d62fdf20885569bf7faaf8a385d02902eac338061f8` |
| 11 | `def` | [NatTrans.rightDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderivedtohomotopycategory--870dbf2230184329754af8d2.md) | 178 | `declaration-track:870dbf2230184329754af8d2ce16e47539a8ae97bb6577d97bdc81791229a258` |
| 12 | `lemma` | [InjectiveResolution.rightDerivedToHomotopyCategory_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-rightderivedtohomotopycategory-app-eq--90e25be943a17c9a6862d82a.md) | 183 | `result-track:90e25be943a17c9a6862d82ae43974c70bff25fffab58ddfdabd2933a91fc58d` |
| 13 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderivedtohomotopycategory-id--328ec5b8ed27af9e56741cf6.md) | 203 | `result-track:328ec5b8ed27af9e56741cf69fb0ffba964a42690a161a3043743f382b3cb8c2` |
| 14 | `lemma` | [NatTrans.rightDerivedToHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderivedtohomotopycategory-comp--c9a420021394d892bc2a916f.md) | 207 | `result-track:c9a420021394d892bc2a916f54a8bf3d694d84633db81742876a53a1bb5e8b4f` |
| 15 | `def` | [NatTrans.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderived--55fc82dd42ae86c870b89a1f.md) | 215 | `declaration-track:55fc82dd42ae86c870b89a1fa50233f992a521bd03fc9693579530e1cab3a025` |
| 16 | `theorem` | [NatTrans.rightDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderived-id--2eda51398f3ebaaaddf9eaac.md) | 221 | `result-track:2eda51398f3ebaaaddf9eaace625df0ce65f5d1dfb5f95dcc3e8ab6a6f3222e6` |
| 17 | `theorem` | [NatTrans.rightDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/nattrans-rightderived-comp--546fe714b35aac5489604b3a.md) | 228 | `result-track:546fe714b35aac5489604b3a70b8f4ba1d2967df1d6e6668f608b46ce3c8b4bc` |
| 18 | `lemma` | [rightDerived_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderived-app-eq--e3c4dae712130d3bbc747f1e.md) | 237 | `result-track:e3c4dae712130d3bbc747f1edbe190a746d304db881aeb0f34c3d70d247684e7` |
| 19 | `def` | [toRightDerivedZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/torightderivedzero--51662044323bcb3df08397a2.md) | 254 | `declaration-track:51662044323bcb3df08397a2e7ca4d00b8ac4dc519c94fb09b2da74046a50c3e` |
| 20 | `lemma` | [toRightDerivedZero'_comp_iCycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/torightderivedzero-comp-icycles--87e4b62524f1002fa2600850.md) | 263 | `result-track:87e4b62524f1002fa2600850659bf56bff059f6bdd032369e672d42da433a3ee` |
| 21 | `lemma` | [toRightDerivedZero'_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/torightderivedzero-naturality--3ebc6eaad8acd69d1721877c.md) | 270 | `result-track:3ebc6eaad8acd69d1721877c336ec1cbfd3a8766f2b9acf0cc21dc9bff7823e1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/instance--b76b153ac161f3b0fc5aadfd.md) | 283 | `declaration-track:b76b153ac161f3b0fc5aadfd1d272627c925885b6d99b028f3e8fdbac4ea7142` |
| 23 | `def` | [Functor.toRightDerivedZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/functor-torightderivedzero--60355f74dc75eeefe2ffada9.md) | 296 | `declaration-track:60355f74dc75eeefe2ffada95baa3c3ca2a366f2fec114a71c47c61158921d70` |
| 24 | `lemma` | [InjectiveResolution.toRightDerivedZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/injectiveresolution-torightderivedzero-eq--377befb27802555ba1944b89.md) | 310 | `result-track:377befb27802555ba1944b893d55b2731a85f1ce87445db4a3d4f844f67d77c1` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/instance--e4ad613482f3c52be77e3d6c.md) | 329 | `declaration-track:e4ad613482f3c52be77e3d6c85a4023671cc7283789648dd43486bd0474524eb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/instance--948484655814a560280dd422.md) | 338 | `declaration-track:948484655814a560280dd4220e24bff5a159c5546d7ac68dcf44f2b124a7a099` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/instance--224bedefe5ec5475d725ebe8.md) | 344 | `declaration-track:224bedefe5ec5475d725ebe810eacc1014ea524774314ec120d76dad48cb85c9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/instance--8231d913295b4ebcde198189.md) | 348 | `declaration-track:8231d913295b4ebcde1981893d6afd9901d01da8e4ea9f765c273940eae5f79c` |
| 29 | `def` | [rightDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderivedzeroisoself--5678f85d0f13526d82c07909.md) | 356 | `declaration-track:5678f85d0f13526d82c07909b0ca0ce5ef6a08284f21bbb4afe3568496a1565d` |
| 30 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderivedzeroisoself-hom-inv-id--09b6e441fc3cc14f3a9b8133.md) | 360 | `result-track:09b6e441fc3cc14f3a9b8133b553f5288228f3a8cd52d4dbf0de0248f9eda661` |
| 31 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderivedzeroisoself-inv-hom-id--ffb2332810fee537a35b3dfe.md) | 365 | `result-track:ffb2332810fee537a35b3dfe35b9b8104e780bb69c381d897f81c99f09014df8` |
| 32 | `lemma` | [rightDerivedZeroIsoSelf_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderivedzeroisoself-hom-inv-id-app--1793253911cedbff613f5534.md) | 370 | `result-track:1793253911cedbff613f55347219342b6cde355554329b0feea0d3429fa99495` |
| 33 | `lemma` | [rightDerivedZeroIsoSelf_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantb84f91fcdb1d303cc16e9e1baa568f50f1e690cd25f65ff88894f628c35dc646.lean/declarations/rightderivedzeroisoself-inv-hom-id-app--ee5a376df9c09f7bfac6f52a.md) | 375 | `result-track:ee5a376df9c09f7bfac6f52af36e15c074b7dca4994e7464399e0334472c561c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
