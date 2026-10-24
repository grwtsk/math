# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5a13dfaba4ca45e7e76c02b0228b3367b45dc6",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5a13dfaba4ca45e7e76c02b0228b3367b45dc6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SheafOfModules](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sheafofmodules--547831ae400a3106eae29e2e.md) | 37 | `declaration-track:547831ae400a3106eae29e2e0b2ebb4e6298036db70c61b0f4e7b321cae8709b` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/hom--2c96ddf42ffbeb56fe3aa5bd.md) | 49 | `declaration-track:2c96ddf42ffbeb56fe3aa5bd9d58386c56b20d9977f0212d92394e02b5eae2b2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--1f757c7325632d307aa04a1e.md) | 53 | `declaration-track:1f757c7325632d307aa04a1e4fa990bcadaa55ce1f6030e815eb23d58d0fd00a` |
| 4 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/hom-ext--185470b29f3fbd22cd23aee4.md) | 59 | `result-track:185470b29f3fbd22cd23aee4565397f88442db1d1760bba3bc31d4d9c1e9fcfa` |
| 5 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/id-val--18ee2bf3b5970b6d189b3d59.md) | 63 | `result-track:18ee2bf3b5970b6d189b3d59ac6a8d79584d7834fb6ad570abb30463de684ec7` |
| 6 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/comp-val--9da305ae58847ba2d5c91fec.md) | 66 | `result-track:9da305ae58847ba2d5c91fecaaa097b3e6900cd3bbe1f34ca8a51ff76494f979` |
| 7 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/forget--69bd50d9c81eb629f8a02e7f.md) | 72 | `declaration-track:69bd50d9c81eb629f8a02e7f3b42b5d0d0f0be98f5766866a6969516c3858ea9` |
| 8 | `def` | [fullyFaithfulForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/fullyfaithfulforget--716eb6e994d0505ad6787d6e.md) | 78 | `declaration-track:716eb6e994d0505ad6787d6ed7415792e9043e35fe679e8556d72b550ec29f8b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--526b70b945b121fc79e69f8f.md) | 81 | `declaration-track:526b70b945b121fc79e69f8fe8ef8f16aaa5ce44fbf37f06bfe1bdbd45cb2ab7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--1b5ef53d5e202ee7e3d0cde4.md) | 83 | `declaration-track:1b5ef53d5e202ee7e3d0cde41a831fa8a3f0d255267d22638eeb14f917853eda` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--33566b9f70d299ecc957c0de.md) | 85 | `declaration-track:33566b9f70d299ecc957c0defd002f857233804015e2ac85f39a231bc5c2bae3` |
| 12 | `def` | [evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/evaluation--e3fe036d647105c2788be490.md) | 89 | `declaration-track:e3fe036d647105c2788be490d95ffb0e09c64188cc3cf4974e6af0d613e6cb5a` |
| 13 | `def` | [toSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/tosheaf--df42287bc07a824f8eaa95d1.md) | 94 | `declaration-track:df42287bc07a824f8eaa95d1ebc0a43b331278ff5fa0da5c86cb5e7699cd6d3b` |
| 14 | `def` | [forgetToSheafModuleCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/forgettosheafmodulecat--b20c8c05ca3a72bed342bff6.md) | 103 | `declaration-track:b20c8c05ca3a72bed342bff6be39e52c28d8d9f197b4a352d2a7ce1ad60677bb` |
| 15 | `def` | [toSheafCompSheafToPresheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/tosheafcompsheaftopresheafiso--2887509a6534c96986a6b38f.md) | 114 | `declaration-track:2887509a6534c96986a6b38f1e92b6400cc6aca5995a7850f0324a29e6cce445` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--854fc8792bca0e3b5792a084.md) | 118 | `declaration-track:854fc8792bca0e3b5792a084dff565eb223b5740934341b808f7dee2dfc015ca` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--edcd55e0c43c6be3c3c2b61e.md) | 121 | `declaration-track:edcd55e0c43c6be3c3c2b61eb327791d8153266efd42834312cc1fa1e91f4060` |
| 18 | `lemma` | [add_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/add-val--1f12a2af7627f9b4767d4241.md) | 125 | `result-track:1f12a2af7627f9b4767d4241a7aa1c3c2fd576d0fd3e71eb659376dcf7874db6` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--4f072c69f4bada99ef4dc7d5.md) | 128 | `declaration-track:4f072c69f4bada99ef4dc7d5cc60fb6f8625bebbcae99f154d9b402b1b11d800` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--9cc8316af4adba6af9e7c64f.md) | 132 | `declaration-track:9cc8316af4adba6af9e7c64fbaa7785dfdbc84b6e856e7344817a7dba63ba170` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/instance--218eae67a17aa0c30581adf4.md) | 134 | `declaration-track:218eae67a17aa0c30581adf4e91c1b4af4fa507c0b066783e36a91606d48bc37` |
| 22 | `abbrev` | [sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sections--c444a10f9d02fe630ed2b3e7.md) | 139 | `declaration-track:c444a10f9d02fe630ed2b3e7f4c89cf53551dee72964ea16414a2e2e3a3af04f` |
| 23 | `abbrev` | [sectionsMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sectionsmap--4a1d697f91684b9110d32cbd.md) | 142 | `declaration-track:4a1d697f91684b9110d32cbdda1730f01193fc81343bca4db998721bf0fc02e3` |
| 24 | `lemma` | [sectionsMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sectionsmap-comp--aba28338265095a4d0f6db2e.md) | 146 | `result-track:aba28338265095a4d0f6db2e9c443913eec46a43e230b955d5111e7ef00dd2a7` |
| 25 | `lemma` | [sectionsMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sectionsmap-id--e04c01bfc981c701cf67545c.md) | 150 | `result-track:e04c01bfc981c701cf67545ce4fb0959b659cd5e896a0310947f493d95946f3f` |
| 26 | `def` | [sectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/sectionsfunctor--f3d173a5ad9d65f549915089.md) | 156 | `declaration-track:f3d173a5ad9d65f549915089c3d251bb5de4ec6acfa1a973350343e0a6bedec6` |
| 27 | `def` | [unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/unit--db166effd41343c8966c0b66.md) | 165 | `declaration-track:db166effd41343c8966c0b662da8909b684baa36d3489a695de141397ba8c68e` |
| 28 | `def` | [unitHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/unithomequiv--cab4f312dbcaca1387ea1af8.md) | 170 | `declaration-track:cab4f312dbcaca1387ea1af89f0e885f168a5490b5a48d31cc2b5601c4091b8a` |
| 29 | `lemma` | [unitHomEquiv_apply_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/unithomequiv-apply-coe--92f7820b6c4b39deff727b82.md) | 175 | `result-track:92f7820b6c4b39deff727b82d3f2ef531f2b8946bcd13a810d6ee5374a2b5970` |
| 30 | `lemma` | [unitHomEquiv_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/unithomequiv-comp-apply--ff2e83da5b15b7597a76d8b2.md) | 178 | `result-track:ff2e83da5b15b7597a76d8b2b6d087c3b5263dfc071f8e28c6907aabe34de5c5` |
| 31 | `lemma` | [unitHomEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/unithomequiv-symm-comp--afba90c473095243f6100bf6.md) | 182 | `result-track:afba90c473095243f6100bf6cdd9aee12375b3e4b9ba8ca3a9eb13141aba5410` |
| 32 | `abbrev` | [IsLocallySurjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/islocallysurjective--80a8d16cc507f744a31bfcb6.md) | 195 | `declaration-track:80a8d16cc507f744a31bfcb6b95557abd9f0193d7a72f65763987948a68a2309` |
| 33 | `abbrev` | [IsLocallyInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/islocallyinjective--c0d0d8182ce7f42deb66b833.md) | 200 | `declaration-track:c0d0d8182ce7f42deb66b83345d926e1354301751ad05d35866d437bd07623de` |
| 34 | `def` | [homEquivOfIsLocallyBijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant051080d1d39e193d0fe117c7de405c3d23b9a9395b014cc622e406a44ceaa3d1.lean/declarations/homequivofislocallybijective--124991ef96907fc410168ce9.md) | 212 | `declaration-track:124991ef96907fc410168ce9485981de5710d8e7bf9ef845935f4703c00c5f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
