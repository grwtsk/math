# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monadicity.Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b8202fd1ad00c1feb5d11a2fb627d9536257f97",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b8202fd1ad00c1feb5d11a2fb627d9536257f97`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean.json)

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
| 1 | `instance` | [main_pair_reflexive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/main-pair-reflexive--f933ae94fad13be787e8465f.md) | 68 | `declaration-track:f933ae94fad13be787e8465f455b23078bb77e7039df5c4a9008c3079d257851` |
| 2 | `instance` | [main_pair_G_split](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/main-pair-g-split--0f642a838555c70bc802980b.md) | 80 | `declaration-track:0f642a838555c70bc802980bda9cce2e232f5eddeaa666987a2a03d3f6f7652c` |
| 3 | `def` | [comparisonLeftAdjointObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonleftadjointobj--47777a63b9895e7c24977b23.md) | 86 | `declaration-track:47777a63b9895e7c24977b231463217ca89f4b7c624cb257e775e29f2d69e983` |
| 4 | `def` | [comparisonLeftAdjointHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonleftadjointhomequiv--7c35910c9c23b8beb82b271e.md) | 95 | `declaration-track:7c35910c9c23b8beb82b271e55e4d8797231c3e593d193f294674e044be70cd5` |
| 5 | `def` | [leftAdjointComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/leftadjointcomparison--00d005ebc05f0a281932d7ff.md) | 120 | `declaration-track:00d005ebc05f0a281932d7ff5b994f9df4406457dbe404e0cdb9bf48bb3599ca` |
| 6 | `def` | [comparisonAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonadjunction--980d88529496298ad81c330e.md) | 139 | `declaration-track:980d88529496298ad81c330e463593a96e90c5ded7354105dc8b5791cc8cc496` |
| 7 | `theorem` | [comparisonAdjunction_unit_f_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonadjunction-unit-f-aux--54872d42d54bbf84432b0969.md) | 147 | `result-track:54872d42d54bbf84432b09694ba293226c91af07eb858df25d6e7160816b574c` |
| 8 | `def` | [unitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/unitcofork--728509b2dc5715139ee00563.md) | 160 | `declaration-track:728509b2dc5715139ee00563c418d356b92cd381bb29f4f4684cc246c00401ed` |
| 9 | `theorem` | [unitCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/unitcofork--b1f9715335985feca60f132a.md) | 167 | `result-track:b1f9715335985feca60f132aa73c6fb547a74324212f15f3fe1b2262c6203c8c` |
| 10 | `theorem` | [comparisonAdjunction_unit_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonadjunction-unit-f--ba4cd5d0217d05741b188237.md) | 172 | `result-track:ba4cd5d0217d05741b188237e368b062d2e74a79e3b0ce25bb7dad4680e69c7c` |
| 11 | `def` | [counitCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/counitcofork--a2775db28358b1a0c0765e22.md) | 190 | `declaration-track:a2775db28358b1a0c0765e22adf8411c93b570c6bd7793ee3dfc8ad3e7e04742` |
| 12 | `def` | [unitColimitOfPreservesCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/unitcolimitofpreservescoequalizer--4efb40164aabe85b085654e2.md) | 197 | `declaration-track:4efb40164aabe85b085654e22b81943d80e4392362a1bc0ca2e6ff6164eaa20f` |
| 13 | `def` | [counitCoequalizerOfReflectsCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/counitcoequalizerofreflectscoequalizer--5620f46500c55b6c6d92bfa0.md) | 204 | `declaration-track:5620f46500c55b6c6d92bfa0e30ce50258700d9095b9a28610df6aaa755791a9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--bd4e477f618a2df2bc97af7f.md) | 211 | `declaration-track:bd4e477f618a2df2bc97af7f73ce9d39c07b977c61733108bf9a384c12b45359` |
| 15 | `theorem` | [comparisonAdjunction_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/comparisonadjunction-counit-app--395f5275431464eadb62de2c.md) | 220 | `result-track:395f5275431464eadb62de2ce1b0ad1f32abfcda3fff7451b14941d0fdb739a9` |
| 16 | `def` | [createsGSplitCoequalizersOfMonadic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/createsgsplitcoequalizersofmonadic--9f3a825a535c81088b50d833.md) | 242 | `declaration-track:9f3a825a535c81088b50d83354ab0e35704bcc0423749c568c6c387387358e22` |
| 17 | `class` | [HasCoequalizerOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/hascoequalizerofissplitpair--7541037663614388d4712c75.md) | 257 | `declaration-track:7541037663614388d4712c75052cf4b7bd70fd940d76acad0665e678d669c0e4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--b4bdabe8d9bb09333865d6d9.md) | 264 | `declaration-track:b4bdabe8d9bb09333865d6d91209f7d6cff35a7d67ef1cc4fc270a0adfe24506` |
| 19 | `class` | [PreservesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/preservescolimitofissplitpair--d64ed15a66a9b6386909bc8d.md) | 273 | `declaration-track:d64ed15a66a9b6386909bc8d1b2b94e7ce6bcda090d0dbc28c09bc5b10deefa4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--fc25f7506a45eae8ab49fe74.md) | 276 | `declaration-track:fc25f7506a45eae8ab49fe74a32f14990f2a4bd19751399105781e30c8aa6859` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--cf0bee825927485456830d4c.md) | 279 | `declaration-track:cf0bee825927485456830d4cde01943775bd269de586d1518e9bf2a63f8846f7` |
| 22 | `class` | [ReflectsColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/reflectscolimitofissplitpair--62b3044e620273cf40f43d0c.md) | 288 | `declaration-track:62b3044e620273cf40f43d0cfdd16705bce5f23360c50d2d731389e8ea17096e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--f82c598d31c7e020bbcea919.md) | 291 | `declaration-track:f82c598d31c7e020bbcea919980d75f5b1b6284429a631cad6e6f72e37ba8412` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--d474da44852feca2b9c752f8.md) | 294 | `declaration-track:d474da44852feca2b9c752f88d46435f6d131f40abff6f3f11883855b77ec67d` |
| 25 | `def` | [monadicOfHasPreservesReflectsGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/monadicofhaspreservesreflectsgsplitcoequalizers--b2d2609c682aa2df547d203d.md) | 302 | `declaration-track:b2d2609c682aa2df547d203dfefd916fb30ef9df308988a7da463cd2da12c3ec` |
| 26 | `class` | [CreatesColimitOfIsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/createscolimitofissplitpair--23172b0fa766c06e0e95eb14.md) | 337 | `declaration-track:23172b0fa766c06e0e95eb144cb2bc78caa3b30b52c880e9f02f5fb536cec73b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--b43c898da45064ae6a4a17de.md) | 341 | `declaration-track:b43c898da45064ae6a4a17de2ace1a4185881130e3fc4c0644947cde263a9414` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--25e03836f38650ce448f0414.md) | 344 | `declaration-track:25e03836f38650ce448f0414f77bc47faa694d0f2083cf042c9c0c643929749c` |
| 29 | `def` | [monadicOfCreatesGSplitCoequalizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/monadicofcreatesgsplitcoequalizers--8888eee818febc33a82b2a2b.md) | 354 | `declaration-track:8888eee818febc33a82b2a2b252d068c56f602a7bf523b580d8b9c63983522e3` |
| 30 | `def` | [monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/monadicofhaspreservesgsplitcoequalizersofreflectsisomorphisms--8bb484da480fec7dd938239e.md) | 367 | `declaration-track:8bb484da480fec7dd938239e691c9e7aabef94628041744045d4c2d39fb371d6` |
| 31 | `class` | [PreservesColimitOfIsReflexivePair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/preservescolimitofisreflexivepair--b5bbe5fec141176e7004266c.md) | 385 | `declaration-track:b5bbe5fec141176e7004266c85b47d9823eebfa3506a7807c9d54620e45180f4` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--830ea14b6db9cabe0d707b65.md) | 388 | `declaration-track:830ea14b6db9cabe0d707b654278cd0656c37232455dc3b65e3363e0a44f2654` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/instance--e120e74ea805c094bd6289a9.md) | 391 | `declaration-track:e120e74ea805c094bd6289a99e52ad890611de5cc089ca505f6a972a9ac79fcd` |
| 34 | `def` | [monadicOfHasPreservesReflexiveCoequalizersOfReflectsIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/declarations/monadicofhaspreservesreflexivecoequalizersofreflectsisomorphisms--319af5f18ea905664adb1b4d.md) | 401 | `declaration-track:319af5f18ea905664adb1b4daebff07a74bb116887295a6325e3abbee93baf8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
