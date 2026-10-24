# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentialImage.Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ffab6f9cf114426f85d1dfd79679c598eab56d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ffab6f9cf114426f85d1dfd79679c598eab56d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage--c2a8bda22bb71ad2292897e6.md) | 41 | `declaration-track:c2a8bda22bb71ad2292897e673c373aa134271a75958ad5c7b10db51b4e52b0a` |
| 2 | `def` | [essImage.witness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-witness--e1a38ca16b47a654d9c50c6c.md) | 44 | `declaration-track:e1a38ca16b47a654d9c50c6c3daab625be18f6f24c23ee12091a31c4635192d5` |
| 3 | `def` | [essImage.getIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-getiso--89a706ae649073314a1d51a1.md) | 48 | `declaration-track:89a706ae649073314a1d51a1f4e24646e1bb5585288a74545c0b1edfb85ee0da` |
| 4 | `theorem` | [essImage.ofIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-ofiso--506867d26693197a58ae9d25.md) | 52 | `result-track:506867d26693197a58ae9d255697b7cbaab5348775a250c1ba39134c4bc21756` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/instance--7aaa6f27356b27e6fd2290c8.md) | 55 | `declaration-track:7aaa6f27356b27e6fd2290c8b487e258edc36f832ee3cd881cf33284206de6ac` |
| 6 | `theorem` | [essImage.ofNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-ofnatiso--635539bb0f31687b6909a008.md) | 61 | `result-track:635539bb0f31687b6909a0086469667a515737537e9280463c2190625c442880` |
| 7 | `theorem` | [essImage_eq_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-eq-of-natiso--1ab3aa5f21c12b2d371b2f48.md) | 66 | `result-track:1ab3aa5f21c12b2d371b2f48870083370b1a5726b6906e22dbd027e596c7eed7` |
| 8 | `theorem` | [obj_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/obj-mem-essimage--9e515809b3dfafc7ee55fe19.md) | 70 | `result-track:9e515809b3dfafc7ee55fe19f0ddaf6c7f936d507307bd732465bfa753612485` |
| 9 | `abbrev` | [EssImageSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimagesubcategory--92915ed2f4c502e118a928a3.md) | 74 | `declaration-track:92915ed2f4c502e118a928a32896a21cfed9c135397b54361d60b62008300761` |
| 10 | `def` | [essImageInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimageinclusion--3dbb2c278a040f372b6cb3e4.md) | 78 | `declaration-track:3dbb2c278a040f372b6cb3e4abeb93a7d8d407747c44cf5433ec346951633c65` |
| 11 | `lemma` | [essImage_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-ext--834d533df957c7f8faa520da.md) | 81 | `result-track:834d533df957c7f8faa520da27ea0b30f2dbabc04d06a58528e0eb234c06803f` |
| 12 | `def` | [toEssImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/toessimage--a767fb71b80f4b59effd5abc.md) | 90 | `declaration-track:a767fb71b80f4b59effd5abc6e3f4bf9e58cd956ca76cc5fe92c010c6fe42da7` |
| 13 | `def` | [toEssImageCompι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/toessimagecomp--fb649be6bb7aeaa999d575f2.md) | 97 | `declaration-track:fb649be6bb7aeaa999d575f2d895ccd3ce719ae2a44373f1bd97182af17f27fe` |
| 14 | `class` | [EssSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj--29b59b8f7a1617820f6660fa.md) | 106 | `declaration-track:29b59b8f7a1617820f6660fa0de9993a8b6949aac0c7b792fffc522d17402b40` |
| 15 | `instance` | [EssSurj.toEssImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj-toessimage--daa63229db09e8ea5e1df186.md) | 110 | `declaration-track:daa63229db09e8ea5e1df1863a37965e8feef5481b53c8bfef4f184714bf53ee` |
| 16 | `theorem` | [essSurj_of_surj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj-of-surj--ff6b0fdcaeae0f5dbefdb175.md) | 114 | `result-track:ff6b0fdcaeae0f5dbefdb175274acc7b8d20581059d647af6322f179e43a051b` |
| 17 | `def` | [objPreimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/objpreimage--c9db8dd82edf3e920fbcb50c.md) | 126 | `declaration-track:c9db8dd82edf3e920fbcb50c8de94661b1eceab7e4042a14540295d08fc041ec` |
| 18 | `def` | [objObjPreimageIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/objobjpreimageiso--eaebb270029f10a20396b6d2.md) | 131 | `declaration-track:eaebb270029f10a20396b6d2f6846afaaa43528651233fb2c02f980a3b029c4b` |
| 19 | `instance` | [Faithful.toEssImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/faithful-toessimage--04c3bdc2dc8f8a9ff6b47d68.md) | 135 | `declaration-track:04c3bdc2dc8f8a9ff6b47d68a0900935ecce237a2c7db205d4a4e5f9083893f5` |
| 20 | `instance` | [Full.toEssImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/full-toessimage--e2d25fe032bc2c019967daee.md) | 140 | `declaration-track:e2d25fe032bc2c019967daee09f1c9f2474ede381b90e17ede4d42273437570a` |
| 21 | `instance` | [instEssSurjId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/instesssurjid--7766115631b0748e9b2d4a92.md) | 144 | `declaration-track:7766115631b0748e9b2d4a92790d1978c4945e45464806df2fafa7b36c24e850` |
| 22 | `lemma` | [essSurj_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj-of-iso--f91ba60272094b1dc5d90106.md) | 147 | `result-track:f91ba60272094b1dc5d90106054fd51e81680b7dc36138cd2ee949e0bb900000` |
| 23 | `instance` | [essSurj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj-comp--46db69c20ddc97c73cf0a146.md) | 150 | `declaration-track:46db69c20ddc97c73cf0a146d1d2ac55971d1f846710804d71b5f65e9841e199` |
| 24 | `lemma` | [essSurj_of_comp_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/esssurj-of-comp-fully-faithful--17b31e87960ae74687a1cd0b.md) | 154 | `result-track:17b31e87960ae74687a1cd0b9f565fa165f6d68a5bdf15d164e5cc7571cef8bf` |
| 25 | `lemma` | [essImage_comp_apply_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-comp-apply-of-esssurj--17a3ad254a2f062b4b5da8d9.md) | 161 | `result-track:17a3ad254a2f062b4b5da8d956d7b9b14b5b449522cf3a3979ba75e6b516a8e2` |
| 26 | `lemma` | [essImage_comp_of_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-comp-of-esssurj--bd9e74c8afdfe42ca9ec8a4b.md) | 167 | `result-track:bd9e74c8afdfe42ca9ec8a4b0523d9fa99ad72a661d2bb925e9d215ecbabae17` |
| 27 | `def` | [essImage.liftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-liftfunctor--352a324998af6e4a8821c1ab.md) | 177 | `declaration-track:352a324998af6e4a8821c1ab88bbc42b428bb52a8fc0832d87892bc398e3f37b` |
| 28 | `def` | [essImage.liftFunctorCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentialImage/Variant980263f1e2c1743dac7b7c2cee93c94111e92ed44f85d1065eb8870d215b471d.lean/declarations/essimage-liftfunctorcompiso--871729ab469346ef16462b5a.md) | 195 | `declaration-track:871729ab469346ef16462b5a10582d639016bffe665e98504674270c30778920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
