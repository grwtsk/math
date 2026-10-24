# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b378fd4e8ef0b8942834b3d0a6f78896f968766",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b378fd4e8ef0b8942834b3d0a6f78896f968766`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/presheafofmodules--a64c7337dd03824c6e3d76aa.md) | 47 | `declaration-track:a64c7337dd03824c6e3d76aaf702fa4da152e7e99554a7a88d3df275bd4256ab` |
| 2 | `lemma` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/map-smul--a75c3468d6490fcf943cbcd4.md) | 68 | `result-track:a75c3468d6490fcf943cbcd45808f2ac7a5feb5ceea220a25329b3c8268ff2ba` |
| 3 | `lemma` | [congr_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/congr-map-apply--27c97f5594564e3fda67ba68.md) | 71 | `result-track:27c97f5594564e3fda67ba684534cc4ad36502ba442c258506487d9eb5d4e4f8` |
| 4 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/hom--524d6c1278038b021e74341e.md) | 77 | `declaration-track:524d6c1278038b021e74341e51950298d7b755cbfd217dc1a5f6bce1f54a753c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--b3b58fca76e9705217764d7f.md) | 86 | `declaration-track:b3b58fca76e9705217764d7fbf0e7936d2ce5e5d7c44fa184f0878d4a51149f5` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/hom-ext--0ab4b31a3e5a8305ad7ad35f.md) | 94 | `result-track:0ab4b31a3e5a8305ad7ad35f5b488f966681d3e4ebd7544e8360b65be354eb1e` |
| 7 | `lemma` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/id-app--a33a0ab41621e9e8833d0951.md) | 98 | `result-track:a33a0ab41621e9e8833d0951a8921ab5818bf0d5576d122942df11f3a498b309` |
| 8 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/comp-app--71142437f637832a259d6824.md) | 102 | `result-track:71142437f637832a259d6824421917ebe219062047f8be03146b859d5102f8cd` |
| 9 | `lemma` | [naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/naturality-apply--0dcf2c46923034eb4f7703ef.md) | 106 | `result-track:0dcf2c46923034eb4f7703efca5ea9c7b3dd04d58a3973014e5cee31c18c902e` |
| 10 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/isomk--7351d8ef2fd57a19d3a3829f.md) | 112 | `declaration-track:7351d8ef2fd57a19d3a3829fe31de1acc87d8276610be8e626a3404c696410c0` |
| 11 | `def` | [presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/presheaf--2b1ad5d0fa2329b632887e90.md) | 124 | `declaration-track:2b1ad5d0fa2329b632887e9023fde3c1e477aca2cda14e29ee4e7b4fd54b979a` |
| 12 | `lemma` | [presheaf_obj_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/presheaf-obj-coe--91fc8372fcbf97769954ae98.md) | 129 | `result-track:91fc8372fcbf97769954ae989ec1dd6205683ca40e9ebf36e6358b1ee3dd3d60` |
| 13 | `lemma` | [presheaf_map_apply_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/presheaf-map-apply-coe--d1a4ad207fd8d59cafe0e18f.md) | 133 | `result-track:d1a4ad207fd8d59cafe0e18fbb6b679e2eab710c41ba1e4f87298687a90c7dd2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--271d094a7891053226e07a88.md) | 136 | `declaration-track:271d094a7891053226e07a88ee539caedddf0ff3ae9b13792066320a0940e1bb` |
| 15 | `def` | [toPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/topresheaf--ba239b36ed47f635befba805.md) | 142 | `declaration-track:ba239b36ed47f635befba8050ac532152140c49ce80ab28e73acd919f3868f8e` |
| 16 | `lemma` | [toPresheaf_obj_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/topresheaf-obj-coe--ed1d936e4e960cdcf8e34850.md) | 149 | `result-track:ed1d936e4e960cdcf8e34850da1c7871ba6af25e73b480f52254e2cd90540165` |
| 17 | `lemma` | [toPresheaf_map_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/topresheaf-map-app-apply--e8fc7a8dcfcd94e50e6f43b6.md) | 153 | `result-track:e8fc7a8dcfcd94e50e6f43b67d157b93b4eb7a1b72d3f96233d6a07870f72ad4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--eb45687500517263cfc38f03.md) | 157 | `declaration-track:eb45687500517263cfc38f038991eb86fadebb3a5ed75182663fcba66f5dfe3e` |
| 19 | `def` | [ofPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/ofpresheaf--3e6afc3790c8ef1bba4981ff.md) | 173 | `declaration-track:3e6afc3790c8ef1bba4981ffa3a7c5ac959912144fb8bccdcaf41b8b307650be` |
| 20 | `lemma` | [ofPresheaf_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/ofpresheaf-presheaf--0fff0b8eaacf41c93f2b25fe.md) | 184 | `result-track:0fff0b8eaacf41c93f2b25fede507cb86a91d8c3f4b4cbc3e5fca02c14307678` |
| 21 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/hommk--d486e7ec97a017738310346a.md) | 192 | `declaration-track:d486e7ec97a017738310346a07cfdf6bf6cb45f1bbcb968bf893a31f77b389ec` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--7d7660359a34597ed3f133df.md) | 203 | `declaration-track:7d7660359a34597ed3f133dfef98a1adf43cc2a603f9dc9980232d8c7c4b1de3` |
| 23 | `lemma` | [zero_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/zero-app--47e0f266fe03f8b36c212b03.md) | 207 | `result-track:47e0f266fe03f8b36c212b03836dfc648fe085cb8f1ca49ee2b1432ef660d6e6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--008d7fe581c8bf045a9f2e32.md) | 209 | `declaration-track:008d7fe581c8bf045a9f2e32dab28d64315330d578c6c529615575f88e86943e` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--364b2f1baf2de73bca9e5f10.md) | 216 | `declaration-track:364b2f1baf2de73bca9e5f106dc6359bfc75a1fdc2782820ad04f0969b4bb78c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--29fd18a466bb509d668bb0b9.md) | 223 | `declaration-track:29fd18a466bb509d668bb0b956a95461f67f7e010e78a82fc6ca43c36f209d5f` |
| 27 | `lemma` | [neg_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/neg-app--9eaeac3a3943778eacee1201.md) | 230 | `result-track:9eaeac3a3943778eacee1201281f941f008a0def90e9b1a8d7e6103881b9dd71` |
| 28 | `lemma` | [add_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/add-app--ae9e996fdeaa9f34de1c02d7.md) | 231 | `result-track:ae9e996fdeaa9f34de1c02d7ee66bf80dc453e03de57fd748dc9d4fb5b101337` |
| 29 | `lemma` | [sub_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sub-app--7ae953eb8e3bfdbca2e2b6d7.md) | 232 | `result-track:7ae953eb8e3bfdbca2e2b6d773007287a72201a10622255b01199dc8207e7540` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--39c214cc7ff177f5c78ec090.md) | 234 | `declaration-track:39c214cc7ff177f5c78ec090e00e937a0b38c4ff5dc034d6c28546bfd3d63f28` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--254e5285435fa87f4dabefe1.md) | 244 | `declaration-track:254e5285435fa87f4dabefe18ac7f2c3fbcdec73a64904570298e2df9caa2a0f` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--0796acb5513aa68201a45ace.md) | 246 | `declaration-track:0796acb5513aa68201a45ace6fd2a97de467f19f3aa07a8d0e5deb884ed5e06a` |
| 33 | `lemma` | [zsmul_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/zsmul-app--f23e32fdba2292b499c21f0d.md) | 248 | `result-track:f23e32fdba2292b499c21f0d073d13e0ac4a40f8cb772391fb7f09e1762f2c39` |
| 34 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/evaluation--34ebc4fc0e01006d169d4d93.md) | 259 | `declaration-track:34ebc4fc0e01006d169d4d931eeecf4539971b62e5d5b8d211e7251fa3a963db` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/instance--5cc1f215090faf35b27fadc7.md) | 263 | `declaration-track:5cc1f215090faf35b27fadc7f5ac42bfece06be3e97e8de3bfedfbd5efb62ae8` |
| 36 | `def` | [restriction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/restriction--955d169727b34e63273a54c7.md) | 268 | `declaration-track:955d169727b34e63273a54c78a4817649461af03648feb544c6c4275443440b7` |
| 37 | `def` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/unit--043a6fe1e41361f44131251e.md) | 273 | `declaration-track:043a6fe1e41361f44131251e1dfdb703a0a0b5c929048c0db5423e3eaaddfe7b` |
| 38 | `lemma` | [unit_map_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/unit-map-one--ac61f19b97e9981afef978ed.md) | 283 | `result-track:ac61f19b97e9981afef978ed37a959c73286840a7c06805ec3abfe8e4a446669` |
| 39 | `def` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sections--c07e23ee1eb8474e08827af8.md) | 289 | `declaration-track:c07e23ee1eb8474e08827af857e1e4093501d7a38cbc82b57a55043e8e948b70` |
| 40 | `abbrev` | [sections.eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sections-eval--eef94ba8692c13397069b8de.md) | 293 | `declaration-track:eef94ba8692c13397069b8decb2c6c74820458e01afd052f3eeefafc55edd07f` |
| 41 | `lemma` | [sections_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sections-property--a971baad34affd661d98b72c.md) | 296 | `result-track:a971baad34affd661d98b72c81a55faf719961d715803ac9e82b7e2a3cfad65a` |
| 42 | `def` | [sectionsMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sectionsmk--a496fc791d47c200793c67a1.md) | 301 | `declaration-track:a496fc791d47c200793c67a16e5a9741f837f41eb5b4eebd134f10d6d03b6509` |
| 43 | `lemma` | [sections_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sections-ext--1262a785869a555e8f2fb281.md) | 307 | `result-track:1262a785869a555e8f2fb281e9fc25f7420140671edc5c293df1bf4f706e116e` |
| 44 | `def` | [sectionsMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sectionsmap--3049a412bb8dc3323bca8c51.md) | 313 | `declaration-track:3049a412bb8dc3323bca8c51d713978c3774e8df17f83250bda358761fd5c280` |
| 45 | `lemma` | [sectionsMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sectionsmap-comp--92b1fcf8eba21d20ccb3bac1.md) | 318 | `result-track:92b1fcf8eba21d20ccb3bac16639657f69b930b3d25e806d556f01587a6da68e` |
| 46 | `lemma` | [sectionsMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/sectionsmap-id--4c778ac43c099a0fd15924c1.md) | 322 | `result-track:4c778ac43c099a0fd15924c1dec436c182c1372f123b5cbc241dc85fc5cbf81a` |
| 47 | `def` | [unitHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/unithomequiv--cb89c112515597bc1ff9cde1.md) | 327 | `declaration-track:cb89c112515597bc1ff9cde1c141ae07807f282711afbdcea0a3ea1c87420244` |
| 48 | `abbrev` | [forgetToPresheafModuleCatObjObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatobjobj--bf49090804fbb5ebbdf17613.md) | 362 | `declaration-track:bf49090804fbb5ebbdf17613af433a2b7f8aa0111305888f75ff7d137f8580f4` |
| 49 | `lemma` | [forgetToPresheafModuleCatObjObj_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatobjobj-coe--988602a775ec278182683b61.md) | 367 | `result-track:988602a775ec278182683b618d0622d2491e6b00f1744db2cf7ac09b24dcb651` |
| 50 | `def` | [forgetToPresheafModuleCatObjMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatobjmap--2cea05f8f6c56ccd37aded7b.md) | 371 | `declaration-track:2cea05f8f6c56ccd37aded7b2cadaf99e2ffcbf39fb3eb79435231eb09970ebb` |
| 51 | `lemma` | [forgetToPresheafModuleCatObjMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatobjmap-apply--ce443e57880e0cb8ab00f01c.md) | 386 | `result-track:ce443e57880e0cb8ab00f01c83591fd343e338f1f86114200c4bfe0085917c38` |
| 52 | `def` | [forgetToPresheafModuleCatObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatobj--5106093091894607f216f2db.md) | 398 | `declaration-track:5106093091894607f216f2db2beed03dd91d93fa6b450986af227bd836e5261d` |
| 53 | `def` | [forgetToPresheafModuleCatMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecatmap--44184f42707acb23885afab5.md) | 414 | `declaration-track:44184f42707acb23885afab58056a6c0314c732d7c3590cfb217fd023128dcfb` |
| 54 | `def` | [forgetToPresheafModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variantf6973e1d05ae9ad5fec2f423a09cdf2ae12f7ec1d48e09a0cd2e780d45280a07.lean/declarations/forgettopresheafmodulecat--cbd1574026958d4cdbe02266.md) | 436 | `declaration-track:cbd1574026958d4cdbe02266fb1e43896da459373585edc19a49b384e3ef35db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
