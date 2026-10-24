# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monadicity.Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10ae4a40e74ca919a38e531eb54149c0556d11d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10ae4a40e74ca919a38e531eb54149c0556d11d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Coequalizer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Limits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [main_pair_reflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/main-pair-reflexive--cde9af301fbc41ccd13bb249.md) | 70 | `declaration-track:cde9af301fbc41ccd13bb24932dfe57bbcaec733d59adfec80a646a1193b4f11` |
| 2 | `instance` | [main_pair_G_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/main-pair-g-split--12d89a618c00f5a6c649ef94.md) | 83 | `declaration-track:12d89a618c00f5a6c649ef94bf25b7a5d96d17ca141dace9350d9e5436cd7683` |
| 3 | `def` | [comparisonLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonleftadjointobj--3f828199cbc80f6f10ced203.md) | 91 | `declaration-track:3f828199cbc80f6f10ced203d3d4a8e5a27f61a219961cc3c5c250ba342d115c` |
| 4 | `def` | [comparisonLeftAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonleftadjointhomequiv--92c1fcd640197d05ff231463.md) | 101 | `declaration-track:92c1fcd640197d05ff231463194db948687ab89315d3d5e31702e9e751531af1` |
| 5 | `def` | [leftAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/leftadjointcomparison--2f83cf9fb13c7b35f82ee0f9.md) | 127 | `declaration-track:2f83cf9fb13c7b35f82ee0f9dd66c12d35d90054de39edb50a5be83a68e650a2` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonadjunction--61442b29d1b3c867536406fe.md) | 147 | `declaration-track:61442b29d1b3c867536406fec3105a6986fa113fcf41d144b79376837e4fb866` |
| 7 | `theorem` | [comparisonAdjunction_unit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonadjunction-unit-f-aux--7408ad6012f4bd9df550f036.md) | 154 | `result-track:7408ad6012f4bd9df550f0365107db6b122f8b4913df12e5d0722dc4532672c6` |
| 8 | `def` | [unitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/unitcofork--8691b51eceb70e8033e2bdda.md) | 168 | `declaration-track:8691b51eceb70e8033e2bddab33e3e4e301b7f4f711724dd5d9f4fdc2cbad2a7` |
| 9 | `theorem` | [unitCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/unitcofork--1e645ca865e0a89e425b27e0.md) | 178 | `result-track:1e645ca865e0a89e425b27e0d39a7727b06cc04dc90f032fc25bf9941abc67ed` |
| 10 | `theorem` | [comparisonAdjunction_unit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonadjunction-unit-f--f97b6a3c094adb14b58330a0.md) | 184 | `result-track:f97b6a3c094adb14b58330a034d97f0a2cef0254bcbf82be4228d8d1d546dbcb` |
| 11 | `def` | [counitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/counitcofork--da00815bcbb796715c39b186.md) | 201 | `declaration-track:da00815bcbb796715c39b186020a71db7ebb32176f0ea790d6061681c93c25b7` |
| 12 | `def` | [unitColimitOfPreservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/unitcolimitofpreservescoequalizer--158e7c73ee4b060e2731d201.md) | 208 | `declaration-track:158e7c73ee4b060e2731d201218757328908a55f4a3c7a34bbababfe0282b11e` |
| 13 | `def` | [counitCoequalizerOfReflectsCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/counitcoequalizerofreflectscoequalizer--64336519830ad4d10d34646b.md) | 216 | `declaration-track:64336519830ad4d10d34646b921b31662ff8217a65c76dddb7cff37b26884318` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--82d76a9098c6654b170cbf88.md) | 224 | `declaration-track:82d76a9098c6654b170cbf8873c088af5510722da02f66800fd94ccba252b9fa` |
| 15 | `theorem` | [comparisonAdjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/comparisonadjunction-counit-app--71c4c7032a736b4403f8f367.md) | 233 | `result-track:71c4c7032a736b4403f8f367726b9fdc17ee9892029670324158c4a5482864f8` |
| 16 | `def` | [createsGSplitCoequalizersOfMonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/createsgsplitcoequalizersofmonadic--5b605dbf3978ae25e50f2f6d.md) | 255 | `declaration-track:5b605dbf3978ae25e50f2f6d0e382559621aba64db9c4fbb6b139b0fb150e79b` |
| 17 | `class` | [HasCoequalizerOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/hascoequalizerofissplitpair--894514a15b934ba118b63873.md) | 279 | `declaration-track:894514a15b934ba118b6387305b629e6b14f954d1fdb3983a8ba30a615733965` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--799ae9620ad9537f1595836f.md) | 286 | `declaration-track:799ae9620ad9537f1595836f515216b9c8e9c8c4dbdb624c7e8b290cf6bccefc` |
| 19 | `class` | [PreservesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/preservescolimitofissplitpair--22e994f6490ab18bc7836fc5.md) | 293 | `declaration-track:22e994f6490ab18bc7836fc58b0ed29673438816c7f7fb536d70cfb56a026aaa` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--3489665146411f85c755b2af.md) | 296 | `declaration-track:3489665146411f85c755b2affdc81b9778db19dfc88f6cd2835ce4c42ff809a7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--dbf395e0fa879fa900f80d7f.md) | 299 | `declaration-track:dbf395e0fa879fa900f80d7f7c7b62ccdf54199a02c78bd629cd450ed7e991c3` |
| 22 | `class` | [ReflectsColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/reflectscolimitofissplitpair--1b131c4d2a6c88ecf270f3b7.md) | 306 | `declaration-track:1b131c4d2a6c88ecf270f3b78de27a9e77692bb5fc1399b020a3cef4d72a9f71` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--edb86e117aaa7e3fc9614a8b.md) | 309 | `declaration-track:edb86e117aaa7e3fc9614a8b3f6669c1118b744ac1b8a3808a2738d024e0848e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--1979c5311df2b5e47d3cf941.md) | 312 | `declaration-track:1979c5311df2b5e47d3cf9416dc3f7fa427320b0a44e460f72e6430d98d06c85` |
| 25 | `def` | [monadicOfHasPreservesReflectsGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/monadicofhaspreservesreflectsgsplitcoequalizers--5cbe5fa13a00a80e97fd3d84.md) | 320 | `declaration-track:5cbe5fa13a00a80e97fd3d84399b7042a5daceadcc5e308ce9beaed9ceb52df8` |
| 26 | `class` | [CreatesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/createscolimitofissplitpair--af19001402eda91da3db39e4.md) | 356 | `declaration-track:af19001402eda91da3db39e4fc5c0010d809eed7879a8494533ef82ecf8800f9` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--6002aef493165f0429df47fa.md) | 359 | `declaration-track:6002aef493165f0429df47fada5e4d452e1192980d6b6243c5e063364bedcbdf` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--b6422546099448b387d1939f.md) | 362 | `declaration-track:b6422546099448b387d1939f696c71b01ad6f239c7461045a11e67fa28bbba96` |
| 29 | `def` | [monadicOfCreatesGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/monadicofcreatesgsplitcoequalizers--8ab5f9d8ab03bab41b61da57.md) | 372 | `declaration-track:8ab5f9d8ab03bab41b61da570a44be8a24dd01e8f9e6f3ea7a081d9be33012e7` |
| 30 | `def` | [monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/monadicofhaspreservesgsplitcoequalizersofreflectsisomorphisms--6167bf9816d3282b048598d7.md) | 393 | `declaration-track:6167bf9816d3282b048598d70b1b6486069d7923c8c29a4561192c633d966573` |
| 31 | `class` | [PreservesColimitOfIsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/preservescolimitofisreflexivepair--9283cb6eec86612e58d7522d.md) | 416 | `declaration-track:9283cb6eec86612e58d7522d1d11d36f343402b775130a73d0580b245ff45560` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--2353d0f674b0df13b7c8079c.md) | 419 | `declaration-track:2353d0f674b0df13b7c8079cf63567dfac7dbd38479fef56e0f82be084407b56` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/instance--5b6d6484bd8282d68bcd7859.md) | 422 | `declaration-track:5b6d6484bd8282d68bcd78591e144defc29cf65fa9a0b3e7269cabe5ac856692` |
| 34 | `def` | [monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant4bd1a8c4458ee8dbd1f0bcd9c1675acf770f596c2e5f023f8452b40ccdc0f458.lean/declarations/monadicofhaspreservesreflexivecoequalizersofreflectsisomorphisms--29c0431fdce7876e3757d739.md) | 432 | `declaration-track:29c0431fdce7876e3757d739b0277c2739a4d68c702ed7199e205a31ff946f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
