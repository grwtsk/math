# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95bf36525c56d82731fd31a6c64d4acc5d28b001",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95bf36525c56d82731fd31a6c64d4acc5d28b001`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Types.Coyoneda` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Center` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EnrichedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedcategory--2089a2cd997eed2c24f66b52.md) | 49 | `declaration-track:2089a2cd997eed2c24f66b525a55116c86cb194583989f49c71f83fa5c68d83f` |
| 2 | `def` | [eId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/eid--3143844741159d40b8268ab7.md) | 67 | `declaration-track:3143844741159d40b8268ab7ea6135c1b71e783d8f0841c62a9e72a38e66ab6b` |
| 3 | `def` | [eComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/ecomp--142fe87e4f505d989caf183b.md) | 72 | `declaration-track:142fe87e4f505d989caf183b8d437ec61525bb2694d8ea1ba5f70f69e69f5eb2` |
| 4 | `theorem` | [e_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/e-id-comp--bbe13a92636fcc92a57c6ccb.md) | 76 | `result-track:bbe13a92636fcc92a57c6ccb7244e2611fc5922e39401d7bef6fa25ef2bae068` |
| 5 | `theorem` | [e_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/e-comp-id--dc444ea3315f4f8881550ec0.md) | 81 | `result-track:dc444ea3315f4f8881550ec081d6d59c663e79fde039059a1ac78623085f0dc7` |
| 6 | `theorem` | [e_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/e-assoc--0e7b73bc50cb838982d68b0c.md) | 86 | `result-track:0e7b73bc50cb838982d68b0c51ede972a858ff2239776705c044b8cbb1437bcc` |
| 7 | `theorem` | [e_assoc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/e-assoc--8898274f83023d91c7ed7622.md) | 92 | `result-track:8898274f83023d91c7ed76225b1786f2d068f084f1025cad55b4af3346ae7351` |
| 8 | `def` | [TransportEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/transportenrichment--5b54585043cf185f16c6b7c6.md) | 106 | `declaration-track:5b54585043cf185f16c6b7c6342c80b2a43a0edfc185a0725275ecc023ac1b54` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/instance--8af4bc9025dc5dbba3311020.md) | 113 | `declaration-track:8af4bc9025dc5dbba3311020b90166ec0fcdd261ce1e2812605036392bc0127a` |
| 10 | `def` | [categoryOfEnrichedCategoryType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/categoryofenrichedcategorytype--576c6a3d3c5af4a4b46af25d.md) | 140 | `declaration-track:576c6a3d3c5af4a4b46af25dc7a86770d329810d88e38324c20090ed184433a7` |
| 11 | `def` | [enrichedCategoryTypeOfCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedcategorytypeofcategory--9a1cbb2e74aa1a6290288582.md) | 151 | `declaration-track:9a1cbb2e74aa1a6290288582fd24e24a42c3481c78eec26d767bde5fea0645e6` |
| 12 | `def` | [enrichedCategoryTypeEquivCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedcategorytypeequivcategory--13965246ca35a1ce19135480.md) | 162 | `declaration-track:13965246ca35a1ce191354805ba84d7f9312e9594857633e0d31187362c6e4da` |
| 13 | `def` | [ForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment--ad609d1f7c94f96ad78dfbca.md) | 191 | `declaration-track:ad609d1f7c94f96ad78dfbca44db76669774cf14c2e78e697032048b5d25bcec` |
| 14 | `def` | [ForgetEnrichment.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-of--6fb53f5651be48de55f69b67.md) | 198 | `declaration-track:6fb53f5651be48de55f69b674c1d650d4d10d614766a2d0a53fd43341267d3df` |
| 15 | `def` | [ForgetEnrichment.to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-to--48a2851abf8d39cdb43cfb45.md) | 202 | `declaration-track:48a2851abf8d39cdb43cfb4503a8417d300b0e321fdab8fcfd40c64ec8f3b308` |
| 16 | `theorem` | [ForgetEnrichment.to_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-to-of--61610f49a1595da432129c0f.md) | 206 | `result-track:61610f49a1595da432129c0f31b1141aee4a7763297ca6feaf635dcf8a670d83` |
| 17 | `theorem` | [ForgetEnrichment.of_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-of-to--a2864af5b96077c65eba0d80.md) | 210 | `result-track:a2864af5b96077c65eba0d8002e09eaa2b268dda159d47a6d885cc39da6f1ff1` |
| 18 | `instance` | [categoryForgetEnrichment](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/categoryforgetenrichment--dab5f96f1d9d8a5ea6bc9085.md) | 214 | `declaration-track:dab5f96f1d9d8a5ea6bc908532f1f5117032e02758b3462baa65e064f753611a` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/example--1ed84970c1c79d70d97fdec5.md) | 220 | `declaration-track:1ed84970c1c79d70d97fdec54e30325d2b0b1239aed5c8b12a37321d86d27f5a` |
| 20 | `def` | [ForgetEnrichment.homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-homof--d6b7fddec076bc4a56c5ca58.md) | 225 | `declaration-track:d6b7fddec076bc4a56c5ca58f752f5c2af804fb3f4e21bf2b32ec1b2d6f49e90` |
| 21 | `def` | [ForgetEnrichment.homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-homto--9d5103cf5edb86a5b4d08c64.md) | 230 | `declaration-track:9d5103cf5edb86a5b4d08c64a8c8d4d8344a502366c5b71306655cb061190541` |
| 22 | `theorem` | [ForgetEnrichment.homTo_homOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-homto-homof--c34640ac8f4858453dd420e2.md) | 235 | `result-track:c34640ac8f4858453dd420e2477c6f4f5ada9055719a4d17c396d5388f8ecc8c` |
| 23 | `theorem` | [ForgetEnrichment.homOf_homTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-homof-homto--8026ef9c1d0713d343c7eecb.md) | 240 | `result-track:8026ef9c1d0713d343c7eecb4c27fc7ebad62cf6d94cb9dada99809b2847dc00` |
| 24 | `theorem` | [forgetEnrichment_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-id--7c53812e6d853ffdaf8efbb9.md) | 246 | `result-track:7c53812e6d853ffdaf8efbb95c5249f5b7aa5a24cc5264236a1fef6d1e7bc3a3` |
| 25 | `theorem` | [forgetEnrichment_id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-id--ffb97f7e5bc3f03545aca02b.md) | 251 | `result-track:ffb97f7e5bc3f03545aca02befb19f3ca086de22c9e0f9489f6547eb2033a5b6` |
| 26 | `theorem` | [forgetEnrichment_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/forgetenrichment-comp--cfdfaea283fc402090752b9e.md) | 257 | `result-track:cfdfaea283fc402090752b9e2050d5f6645a71938c3e516656b336849570e8fb` |
| 27 | `structure` | [EnrichedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctor--89f2e9914963a42175ad27af.md) | 269 | `declaration-track:89f2e9914963a42175ad27af9923f07a4a30b068771ebc641f8d91529576c317` |
| 28 | `def` | [EnrichedFunctor.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctor-id--e509351d7da0c3688c2c0a4a.md) | 287 | `declaration-track:e509351d7da0c3688c2c0a4a43b90925d2a4bec902f4e1de08455390918b1186` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/instance--c348b1135f57415e9531ed4e.md) | 291 | `declaration-track:c348b1135f57415e9531ed4ee0ed5edfdd19ca6ed6405a7dbc4a1545ee6f2c16` |
| 30 | `def` | [EnrichedFunctor.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctor-comp--b39ce752ce6ecad6be46af95.md) | 296 | `declaration-track:b39ce752ce6ecad6be46af9517879daf6684b4bd393739b7a846e680b1f8a8f3` |
| 31 | `lemma` | [EnrichedFunctor.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctor-ext--e1c50ab992e3d0d99bbd137e.md) | 302 | `result-track:e1c50ab992e3d0d99bbd137e5d9a44cd96226fe3d0fd1aa2e773031601a65086` |
| 32 | `def` | [EnrichedFunctor.forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctor-forget--1203c8ce3ecb827cb51e499f.md) | 319 | `declaration-track:1203c8ce3ecb827cb51e499ff4170bfb3848453b20fefde3aa757ad8db6fe51d` |
| 33 | `structure` | [GradedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/gradednattrans--4baa2a4925df1c958d0431a6.md) | 389 | `declaration-track:4baa2a4925df1c958d0431a65a5c762c546a83a478b904fee9ad2976880cc66e` |
| 34 | `def` | [enrichedNatTransYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichednattransyoneda--8824b46761cd4acf0f56d805.md) | 406 | `declaration-track:8824b46761cd4acf0f56d80574c1ee5187f598c66d57dcd019adbd20958db92f` |
| 35 | `def` | [enrichedFunctorTypeEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichedfunctortypeequivfunctor--95d68292e1b1714eb2dfab84.md) | 429 | `declaration-track:95d68292e1b1714eb2dfab841bcdb310f14fe4cc72e89c6adbb87c289567967f` |
| 36 | `def` | [enrichedNatTransYonedaTypeIsoYonedaNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb68b6abc985db3389ff16e6d1d3930596588d19445bca931c2ce5c9c032379f2.lean/declarations/enrichednattransyonedatypeisoyonedanattrans--3361272617cd97eb35a502b9.md) | 448 | `declaration-track:3361272617cd97eb35a502b9c5b367317f0369cb88534b794b09366f8686d37e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
