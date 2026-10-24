# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7daac4605c96ec8ef3b79569837518f453c164c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7daac4605c96ec8ef3b79569837518f453c164c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective.Resolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.leftDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/functor-leftderivedtohomotopycategory--a8efb68a258981d414a926c9.md) | 61 | `declaration-track:a8efb68a258981d414a926c93e183d78435c01640f2ef930c91a9b297e84d254` |
| 2 | `def` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj--b212b475bcbacf5adb380e32.md) | 68 | `declaration-track:b212b475bcbacf5adb380e32301b5268176f13c3a7f3b3eb257a0ebeec1b71f9` |
| 3 | `lemma` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj-inv-naturality--011714447e8dbe1b90aee10c.md) | 76 | `result-track:011714447e8dbe1b90aee10c174943314ba41820d36b7cae242ea9ebb4fd8db9` |
| 4 | `lemma` | [ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedtohomotopycategoryobj-hom-naturality--f712e9214a87df13a539e578.md) | 89 | `result-track:f712e9214a87df13a539e5784a7c6c93d44eeb4456d1ab7a271018f8d8605b6e` |
| 5 | `def` | [Functor.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/functor-leftderived--1c889677a64bab1fd674a5e6.md) | 102 | `declaration-track:1c889677a64bab1fd674a5e62e0ae2c9465f0351bbf9978d6bf8c415fdd99283` |
| 6 | `def` | [ProjectiveResolution.isoLeftDerivedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedobj--f7be173b5e8b2e2313b7621e.md) | 106 | `declaration-track:f7be173b5e8b2e2313b7621ec1a46a0aaf459693b0341b1b37e20759778e3149` |
| 7 | `lemma` | [ProjectiveResolution.isoLeftDerivedObj_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedobj-hom-naturality--e8c5a9fb897691c0019d4702.md) | 116 | `result-track:e8c5a9fb897691c0019d47026c305a87826879eff5b3fb92d2d70de7da1aa1c8` |
| 8 | `lemma` | [ProjectiveResolution.isoLeftDerivedObj_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-isoleftderivedobj-inv-naturality--a6d58c5e0a9b9945600da230.md) | 131 | `result-track:a6d58c5e0a9b9945600da2301608d7047349ab2e43077d89e70a19fb94183608` |
| 9 | `lemma` | [Functor.isZero_leftDerived_obj_projective_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/functor-iszero-leftderived-obj-projective-succ--2e51975e2da62a66d02f30fd.md) | 143 | `result-track:2e51975e2da62a66d02f30fdb0fc9349a135f188725c7594b341f2bf8a40466b` |
| 10 | `theorem` | [Functor.leftDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/functor-leftderived-map-eq--a2206a6d310c61b114c420b1.md) | 153 | `result-track:a2206a6d310c61b114c420b14582a30f45e2fc65e4c42af29488614caa57f380` |
| 11 | `def` | [NatTrans.leftDerivedToHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderivedtohomotopycategory--0c850cba80fd49c8edf1910c.md) | 169 | `declaration-track:0c850cba80fd49c8edf1910cdbc2efe6b7bc2fcfa08ebe2556094d2f5dd1e230` |
| 12 | `lemma` | [ProjectiveResolution.leftDerivedToHomotopyCategory_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-leftderivedtohomotopycategory-app-eq--e030b77b30fc1a2c59a14ebd.md) | 174 | `result-track:e030b77b30fc1a2c59a14ebda316a2f2ec25befcbe316d30e77b85c5d4616164` |
| 13 | `lemma` | [NatTrans.leftDerivedToHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderivedtohomotopycategory-id--34d62f3f8a97ee2b4c1707fc.md) | 194 | `result-track:34d62f3f8a97ee2b4c1707fc6b5da2996e007c156c402edfc6608c0d0504001d` |
| 14 | `lemma` | [NatTrans.leftDerivedToHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderivedtohomotopycategory-comp--3cf0a89882eb642fae95847a.md) | 198 | `result-track:3cf0a89882eb642fae95847afb7cdfe52d3f79c832520b85ba38269f29421768` |
| 15 | `def` | [NatTrans.leftDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderived--575b457557cb5a77b8fb7b11.md) | 205 | `declaration-track:575b457557cb5a77b8fb7b11c296873ba0cea9241336fa04fb92a85d893f6900` |
| 16 | `theorem` | [NatTrans.leftDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderived-id--66f63c806725c70c0230923e.md) | 211 | `result-track:66f63c806725c70c0230923e329eedccdf1cc41ce81b65ec610aa308907c675a` |
| 17 | `theorem` | [NatTrans.leftDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/nattrans-leftderived-comp--881a0504a76801bf17b0b191.md) | 218 | `result-track:881a0504a76801bf17b0b191b2c4ca7ce012aabbb9e1dd87c8787160125b852e` |
| 18 | `lemma` | [leftDerived_app_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderived-app-eq--c3e162eca00e7c8fa1c49fae.md) | 227 | `result-track:c3e162eca00e7c8fa1c49fae60c4b08f78d80ea9f610252348507a4d0bd99095` |
| 19 | `def` | [fromLeftDerivedZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/fromleftderivedzero--346ee536d2af0a4dab534525.md) | 244 | `declaration-track:346ee536d2af0a4dab53452526842e0c1ed4b607e934772bd5a1469280f76767` |
| 20 | `lemma` | [pOpcycles_comp_fromLeftDerivedZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/popcycles-comp-fromleftderivedzero--7e1c679ca99c37ad696ee812.md) | 252 | `result-track:7e1c679ca99c37ad696ee812470df24f98e2ca90e9b2058c3f837d6bf04db6f4` |
| 21 | `lemma` | [fromLeftDerivedZero'_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/fromleftderivedzero-naturality--ba9f44360f504be2dce22ad8.md) | 258 | `result-track:ba9f44360f504be2dce22ad8c5172155b5e6fedf18d2aeb6f3adcab08a206c50` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/instance--5bacd9fd97b357d76b0e58e2.md) | 268 | `declaration-track:5bacd9fd97b357d76b0e58e272ac1d5ba4a0e1dc7f4608b467add47260d8ea0a` |
| 23 | `def` | [Functor.fromLeftDerivedZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/functor-fromleftderivedzero--a63be647198b00cad43c9d47.md) | 281 | `declaration-track:a63be647198b00cad43c9d4726c336a353ea30096601138a223ff0d219d6d64e` |
| 24 | `lemma` | [ProjectiveResolution.fromLeftDerivedZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/projectiveresolution-fromleftderivedzero-eq--3c4a8bd1bda2eca558dc3f70.md) | 294 | `result-track:3c4a8bd1bda2eca558dc3f7022103b0afbb3f95df37cbcf2ff2968b6a2b1cd2a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/instance--ff2343f68ffa76676b6f16e2.md) | 313 | `declaration-track:ff2343f68ffa76676b6f16e21fd4be89efe5823011440a82e8e0beaabeb5032e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/instance--0bd17566ba02ebc4839d116c.md) | 322 | `declaration-track:0bd17566ba02ebc4839d116c5ae96bd1637e3c3a3fc8be41132e0a21a26e2ab0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/instance--984c074f2243e5541fdc8843.md) | 328 | `declaration-track:984c074f2243e5541fdc88431f64cda615a51d1f6575609fabad116fc4fcbc50` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/instance--0c621a9a0333599e185676d0.md) | 332 | `declaration-track:0c621a9a0333599e185676d06d326e199332250d7a5b65830a2895e61b0f8b34` |
| 29 | `def` | [leftDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderivedzeroisoself--cf8c1f5f9e70d539d51ed479.md) | 340 | `declaration-track:cf8c1f5f9e70d539d51ed479d60a8422eccdfd0f521d1663daecf5eecc438a30` |
| 30 | `lemma` | [leftDerivedZeroIsoSelf_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderivedzeroisoself-hom-inv-id--fea1cf16a593cffce54539f6.md) | 344 | `result-track:fea1cf16a593cffce54539f60e247ccaf57951a6a00138f245510d056ece78a4` |
| 31 | `lemma` | [leftDerivedZeroIsoSelf_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderivedzeroisoself-inv-hom-id--6f2ac70e312226e753279148.md) | 349 | `result-track:6f2ac70e312226e753279148451e5c3cb98444528a488925fe68c8091b1e536d` |
| 32 | `lemma` | [leftDerivedZeroIsoSelf_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderivedzeroisoself-hom-inv-id-app--9d9a6997f7ffd13cc6b60610.md) | 354 | `result-track:9d9a6997f7ffd13cc6b606102f09a5afe051ad5852e2ad5062578a0b663698c8` |
| 33 | `lemma` | [leftDerivedZeroIsoSelf_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variantb839bf3e6d2edeb505e156d4ad0e28c90616748724f09066fe13721cdc69cd21.lean/declarations/leftderivedzeroisoself-inv-hom-id-app--90aaffc5ea24391391446963.md) | 359 | `result-track:90aaffc5ea24391391446963dc2ee9e52836347297758f3050a58bd99d69bb73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
