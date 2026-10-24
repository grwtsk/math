# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1baced82b9be16a9d2fc8b503bca3d62dfc606f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1baced82b9be16a9d2fc8b503bca3d62dfc606f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean.json)

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
| 1 | `structure` | [Core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/core--ea6246d508f5255e940ab4de.md) | 39 | `declaration-track:ea6246d508f5255e940ab4de4a6ed05a86b2b16bc5d82bcb7d9eb2950a9c2bbb` |
| 2 | `structure` | [CoreHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corehom--c003ee347e3e786eae7f825e.md) | 48 | `declaration-track:c003ee347e3e786eae7f825e23bfe7266a2b546d07397f3b52ca12253bd10381` |
| 3 | `instance` | [coreCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corecategory--1cee509b975886e799b7997a.md) | 53 | `declaration-track:1cee509b975886e799b7997a1c4cfd924e019b24c397821961f716dbccf4a80e` |
| 4 | `lemma` | [coreCategory_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corecategory-comp-iso--a436e7122c36189d2a60a015.md) | 60 | `result-track:a436e7122c36189d2a60a015e7aebca6c6afd18c7206563638ce531d98c9b629` |
| 5 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/inclusion--b0b7c8f31f9e36a924d050c5.md) | 68 | `declaration-track:b0b7c8f31f9e36a924d050c54fc357237e81ac747a4a90f0549256253f632082` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/hom-ext--8f8c474c9d2a9aeec84fdd00.md) | 73 | `result-track:8f8c474c9d2a9aeec84fdd0041f1e2e01883811389bd461645ffe217ea7bd728` |
| 7 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/isomk--ecae54ef56acaef3777dfebf.md) | 80 | `declaration-track:ecae54ef56acaef3777dfebf19dbd089e06b6cc51212de2a13fe6e18679b12a2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/instance--8e872665e800f33ae518f223.md) | 85 | `declaration-track:8e872665e800f33ae518f2233acac9c05ff7469f524f78be15b0855e7233073a` |
| 9 | `def` | [functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocore--6e855f2409b131c6727004d5.md) | 93 | `declaration-track:6e855f2409b131c6727004d588b8c207912b7a8a693f71c2d9a5b55550044c75` |
| 10 | `def` | [forgetFunctorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/forgetfunctortocore--9210e610e1424c7b33ea9589.md) | 101 | `declaration-track:9210e610e1424c7b33ea9589aac0470a4c85dacf5c8f5f1d9684a902a0e9634d` |
| 11 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/core--b0025222afce05a4d3d2596d.md) | 114 | `declaration-track:b0025222afce05a4d3d2596dbaa04e56bfc89452a4919668d7d2a7a0808a1380` |
| 12 | `def` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/coreid--35ee562e81eb447d323d5097.md) | 119 | `declaration-track:35ee562e81eb447d323d5097739d524da1adaea9d2b414039839ed1db6db8216` |
| 13 | `def` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corecomp--33aa59ca79da23aaa0ce8717.md) | 123 | `declaration-track:33aa59ca79da23aaa0ce8717c4d630a11ff90acc42369f9473e01f5c73d13e2b` |
| 14 | `def` | [coreCompInclusionIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corecompinclusioniso--d322c448c3284c5c70f1ac01.md) | 139 | `declaration-track:d322c448c3284c5c70f1ac012b0df2ddbe723feeee6d98e56471821b9078a22c` |
| 15 | `lemma` | [core_comp_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/core-comp-inclusion--69285215d4c961f73359531a.md) | 143 | `result-track:69285215d4c961f73359531ab4f6cb5511d60f100df68024a6d1262415d6f6f2` |
| 16 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/core--7fae58d7ac19a91fbee6662f.md) | 156 | `declaration-track:7fae58d7ac19a91fbee6662f92ba8acaf93195dd119df53804182b34c216197b` |
| 17 | `lemma` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corecomp--1228bbcc68113d41b58b5610.md) | 161 | `result-track:1228bbcc68113d41b58b56100201b8c1ea475782596021f6a125eacbc4da07fa` |
| 18 | `lemma` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/coreid--175d8fb08f3c2504ecc8981e.md) | 164 | `result-track:175d8fb08f3c2504ecc8981e38ecaa718dcfee9f753f65c3239308b636ca7c87` |
| 19 | `lemma` | [coreWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corewhiskerleft--bc8ac5207c7745f489f97b76.md) | 167 | `result-track:bc8ac5207c7745f489f97b765ef65c895e4fd6f1fa97f140775c6428c556a830` |
| 20 | `lemma` | [coreWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corewhiskerright--2c897b00e4e743fa59ed06c0.md) | 173 | `result-track:2c897b00e4e743fa59ed06c0d628becc2cf823102dcb9ddba8df4ec218dcd8d3` |
| 21 | `lemma` | [coreLeftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/coreleftunitor--051fd06a380afac429483475.md) | 179 | `result-track:051fd06a380afac4294834750bb48414cdecc20d42be5f81df8dcbbfafa89a1e` |
| 22 | `lemma` | [coreRightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corerightunitor--e367bad307a06de237350e05.md) | 185 | `result-track:e367bad307a06de237350e05244347df6e32537955ac70f90fac973c780aba44` |
| 23 | `lemma` | [coreAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/coreassociator--51b1d13dd78853a189a40cbd.md) | 191 | `result-track:51b1d13dd78853a189a40cbd2c647df64e2011e699a2a1c69d104425d166f8ae` |
| 24 | `def` | [functorToCoreCompLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocorecompleftiso--7ccb65b95598120d9fa500c1.md) | 207 | `declaration-track:7ccb65b95598120d9fa500c1db90655b9cdc9097dc1ffe67e7f05464a1986b67` |
| 25 | `lemma` | [functorToCore_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocore-comp-left--70436d26ea13d21859f27bf1.md) | 211 | `result-track:70436d26ea13d21859f27bf191e67336455c065dda610dde168bcf444d47caf1` |
| 26 | `def` | [functorToCoreCompRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocorecomprightiso--24cb6f6b4e67d00909fb15dd.md) | 216 | `declaration-track:24cb6f6b4e67d00909fb15ddb045791bc497672642181c1c2bc4273a2edc4afb` |
| 27 | `lemma` | [functorToCore_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocore-comp-right--1242a13450d29f9034ed180b.md) | 220 | `result-track:1242a13450d29f9034ed180bd4617f57a73ca0f8269fa46360b01bd18414b025` |
| 28 | `def` | [inclusionCompFunctorToCoreIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/inclusioncompfunctortocoreiso--8aa54c676a39063e680d0c6c.md) | 226 | `declaration-track:8aa54c676a39063e680d0c6c40f2cc0a0b1a49787009d398fe0ff6f08cb05b6a` |
| 29 | `theorem` | [inclusion_comp_functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/inclusion-comp-functortocore--84b7f3dcc2a1be8b19105dd6.md) | 229 | `result-track:84b7f3dcc2a1be8b19105dd63e7b91ed9b6ba8a2f5c3a411aeb2404950028af9` |
| 30 | `def` | [functorToCoreInclusionIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocoreinclusioniso--8796cfd1e25f682915948c40.md) | 233 | `declaration-track:8796cfd1e25f682915948c40e71eaa5a82e71df034c235f9e2322513d120ccef` |
| 31 | `theorem` | [functorToCore_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/functortocore-inclusion--d4f6441b3b65515688ab6411.md) | 236 | `result-track:d4f6441b3b65515688ab641119e96ad74552d3def8518dbe0832d455b5a82c5f` |
| 32 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/core--353b890960f4339266f0c788.md) | 249 | `declaration-track:353b890960f4339266f0c788ee85dfcf4238ead010a2cb385175cd60395b62e9` |
| 33 | `def` | [coreFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/corefunctor--a425e7f4ef2fb30b65c00476.md) | 261 | `declaration-track:a425e7f4ef2fb30b65c00476f44e4024e9879c57cfeffa251ee9ce0de50fc9e8` |
| 34 | `def` | [ofEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant0764e3243f6b76eb24d9cdc9d599556321a421cf1cbc5fe8b8a38c636debdf02.lean/declarations/ofequivfunctor--a1e763b3d390fb47f1153cbf.md) | 270 | `declaration-track:a1e763b3d390fb47f1153cbf09104e426e6e121835d1068e3e52ed33319ed181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
