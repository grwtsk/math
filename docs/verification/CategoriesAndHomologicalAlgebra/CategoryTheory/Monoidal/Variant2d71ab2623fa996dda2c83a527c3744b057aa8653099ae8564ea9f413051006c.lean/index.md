# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fba3ddbe37cb970f7cf45cca40cdb152a4722dc5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fba3ddbe37cb970f7cf45cca40cdb152a4722dc5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean.json)

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
| 1 | `instance` | [monoidalCategoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/monoidalcategorystruct--3252c573c5fdadf90b835758.md) | 33 | `declaration-track:3252c573c5fdadf90b835758e23aa021f55f44143fc0feaba8f4104090848e86` |
| 2 | `theorem` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/associator-hom-apply--ff1d01f237af26dcc6a841c8.md) | 44 | `result-track:ff1d01f237af26dcc6a841c8cd7dec7d40097f2dc682d00197bcffa84ccace82` |
| 3 | `theorem` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/associator-inv-apply--ae3fe89812d9e46315047815.md) | 48 | `result-track:ae3fe89812d9e4631504781537c830b6a41ddff9a590e5c15c532d80f63ee4fc` |
| 4 | `theorem` | [isoApp_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/isoapp-associator--6defec767da0e3e668dc2ae5.md) | 52 | `result-track:6defec767da0e3e668dc2ae5ebbe563be9473201ea8cabc4ba60a7705b33e80b` |
| 5 | `theorem` | [left_unitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/left-unitor-hom-apply--0ffa585ebc86fcd9411895c0.md) | 56 | `result-track:0ffa585ebc86fcd9411895c09bb612fd8d65ffa32e28f802df85c0a2ac1e147c` |
| 6 | `theorem` | [left_unitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/left-unitor-inv-apply--69a214a55c337a2195e8e2c5.md) | 60 | `result-track:69a214a55c337a2195e8e2c579c54637c04e37844fc78256b66564a3b51ebbf2` |
| 7 | `theorem` | [isoApp_left_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/isoapp-left-unitor--fcee58c9ffc0a9981fafdeba.md) | 64 | `result-track:fcee58c9ffc0a9981fafdeba6cc8c1486317acda4d3321957ab0ee8164eb5c4a` |
| 8 | `theorem` | [right_unitor_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/right-unitor-hom-apply--b9da3935df408b5d5cad48f3.md) | 68 | `result-track:b9da3935df408b5d5cad48f3f343947f97a82126dc12924f0704ce642d53d0de` |
| 9 | `theorem` | [right_unitor_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/right-unitor-inv-apply--8ac42ce65256498ba354b73a.md) | 72 | `result-track:8ac42ce65256498ba354b73ab9e5d5fc5fdd57749ddce0d5b7a6f288a15005f5` |
| 10 | `theorem` | [isoApp_right_unitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/isoapp-right-unitor--57f7e48508dd5ed42226c2ae.md) | 76 | `result-track:57f7e48508dd5ed42226c2ae7a4132a5425a8df197884bd9813daabbbed28e98` |
| 11 | `instance` | [monoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/monoidalcategory--1d69f16f2865c3e1a8de5f0b.md) | 81 | `declaration-track:1d69f16f2865c3e1a8de5f0b21fc6fb3a9ad8466d8f429c3dc3204e4314f3cb0` |
| 12 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/braidedcategory--55701a6c2eb5b36b99f216ef.md) | 94 | `declaration-track:55701a6c2eb5b36b99f216efedfd1b91e49cb7c0d9241a60da4297760cc5d199` |
| 13 | `theorem` | [braiding_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/braiding-hom-apply--f352c233c7b910164b27ad3d.md) | 100 | `result-track:f352c233c7b910164b27ad3d6023f3bd6d2bf92b63fa8febc25ef86637fc584d` |
| 14 | `theorem` | [braiding_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/braiding-inv-apply--decf1c90ff4ef2e5212f2b77.md) | 104 | `result-track:decf1c90ff4ef2e5212f2b7767359c07adf42f13492627c02e119b28ae98948e` |
| 15 | `theorem` | [isoApp_braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/isoapp-braiding--ff0c4ef01c3d2080988d276c.md) | 108 | `result-track:ff0c4ef01c3d2080988d276c4bac0f45f60689ba2836c6899dd56f5e557b23bd` |
| 16 | `instance` | [symmetricCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/symmetriccategory--7f60f9a7c71d3c186a104746.md) | 123 | `declaration-track:7f60f9a7c71d3c186a1047464008d038c7b5fb4470f79c91ff7957e12b1bb24a` |
| 17 | `def` | [ihom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/ihom--374cc62c2676f4128a5f395e.md) | 137 | `declaration-track:374cc62c2676f4128a5f395e286d3898755a907c91c870c96bad36cf8eaa5bb3` |
| 18 | `def` | [closedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/closedunit--64bdfd61ebe8d363fd86462d.md) | 144 | `declaration-track:64bdfd61ebe8d363fd86462d0a9c8fc5a56508cd146e5d06800b046b59faa43a` |
| 19 | `def` | [closedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/closedcounit--a2162054c6180071ba6167cb.md) | 150 | `declaration-track:a2162054c6180071ba6167cba01decde89863adfa4d7a2b567a99870b7d94f4d` |
| 20 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/monoidalclosed--a3811a8b3ed79b4b778f332f.md) | 157 | `declaration-track:a3811a8b3ed79b4b778f332f7ebd980bf1ddc2042c6d7d2766ff550fbd3ece31` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--5a5cbe9a32e8a7329cde529c.md) | 167 | `declaration-track:5a5cbe9a32e8a7329cde529ccbcf22873e611e8947c84f4180f6d77a960f7ae6` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--27e250c423b300523fcf5d71.md) | 174 | `declaration-track:27e250c423b300523fcf5d711ac13d6423f558224b4f84d024ae866bbcec522f` |
| 23 | `instance` | [laxMonoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/laxmonoidalpi--d0167898c5018710102e3d11.md) | 179 | `declaration-track:d0167898c5018710102e3d1166fbc821e23863a99c272d4280265630558ae19d` |
| 24 | `instance` | [opLaxMonoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/oplaxmonoidalpi--bc3173034c41495bb3d228ee.md) | 188 | `declaration-track:bc3173034c41495bb3d228eeb523e3ee60b6313e16d6919a59d3b8ff7815cd3f` |
| 25 | `instance` | [monoidalPi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/monoidalpi--ca2b489a23df8a38f895e368.md) | 199 | `declaration-track:ca2b489a23df8a38f895e368083d7dcd345831f75f0ff663d366782c839cc2d7` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--c09c7922230886e49c5ec076.md) | 203 | `declaration-track:c09c7922230886e49c5ec07628bac8a4994a6b17a20cdc6b34b112d2e2bdd64d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--571db749e06ff83346eec405.md) | 209 | `declaration-track:571db749e06ff83346eec4052e2f1a7e5a032033886053c443463a4448a56322` |
| 28 | `instance` | [laxMonoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/laxmonoidalpi--a5c05f16278ef51cf01dabe8.md) | 217 | `declaration-track:a5c05f16278ef51cf01dabe80a7a5dd52c8b0acfb0c944a05eaf9a358771bd39` |
| 29 | `instance` | [opLaxMonoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/oplaxmonoidalpi--28e547e3ea04a86bc87394c4.md) | 227 | `declaration-track:28e547e3ea04a86bc87394c49ec63d0fe147a9b7c2cd16ccb1ffbeba722d4cd5` |
| 30 | `instance` | [monoidalPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/monoidalpi--c97b646e69ba835152689e2c.md) | 238 | `declaration-track:c97b646e69ba835152689e2cc445ecb83a31f9de7b9f9017610034e102ecbc0a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--389f4aca1ab4527a89f5427d.md) | 243 | `declaration-track:389f4aca1ab4527a89f5427d2900066c663513476e8fd6b0ae7778775cd32497` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--fd317e2d4b324d7218f1bf19.md) | 250 | `declaration-track:fd317e2d4b324d7218f1bf19979d3e4541c7ff065af09b791fb0a165e7504c1a` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--36213089c9a3160c84bd4b5c.md) | 257 | `declaration-track:36213089c9a3160c84bd4b5c07e216aad52b79e3eca583f0b3dbc5c065c636c6` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2d71ab2623fa996dda2c83a527c3744b057aa8653099ae8564ea9f413051006c.lean/declarations/instance--63c559516c1fbf54d16ac7c5.md) | 266 | `declaration-track:63c559516c1fbf54d16ac7c5b2d5e2fb3577ebe40395ea9c22e8aca09f5146b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
