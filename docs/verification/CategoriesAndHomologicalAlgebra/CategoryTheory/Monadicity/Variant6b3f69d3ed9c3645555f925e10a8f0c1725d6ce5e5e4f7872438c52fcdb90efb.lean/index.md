# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monadicity.Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0535b7b71c31e325854e07e2d481ce8932b40d54",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0535b7b71c31e325854e07e2d481ce8932b40d54`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [main_pair_reflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/main-pair-reflexive--4ba7bb9c39c844bf86da7119.md) | 78 | `declaration-track:4ba7bb9c39c844bf86da7119eb7d13c2c3233cfc6d7d044f202e5c53b2ff260f` |
| 2 | `instance` | [main_pair_G_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/main-pair-g-split--56ecc6b1ba94384243c129a0.md) | 91 | `declaration-track:56ecc6b1ba94384243c129a0aa5031660a670f0097fa7246f6118736b3ebf7d9` |
| 3 | `def` | [comparisonLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonleftadjointobj--c5a4ce1a8b8de498f5507215.md) | 99 | `declaration-track:c5a4ce1a8b8de498f55072154e2540be8e13f733ad0f55ec157d9b4dda3552e1` |
| 4 | `def` | [comparisonLeftAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonleftadjointhomequiv--2d8b83cb36a635b062d48e68.md) | 109 | `declaration-track:2d8b83cb36a635b062d48e68a578f9f9bfaba6d7772b627ddc10eb0aa27eb680` |
| 5 | `def` | [leftAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/leftadjointcomparison--a8f7b071bccda2201e777a4e.md) | 135 | `declaration-track:a8f7b071bccda2201e777a4ef835057e784c1e5c1494c1cb73f92c8e9259b786` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonadjunction--29adc1fc0b012434435258c3.md) | 155 | `declaration-track:29adc1fc0b012434435258c3b1266a7de58cc91528d97f586ee4f4f64bbf4f07` |
| 7 | `theorem` | [comparisonAdjunction_unit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonadjunction-unit-f-aux--758b8ed18488b9dae00d3d68.md) | 162 | `result-track:758b8ed18488b9dae00d3d68cf73ad2a40a954d2e008e5ea3d942586a8a60223` |
| 8 | `def` | [unitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/unitcofork--55a2070c0feaf5ba6b88c352.md) | 176 | `declaration-track:55a2070c0feaf5ba6b88c352214a486d9a9eb3bda32fbd74be6241d4f079c26d` |
| 9 | `theorem` | [unitCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/unitcofork--99f56018965831efcfebe50e.md) | 186 | `result-track:99f56018965831efcfebe50e0247cec464de633d6f3d4c7c9e0507c79c659b6c` |
| 10 | `theorem` | [comparisonAdjunction_unit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonadjunction-unit-f--7342daa8faf4557d29aecdb2.md) | 192 | `result-track:7342daa8faf4557d29aecdb2f77fcf824c3b7cc09aace034ecaaa55c6bfbe3c2` |
| 11 | `def` | [counitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/counitcofork--8de50521c77857c19dc812dc.md) | 209 | `declaration-track:8de50521c77857c19dc812dcf944b14aed67eaf86627b9a0614dc3fceefdce23` |
| 12 | `def` | [unitColimitOfPreservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/unitcolimitofpreservescoequalizer--dd45e75a45e9e86cce30e4cb.md) | 216 | `declaration-track:dd45e75a45e9e86cce30e4cb663793738577b9acc7561c958a76aa0f4772c11a` |
| 13 | `def` | [counitCoequalizerOfReflectsCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/counitcoequalizerofreflectscoequalizer--deaca38a67e236ed2a0b0a0a.md) | 224 | `declaration-track:deaca38a67e236ed2a0b0a0a38c3dfc09f3b84c61f4253bc5cc4532caed1a890` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--54f14e152b15e858c79c885b.md) | 232 | `declaration-track:54f14e152b15e858c79c885b1a42219afa012dcc620c481ae79ebcc0b082474c` |
| 15 | `theorem` | [comparisonAdjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/comparisonadjunction-counit-app--8f4ce015eafacb25d4383374.md) | 241 | `result-track:8f4ce015eafacb25d43833748c57b44fe259b71c743f3368f18e2f9cd72d16ea` |
| 16 | `def` | [createsGSplitCoequalizersOfMonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/createsgsplitcoequalizersofmonadic--4d796573422eea5687374af6.md) | 263 | `declaration-track:4d796573422eea5687374af65a2d51f601ccfa5d6f1a077a5d5121a21b912a72` |
| 17 | `class` | [HasCoequalizerOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/hascoequalizerofissplitpair--0818507e31d2718d4bdd7564.md) | 287 | `declaration-track:0818507e31d2718d4bdd756428f608064a05bc95391cdfa45b25353a0d695ac7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--41d9760596a28a2d6eed7d37.md) | 294 | `declaration-track:41d9760596a28a2d6eed7d3789ba61a756f938b764dc433d785a27c302ff6663` |
| 19 | `class` | [PreservesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/preservescolimitofissplitpair--e874181ba8a712b5e6a91398.md) | 301 | `declaration-track:e874181ba8a712b5e6a9139805d40477fbf1d1e112b0d109c042186942282631` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--9af924899e66b2c6c746505d.md) | 304 | `declaration-track:9af924899e66b2c6c746505d4409a218e607ef6f0b8df72e182fb15baf6d292e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--ee7ee55c6e736f96ab331d84.md) | 307 | `declaration-track:ee7ee55c6e736f96ab331d84905b396c85c115c03f54f8bf4c8bae6626351280` |
| 22 | `class` | [ReflectsColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/reflectscolimitofissplitpair--f2fe7aecc88ee7f0e40c5adc.md) | 314 | `declaration-track:f2fe7aecc88ee7f0e40c5adcf507d633c4f6c0f26c38938606dee23d249c9daf` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--6223429596f13ae26b4b3edc.md) | 317 | `declaration-track:6223429596f13ae26b4b3edc590a5c133392d26d4d1037e1cd2975379a9235be` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--87f9fc533ca34d35b22a81ef.md) | 320 | `declaration-track:87f9fc533ca34d35b22a81efe2ebdeab0d86dd039aed6b267f102202ecb622b0` |
| 25 | `def` | [monadicOfHasPreservesReflectsGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/monadicofhaspreservesreflectsgsplitcoequalizers--490d704f191694dff745967d.md) | 328 | `declaration-track:490d704f191694dff745967d0ebb74e4c756142e990346792c12e66b68cced37` |
| 26 | `class` | [CreatesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/createscolimitofissplitpair--2bc457f85718aa233214d36a.md) | 364 | `declaration-track:2bc457f85718aa233214d36a44d94040d3f58bd02641c39832fe950369c2158b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--3ec8341250c403088bd0ee16.md) | 367 | `declaration-track:3ec8341250c403088bd0ee164fe757255a4f48a71cfafc28a94703cf961e982c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--bf393ae0b2a1db3039deddd1.md) | 370 | `declaration-track:bf393ae0b2a1db3039deddd1fd8a906d3baa982c1ae6e568f0d933b77dfd48ac` |
| 29 | `def` | [monadicOfCreatesGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/monadicofcreatesgsplitcoequalizers--7374710f145d600e0ed925d9.md) | 380 | `declaration-track:7374710f145d600e0ed925d94b65d309bcdb12577ca535cb2a1a36e4800943a8` |
| 30 | `def` | [monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/monadicofhaspreservesgsplitcoequalizersofreflectsisomorphisms--6c72a7871ce9d5e310090167.md) | 401 | `declaration-track:6c72a7871ce9d5e3100901672bc855551e1c7c4a4a3b250310f4e4536c5bcfd9` |
| 31 | `class` | [PreservesColimitOfIsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/preservescolimitofisreflexivepair--bdb252beab3574281e8b1234.md) | 424 | `declaration-track:bdb252beab3574281e8b1234688d7e5ad9c781e7a2865872bb75a77bf4407a89` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--5bbe4d05a3bf501b5aefca99.md) | 427 | `declaration-track:5bbe4d05a3bf501b5aefca991ab952df27097cfe18a7e6b58639addb642135f4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/instance--f95b839bf64696a90d8e3d44.md) | 430 | `declaration-track:f95b839bf64696a90d8e3d44e3b91a14497c6080e36a7490cbc266f0afd6a269` |
| 34 | `def` | [monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/declarations/monadicofhaspreservesreflexivecoequalizersofreflectsisomorphisms--000f4c216f77e7e8b2543875.md) | 440 | `declaration-track:000f4c216f77e7e8b25438752a8b98f3e0132ad3365838d72d6d3fb916dd89ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
