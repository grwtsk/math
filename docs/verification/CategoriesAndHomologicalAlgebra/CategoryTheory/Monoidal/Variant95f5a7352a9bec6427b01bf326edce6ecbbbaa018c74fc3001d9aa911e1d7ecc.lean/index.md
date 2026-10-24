# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e36d052bd1cbfad34578759e08c9990fde75d6a5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e36d052bd1cbfad34578759e08c9990fde75d6a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean.json)

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
| 1 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/monoidalcategorystruct--00624d3b14d3adf2005d2bab.md) | 41 | `declaration-track:00624d3b14d3adf2005d2bab3e0e443dfeec5ece2aec6c5ffc4ae69ce8783b71` |
| 2 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/associator-hom-apply--cdc4ba33270cf92bac22d2c9.md) | 52 | `result-track:cdc4ba33270cf92bac22d2c9baaf954df403f9bb46d3060edcb7c015c4c1d5d4` |
| 3 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/associator-inv-apply--946e7129641bca8e089974bb.md) | 56 | `result-track:946e7129641bca8e089974bbb541681f00049ed8f11fac5eb5f0461dfc1c198d` |
| 4 | `theorem` | [isoApp_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/isoapp-associator--df5120861902a3829ad2d4d5.md) | 60 | `result-track:df5120861902a3829ad2d4d59e992d05fe44bbaa500628ec468ca3d8d9baa5a2` |
| 5 | `theorem` | [left_unitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/left-unitor-hom-apply--c4d94f6be8267d7bcd9044fa.md) | 64 | `result-track:c4d94f6be8267d7bcd9044faa8a414df2763a4a86d57ab26215cd7cf3132141c` |
| 6 | `theorem` | [left_unitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/left-unitor-inv-apply--96a9ce6caf23128977eacab1.md) | 68 | `result-track:96a9ce6caf23128977eacab12d1c26369fe7230bb59a3c13d7a090ecd2d6e81d` |
| 7 | `theorem` | [isoApp_left_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/isoapp-left-unitor--a4a55bce9b293637b21e3804.md) | 72 | `result-track:a4a55bce9b293637b21e3804d4416c2f5fad8e59feb603ea6355046cc19f6d1a` |
| 8 | `theorem` | [right_unitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/right-unitor-hom-apply--f62693333f514bd0c287f007.md) | 76 | `result-track:f62693333f514bd0c287f00755e81f4c00f610facdb84deb6a64706995d31e92` |
| 9 | `theorem` | [right_unitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/right-unitor-inv-apply--fd4f8bc39d5aaaa237ff6f8b.md) | 80 | `result-track:fd4f8bc39d5aaaa237ff6f8b414ada47cd5891d93300755cd28f5cae3bdd2855` |
| 10 | `theorem` | [isoApp_right_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/isoapp-right-unitor--0e9ff7a88646a6e285bd921f.md) | 84 | `result-track:0e9ff7a88646a6e285bd921f7f4af8b92730ff76a0574b4255a2f956972e1287` |
| 11 | `instance` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/monoidalcategory--402f4debbfe5c64c0a0aa953.md) | 89 | `declaration-track:402f4debbfe5c64c0a0aa953242eda90ef6db1c79c1d2d872d0fe97745472534` |
| 12 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/braidedcategory--1276f0416511a7d53eac233e.md) | 102 | `declaration-track:1276f0416511a7d53eac233e963b75515a961c6defb49e0aa8b6017ea5e89032` |
| 13 | `theorem` | [braiding_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/braiding-hom-apply--5c9c3ac609bd01dca8c302e3.md) | 108 | `result-track:5c9c3ac609bd01dca8c302e33637e5f6078cf0668b4524a5eccc68da4432a1bf` |
| 14 | `theorem` | [braiding_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/braiding-inv-apply--029c31e302c2dd1cbf32d97a.md) | 112 | `result-track:029c31e302c2dd1cbf32d97a327706cc731c269d2b9373a5b007f61dc1ff8172` |
| 15 | `theorem` | [isoApp_braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/isoapp-braiding--7ad048bf31fc51e1f3f65745.md) | 116 | `result-track:7ad048bf31fc51e1f3f6574597ac6f71a34bf742dea48e33293fd9a55d1a07c6` |
| 16 | `instance` | [symmetricCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/symmetriccategory--ddc820593dd616f363aff63a.md) | 131 | `declaration-track:ddc820593dd616f363aff63aae9740b848405ad10550de93a65c159a6d71c9c2` |
| 17 | `def` | [ihom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/ihom--bf68351d43e6202f4211b5f7.md) | 145 | `declaration-track:bf68351d43e6202f4211b5f7db94a4ac320e1aba5cba0dbcc9ddbfde03edac8e` |
| 18 | `def` | [closedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/closedunit--83eb1b25ce48b53681f04a1e.md) | 152 | `declaration-track:83eb1b25ce48b53681f04a1e103e7adc369cbc6aa23287f3d239e8f458a5f0a2` |
| 19 | `def` | [closedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/closedcounit--1f56a8bf47d4375c74fbbb15.md) | 158 | `declaration-track:1f56a8bf47d4375c74fbbb15e26b7c1ec8ad1a646c4e491aa56903b05caf8d06` |
| 20 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/monoidalclosed--91e7ae0fab678a76f5f63f75.md) | 165 | `declaration-track:91e7ae0fab678a76f5f63f75b82cef5022660f6fa418148b200505f6b5c6c576` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--2d9fa5f9c23332811b0dccf9.md) | 175 | `declaration-track:2d9fa5f9c23332811b0dccf907819bde2e77452e5029ff25746336b6fe17618b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--702e370b490c3f6387e52294.md) | 182 | `declaration-track:702e370b490c3f6387e522944fa653d85bd072a666d143599b2d0846cf2dc7dd` |
| 23 | `instance` | [laxMonoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/laxmonoidalpi--808a31de5fce91cf87f984a8.md) | 187 | `declaration-track:808a31de5fce91cf87f984a82b8b44e30df63cbf23c7b82f34019b96eeee2fe4` |
| 24 | `instance` | [opLaxMonoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/oplaxmonoidalpi--591d8a7953930a1b95a9fb1a.md) | 196 | `declaration-track:591d8a7953930a1b95a9fb1af3162c848f8d8673227268c9d91cd7ca964a613c` |
| 25 | `instance` | [monoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/monoidalpi--f5e7c5e7cb65b243657ce5ed.md) | 207 | `declaration-track:f5e7c5e7cb65b243657ce5ed6961c8d73a21daec6465d9e5d938ca4b5ffb2c76` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--f98da50bf93944f3ea807fa6.md) | 211 | `declaration-track:f98da50bf93944f3ea807fa62973177aa6f31341990c48db6d09fc84a78408de` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--1c6a063785e8477b6b7f17d2.md) | 217 | `declaration-track:1c6a063785e8477b6b7f17d29148216057c589064a69a4d949f9f58f17c1c9e3` |
| 28 | `instance` | [laxMonoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/laxmonoidalpi--c1fb8cd239b9f7e658f970dc.md) | 225 | `declaration-track:c1fb8cd239b9f7e658f970dc09d1f2ca51a2f6410be38680187796c7231943d3` |
| 29 | `instance` | [opLaxMonoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/oplaxmonoidalpi--be8cd5b74cfe0096042771a8.md) | 235 | `declaration-track:be8cd5b74cfe0096042771a8e8f61c7f03c639e88e6e9cddfc6f072cd987e4d4` |
| 30 | `instance` | [monoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/monoidalpi--eec0a81e88219de6a7ea1222.md) | 246 | `declaration-track:eec0a81e88219de6a7ea12220de259ad60badc7e4f9452f49b1e5a4ea754c242` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--0248f440ceb36866f30dd0b0.md) | 251 | `declaration-track:0248f440ceb36866f30dd0b04ef5bbfd6ba2b46f87935cb12e3c91c11ab9ae8e` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--5a15322fa1d6b47e43b9514c.md) | 258 | `declaration-track:5a15322fa1d6b47e43b9514cf6298636ee0919bdd7b479fd4286912ec96b7415` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--179ec5c4f1e61e56997f849a.md) | 265 | `declaration-track:179ec5c4f1e61e56997f849a57e96709d36ef17d9e51f6489b1c2a8bd0139083` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/declarations/instance--4009913060c8485c67b26f27.md) | 274 | `declaration-track:4009913060c8485c67b26f27958ddedfb08a3a16c5bb6f71ca72b0828dff9058` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
