# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51bf8b05a4e919a0525acbbc8c81dd942d647ec6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51bf8b05a4e919a0525acbbc8c81dd942d647ec6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.UnivLE` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall--21e1e138401907e632132c3d.md) | 45 | `declaration-track:21e1e138401907e632132c3df4a3d39b61c8cf8089da97e57ddd6f89832f5f7f` |
| 2 | `theorem` | [EssentiallySmall.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-mk--0129211c75fdf6bfdd41628b.md) | 50 | `result-track:0129211c75fdf6bfdd41628b2125aba3d27a93d5397e9bb82ab99bed720cebf5` |
| 3 | `def` | [SmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/smallmodel--7dd994eba69a6f66a3284c9d.md) | 57 | `declaration-track:7dd994eba69a6f66a3284c9d69853f9f95cb04d981aaf7e9581a4fe5893a592d` |
| 4 | `instance` | [smallCategorySmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/smallcategorysmallmodel--48d881e7e06f4b9fbc1adc9a.md) | 60 | `declaration-track:48d881e7e06f4b9fbc1adc9a91a5d9b84140fc8e55506c970e94437396835c70` |
| 5 | `def` | [equivSmallModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/equivsmallmodel--866192f651346aa0c5b97c17.md) | 67 | `declaration-track:866192f651346aa0c5b97c17c88ae614f3c9e5875da99f5371769e4f7acd9381` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--19ccb37d86d3082013b1711b.md) | 72 | `declaration-track:19ccb37d86d3082013b1711bffea845c559f8cc239e3ed1c251b630b67482e4a` |
| 7 | `theorem` | [essentiallySmall_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-congr--c0ab3ea4970022309d5f3fc0.md) | 75 | `result-track:c0ab3ea4970022309d5f3fc0b366024b46779ffb40102aab1275932b42f7cd43` |
| 8 | `theorem` | [Discrete.essentiallySmallOfSmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/discrete-essentiallysmallofsmall--b837cf217379e958f17c702c.md) | 83 | `result-track:b837cf217379e958f17c702ce173158345f54a336c81e5ff5d7a8e4396d8f803` |
| 9 | `theorem` | [essentiallySmallSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmallself--878da4160b8b97aa2b846085.md) | 87 | `result-track:878da4160b8b97aa2b8460850e0d4f184116e4adfe98206e3de6f92a4ef95ca2` |
| 10 | `class` | [LocallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/locallysmall--65f6f9f3ce23ddc3675b57b8.md) | 95 | `declaration-track:65f6f9f3ce23ddc3675b57b8f2cce2748333cf47741894450f58460b0a9873ab` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--96b639e1ab38cfe29e490df7.md) | 99 | `declaration-track:96b639e1ab38cfe29e490df7623b51bb0773d1714baf6cf0282c981f2b0cbe64` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--a2683a4ad9c69cfcbed77445.md) | 102 | `declaration-track:a2683a4ad9c69cfcbed77445132304dbba2b8dec3a9fd2182a31777d9e06e586` |
| 13 | `theorem` | [locallySmall_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/locallysmall-of-faithful--8a46373bb21928041ceaf8a1.md) | 105 | `result-track:8a46373bb21928041ceaf8a1dffcf3b53f4495c79c3276302326b4de961d80e7` |
| 14 | `theorem` | [locallySmall_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/locallysmall-congr--bc65faf121aabb88f2609119.md) | 109 | `result-track:bc65faf121aabb88f2609119d0cebb38ade164a9e25c2e6bfe6fff6d7e71a78a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--75499350ee955f91b725914f.md) | 113 | `declaration-track:75499350ee955f91b725914ff2dc1d30158d1bf4b09c4e3b9df428f22697ac31` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--02f530ae4897c05e44451820.md) | 116 | `declaration-track:02f530ae4897c05e444518200fb36987cae61815d295275ffe395573db22608d` |
| 17 | `theorem` | [locallySmall_max](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/locallysmall-max--ed202c30eaab5caebb8d9464.md) | 119 | `result-track:ed202c30eaab5caebb8d94646cf4c5666fb15cbddd78780b09d2cb0e93c54125` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--e0007cbbd11513d4476ce5e4.md) | 122 | `declaration-track:e0007cbbd11513d4476ce5e4059855f6ea02a3b02e8f0468cd83a2f5078d95f4` |
| 19 | `def` | [ShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/shrinkhoms--4a5976b4ce6d8011157875b3.md) | 130 | `declaration-track:4a5976b4ce6d8011157875b3d039960269efc2c17addf0f3d8daac0cd7f6665d` |
| 20 | `def` | [toShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/toshrinkhoms--33a370cfbbba0ff35417ccbc.md) | 141 | `declaration-track:33a370cfbbba0ff35417ccbc12e5864797ac4a2024d6da502a347b8d7c6eceda` |
| 21 | `def` | [fromShrinkHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/fromshrinkhoms--a3a2cafbcdf2bb487dc20b08.md) | 145 | `declaration-track:a3a2cafbcdf2bb487dc20b08f69368bd8ece98d88b319c684779b2a1266dfa4a` |
| 22 | `theorem` | [to_from](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/to-from--c1b0028433ed52d2e2f8e90e.md) | 149 | `result-track:c1b0028433ed52d2e2f8e90e3bb69fbff2b9b96460b98ab2ceebd0843b7ad26e` |
| 23 | `theorem` | [from_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/from-to--c0ba81957931088066121864.md) | 153 | `result-track:c0ba8195793108806612186488414bee92089b9cc3f9bbfe1aa586a54a16930d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--e1f9e58dbc894dfba206d0e4.md) | 161 | `declaration-track:e1f9e58dbc894dfba206d0e481d879577f919a8c8f9a0afec580af4637b6f21a` |
| 25 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/functor--53fbb49bf3550d49bd8c79be.md) | 168 | `declaration-track:53fbb49bf3550d49bd8c79be467fbae39bd7b86c6524401734ec92ed88844db0` |
| 26 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/inverse--cf880a131c113274e8935505.md) | 174 | `declaration-track:cf880a131c113274e89355058fd3b8ac0884d7154a9ccdf06f6aaa7500daca32` |
| 27 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/equivalence--8ffebff02a4ef84aa5a2b7f0.md) | 181 | `declaration-track:8ffebff02a4ef84aa5a2b7f01e16db734bca6795266c6c52c3a4b4e43b280ae0` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--797146680ff5d39891f6a58b.md) | 187 | `declaration-track:797146680ff5d39891f6a58bacfda5cbb2dfa01e232039ceae52ce3d88b17cab` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--963aebba1212ca6509e31bb4.md) | 188 | `declaration-track:963aebba1212ca6509e31bb4c26861cd5b0b15b2c3a1afbd35d3435d1f922bb4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--f3e3f8e8f709796932a5720c.md) | 194 | `declaration-track:f3e3f8e8f709796932a5720c8129823be25e4ef774d2a6e2bc48ed892d659c24` |
| 31 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/equivalence--2eb7d2031693b2d3643caf85.md) | 198 | `declaration-track:2eb7d2031693b2d3643caf851fd0d96f7dffdeff0143a1e59ce244a0764c1710` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--60e5121ef38cd36c90f9a75b.md) | 201 | `declaration-track:60e5121ef38cd36c90f9a75b31a26d5f717d20265de848a2f918f94ce3257611` |
| 33 | `theorem` | [essentiallySmall_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-iff--8a977b16427b231c9e283455.md) | 211 | `result-track:8a977b16427b231c9e283455dacf29b006faa5539867b543f2a7a9dc6406bbea` |
| 34 | `theorem` | [essentiallySmall_of_small_of_locallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-of-small-of-locallysmall--25cbcfbde49a22bddaa1cc65.md) | 229 | `result-track:25cbcfbde49a22bddaa1cc653b950feb5f8f82f98f9832f4d739f025204932e5` |
| 35 | `instance` | [locallySmall_fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/locallysmall-fullsubcategory--012f8c4ebae3f8e577882152.md) | 235 | `declaration-track:012f8c4ebae3f8e577882152029f65a395c48ea57e8832ac760febf0c096ac4b` |
| 36 | `instance` | [essentiallySmall_fullSubcategory_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-fullsubcategory-mem--d53a2ef7913666d44f0e621b.md) | 239 | `declaration-track:d53a2ef7913666d44f0e621bcf5e74060e5a877bcae23a8add707555a8828447` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--ad5f7cca0dcc817e6e190183.md) | 249 | `declaration-track:ad5f7cca0dcc817e6e19018375af7b467e5de217dfa78d7a3daf1a1c8eaaccd9` |
| 38 | `theorem` | [essentiallySmall_iff_of_thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/essentiallysmall-iff-of-thin--c018228ad7575367c6c419a9.md) | 255 | `result-track:c018228ad7575367c6c419a9014a42d302e77f4add98d9f682561850b1d15dee` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant28b904f63faac2fc12e4b5422917c4ddaf2590daaa56e289d84e23c84332a58e.lean/declarations/instance--87c7828ae93cdca1f44e079b.md) | 259 | `declaration-track:87c7828ae93cdca1f44e079bd3df4fc77c5207558fffc5e53ab3a04d179c1a40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
