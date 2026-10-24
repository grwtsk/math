# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Presheaf.Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Presheaf.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Over` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictedYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/restrictedyoneda--6ccca5249f7b0177e12d5bbb.md) | 76 | `declaration-track:6ccca5249f7b0177e12d5bbb38d624dbe6248eda026a02523335ec92e680e0d7` |
| 2 | `def` | [restrictedYonedaHomEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/restrictedyonedahomequiv--76108a0423992ced9fc24fc1.md) | 80 | `declaration-track:76108a0423992ced9fc24fc1dcd58be21864c433d46bbf1f5f8d36440572bb56` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/example--a83ab28bca240e415d81fd6f.md) | 123 | `declaration-track:a83ab28bca240e415d81fd6fc7d6bd51cfb59da5883e6df1e4ba06aac340f936` |
| 4 | `def` | [restrictedYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/restrictedyonedahomequiv--a5541d92a8a7f659eeb40a87.md) | 132 | `declaration-track:a5541d92a8a7f659eeb40a874fa0375f3c6d41ed9614afbf452423362d3bc408` |
| 5 | `def` | [yonedaAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/yonedaadjunction--dcabcb2dacac9239e66e002c.md) | 140 | `declaration-track:dcabcb2dacac9239e66e002cbce8f817aa19659d4f460f33285a98e320032a31` |
| 6 | `lemma` | [preservesColimitsOfSize_of_isLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/preservescolimitsofsize-of-isleftkanextension--112481d7c42a1d5476c8c79f.md) | 168 | `result-track:112481d7c42a1d5476c8c79f95eda1bbdee8276b2ec483d289d9991e0ef2a0f1` |
| 7 | `lemma` | [isIso_of_isLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/isiso-of-isleftkanextension--eb486c62b01023b2907eed9b.md) | 172 | `result-track:eb486c62b01023b2907eed9b5c2d0a7500ad2a081467c64a0e1225a28e7b3509` |
| 8 | `instance` | [preservesColimitsOfSize_leftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/preservescolimitsofsize-leftkanextension--4248fea17a4ecd7ec1675fe4.md) | 178 | `declaration-track:4248fea17a4ecd7ec1675fe4bdfaba8dac5703c631709f669102db99b267abee` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--673138240b0a5ed3e6bcf2e0.md) | 182 | `declaration-track:673138240b0a5ed3e6bcf2e05028d9ae5a65696e2fe45d33e6d867903f09921a` |
| 10 | `def` | [isExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/isextensionalongyoneda--6b052420e80becf924cdf8ba.md) | 186 | `declaration-track:6b052420e80becf924cdf8ba22147505b9dd81c4cae7a3846f487c3aaac92bf8` |
| 11 | `def` | [functorToRepresentables](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/functortorepresentables--625e83917ae5590be95cddb4.md) | 197 | `declaration-track:625e83917ae5590be95cddb40c9c4ed005d3f9b42660e6cf71969ae16f2aab57` |
| 12 | `def` | [coconeOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/coconeofrepresentable--20001e1c6b6abbd6a2a89e47.md) | 207 | `declaration-track:20001e1c6b6abbd6a2a89e47d5572e7e96b71a3b306c2abdc46f613f0ae05d14` |
| 13 | `theorem` | [coconeOfRepresentable_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/coconeofrepresentable-naturality--6f4a2551b9f3cf56148317ee.md) | 219 | `result-track:6f4a2551b9f3cf56148317ee10d28ba12b4ff49b35a676428ed46e7904f84531` |
| 14 | `def` | [colimitOfRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/colimitofrepresentable--352ce45b95e21fb4d861c668.md) | 230 | `declaration-track:352ce45b95e21fb4d861c668a505bc2e66ae5e7c6f2ec918a5a5b1b65ea608f9` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/example--a28b7d928cd842e97a45a2d2.md) | 254 | `declaration-track:a28b7d928cd842e97a45a2d26c5031d991bd130f7ce44527d797a95a0aa017de` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--1e8dcf9e5681fe91c1382c03.md) | 264 | `declaration-track:1e8dcf9e5681fe91c1382c03a98049378d4f59903a2e2276c5aa72bc84afbb0a` |
| 17 | `lemma` | [isLeftKanExtension_along_yoneda_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/isleftkanextension-along-yoneda-iff--a372f35ebcbe3b589bdf33ef.md) | 267 | `result-track:a372f35ebcbe3b589bdf33efc2bc9353592b80504ccf95f0cf23225b4230346e` |
| 18 | `lemma` | [isLeftKanExtension_of_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/isleftkanextension-of-preservescolimits--4ec725421509c8125b36f47d.md) | 289 | `result-track:4ec725421509c8125b36f47d734cee94fb3d3a031043329d48b25f1264542bfd` |
| 19 | `def` | [uniqueExtensionAlongYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/uniqueextensionalongyoneda--c228b5209db6abd1ab4dcfe8.md) | 304 | `declaration-track:c228b5209db6abd1ab4dcfe8ae4c7e6dbf47d958bd3c745fa194a850e6c85326` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--7d2217895655dd0a83845e7f.md) | 309 | `declaration-track:7d2217895655dd0a83845e7f2ff2adac80f019b632850a5c23ad209b57470b12` |
| 21 | `lemma` | [isLeftAdjoint_of_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/isleftadjoint-of-preservescolimits--4d504fb99894666bb5beea9d.md) | 317 | `result-track:4d504fb99894666bb5beea9df6e64282d6c338ec052a8857aac7e9359886bb4a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--893ef701e0bf72ac01bdf219.md) | 331 | `declaration-track:893ef701e0bf72ac01bdf219928cc2a8aa06e53d928440974b9c95124095240c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--01fb08373c507c4ff90f1500.md) | 347 | `declaration-track:01fb08373c507c4ff90f15009f1361d27bd340bd16e5545a4d24508bb5cb32b7` |
| 24 | `def` | [compYonedaIsoYonedaCompLan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/compyonedaisoyonedacomplan--21f0911676ae3456866042bf.md) | 356 | `declaration-track:21f0911676ae3456866042bfa54bca7daff8ccf7d6a693d5e672dc8c10d4df6e` |
| 25 | `lemma` | [compYonedaIsoYonedaCompLan_inv_app_app_apply_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/compyonedaisoyonedacomplan-inv-app-app-apply-eq-id--fc4411ad5fbb479ca3fd0b02.md) | 372 | `result-track:fc4411ad5fbb479ca3fd0b02d5647d9fc7e601fdb802fcdf15d69235a98548c4` |
| 26 | `def` | [coconeApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/coconeapp--968f10f5add915dea467fadd.md) | 389 | `declaration-track:968f10f5add915dea467fadd992e2996dcefecd71e3bb836bd41466051d38112` |
| 27 | `lemma` | [coconeApp_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/coconeapp-naturality--3cc13cad25838c0efbd43fa1.md) | 394 | `result-track:3cc13cad25838c0efbd43fa1e9bfe99c8e0ab3f0686942d5485d850591a120ac` |
| 28 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/presheafhom--e48953c1be21fd82a74c3ba1.md) | 413 | `declaration-track:e48953c1be21fd82a74c3ba1e14fb30ac3bb26c8919e0f264f808304f5b4d86c` |
| 29 | `lemma` | [yonedaEquiv_ι_presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/yonedaequiv-presheafhom--c97ac647fa95eaf0fd379c89.md) | 417 | `result-track:c97ac647fa95eaf0fd379c89fb361bedb8a6e3bd97e724fb32e1834e3f832ae5` |
| 30 | `lemma` | [yonedaEquiv_presheafHom_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/yonedaequiv-presheafhom-yoneda-obj--3ed09078e720743529a54873.md) | 425 | `result-track:3ed09078e720743529a548736a2a1aee07f3de6a8480ae3aebe69eebc33b30fa` |
| 31 | `lemma` | [presheafHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/presheafhom-naturality--57eda7c807b89eecb3d0e347.md) | 431 | `result-track:57eda7c807b89eecb3d0e3478b99a6385278cba57c46c5f0cd51a36c11303cc3` |
| 32 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/nattrans--46e3d503fca72250f7fdd111.md) | 446 | `declaration-track:46e3d503fca72250f7fdd111d51c2537cfec35459544b841aaa84c89183b8e15` |
| 33 | `lemma` | [natTrans_app_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/nattrans-app-yoneda-obj--5cd8de689d89dfc862c6e9dd.md) | 455 | `result-track:5cd8de689d89dfc862c6e9dde28cf98bae5ed8372369afc2b77931e389ceefb4` |
| 34 | `def` | [extensionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/extensionhom--46c0cbd106805f96e3e7302d.md) | 473 | `declaration-track:46c0cbd106805f96e3e7302d36c1961d033e95ad0594a45d83f623d764622053` |
| 35 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/hom-ext--e52546a187656e390234120f.md) | 481 | `result-track:e52546a187656e390234120f3fd8a77d95d81c7ce49dc3eec7e8d22f3a696071` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--3e8560085f840d1b3d8fa49e.md) | 506 | `declaration-track:3e8560085f840d1b3d8fa49e00be9afd25a338525da7d6ca8e950042a9391f44` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/instance--f8d36a494a0ba7f7f25b9a33.md) | 514 | `declaration-track:f8d36a494a0ba7f7f25b9a3316870993bc63db6ab4cc6e4b6b11965ed91f79c6` |
| 38 | `def` | [tautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/tautologicalcocone--e5923c52e7d3ba86b67740a4.md) | 528 | `declaration-track:e5923c52e7d3ba86b67740a4b0ce835f8f4340aa6c03268580cf14b0060b9038` |
| 39 | `def` | [isColimitTautologicalCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/iscolimittautologicalcocone--ab57573b7c1e7ae75f58f009.md) | 536 | `declaration-track:ab57573b7c1e7ae75f58f009efb7422fd75bf42cfcc8aee0c2d037641da245f6` |
| 40 | `theorem` | [final_toCostructuredArrow_comp_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/declarations/final-tocostructuredarrow-comp-pre--2576b7a0e6371269e775d562.md) | 569 | `result-track:2576b7a0e6371269e775d562eeca570f792f7623b72d11730f70fae4b64eb036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
