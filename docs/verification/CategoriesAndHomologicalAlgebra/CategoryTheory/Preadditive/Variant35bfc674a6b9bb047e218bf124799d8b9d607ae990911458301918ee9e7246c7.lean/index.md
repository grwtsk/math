# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be455d772ab2d7a6b9c1328ace80df2e2953acc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be455d772ab2d7a6b9c1328ace80df2e2953acc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/monoidalpreadditive--f2b7dc1fc5e5ddfc2895e61f.md) | 31 | `declaration-track:f2b7dc1fc5e5ddfc2895e61f790c07ac7097329d0c1e94f8954e21d2346b52f6` |
| 2 | `theorem` | [tensor_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensor-zero--62fdcdc24fd215d523c6d4dc.md) | 47 | `result-track:62fdcdc24fd215d523c6d4dc0db6ec8739b1e8ffed55af554b0c6e756f9df09c` |
| 3 | `theorem` | [zero_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/zero-tensor--6310c963897ce1aa49481dbb.md) | 52 | `result-track:6310c963897ce1aa49481dbbf76c93d9f29fba05299e29a0184575109428b2f2` |
| 4 | `theorem` | [tensor_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensor-add--d14e80ebbda1463da050c601.md) | 55 | `result-track:d14e80ebbda1463da050c601158509894f37a57ba2d4a625825b13d0d3bf0d89` |
| 5 | `theorem` | [add_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/add-tensor--7bce03fcc55ce656e2e4663e.md) | 58 | `result-track:7bce03fcc55ce656e2e4663edd09ea4ef96d5c797b2d282616f076b9017e7e88` |
| 6 | `instance` | [tensorLeft_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensorleft-additive--6f812fac4c927e25b3dbaeab.md) | 63 | `declaration-track:6f812fac4c927e25b3dbaeabc77c3f6d57ea704c426a21aa4049816910db7067` |
| 7 | `instance` | [tensorRight_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensorright-additive--3c3c14a15e0d1e6c47b71bc9.md) | 65 | `declaration-track:3c3c14a15e0d1e6c47b71bc93dab0a4c360d64ec1d6e60378c3b2edeb9ad71de` |
| 8 | `instance` | [tensoringLeft_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensoringleft-additive--0693e7559f93f99e59437b64.md) | 67 | `declaration-track:0693e7559f93f99e59437b64c831233e548073e6934ed64defa0947026c12789` |
| 9 | `instance` | [tensoringRight_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensoringright-additive--8f76a000328c207ec99fe6a4.md) | 69 | `declaration-track:8f76a000328c207ec99fe6a444ad1667bc7ab47af3ecdac273aeae1c756347dd` |
| 10 | `theorem` | [monoidalPreadditive_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/monoidalpreadditive-of-faithful--f0f1ebaa5f73ca52fc08af53.md) | 73 | `result-track:f0f1ebaa5f73ca52fc08af534e3996396e26e477aaec4dbfd30205864de66c8a` |
| 11 | `theorem` | [whiskerLeft_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/whiskerleft-sum--3e2cfa5ffb4e968fdcadb28b.md) | 95 | `result-track:3e2cfa5ffb4e968fdcadb28be0157adb100381754f9fe5427435740790459cc6` |
| 12 | `theorem` | [sum_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/sum-whiskerright--8fffbb781f2352104ac500f5.md) | 99 | `result-track:8fffbb781f2352104ac500f5c78878a67fdbc8fbe8436d6e56398164cdcd64fa` |
| 13 | `theorem` | [tensor_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/tensor-sum--4853dffce7b0d3e56005e2cd.md) | 103 | `result-track:4853dffce7b0d3e56005e2cd37b51644d235791c612df16ab2b01e4df9444e60` |
| 14 | `theorem` | [sum_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/sum-tensor--2d01c778e88cae8b8dff48f9.md) | 107 | `result-track:2d01c778e88cae8b8dff48f91c7661b08fcf2fad4c1eb9c7e8d373e1a71989d9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/instance--2a6286cff2f0983dee160549.md) | 114 | `declaration-track:2a6286cff2f0983dee160549457b8da7f0a50cbf346928b01963d7a58b081389` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/instance--07a1facc9a7a4dc810a759ca.md) | 124 | `declaration-track:07a1facc9a7a4dc810a759ca4509434360fa0c1409aca271a97d9a742f94a9ec` |
| 17 | `def` | [leftDistributor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor--edc12f7465b9835b038e78a9.md) | 137 | `declaration-track:edc12f7465b9835b038e78a959f17cbf58576d06b298b6b740259b9846041f69` |
| 18 | `theorem` | [leftDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-hom--0faa121ae8c1a1750c01e32c.md) | 140 | `result-track:0faa121ae8c1a1750c01e32c2f3b5254c024b527f19aa34c3f8a699ca9612fcb` |
| 19 | `theorem` | [leftDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-inv--042b9569b6f8dd32d285f589.md) | 150 | `result-track:042b9569b6f8dd32d285f5890b87711ea5110dde3860b1abb5c292bc167d6a65` |
| 20 | `theorem` | [leftDistributor_hom_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-hom-comp-biproduct--0446b9c4f5c7483efdd4de10.md) | 160 | `result-track:0446b9c4f5c7483efdd4de10cf682b5f76a517c095429a711738812b9d66fb70` |
| 21 | `theorem` | [biproduct_ι_comp_leftDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/biproduct-comp-leftdistributor-hom--e0ecc589095fbc209269d590.md) | 167 | `result-track:e0ecc589095fbc209269d5904890d0980514c1e410f24fe5a7f57841382c0e4c` |
| 22 | `theorem` | [leftDistributor_inv_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-inv-comp-biproduct--3a5d9124afd1a99526be5911.md) | 175 | `result-track:3a5d9124afd1a99526be5911e000d3a5caad9e0f0e0ee6fec9be13115255c442` |
| 23 | `theorem` | [biproduct_ι_comp_leftDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/biproduct-comp-leftdistributor-inv--0efa55925fba050b58c75b9f.md) | 183 | `result-track:0efa55925fba050b58c75b9f90d8e18eab50924363c4ea17f0fa5c70b86289e1` |
| 24 | `theorem` | [leftDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-assoc--bd8f40074bb9fddbd9f2e2c7.md) | 189 | `result-track:bd8f40074bb9fddbd9f2e2c77debc617bdf414c8e67c3358496885949fa9e8d3` |
| 25 | `def` | [rightDistributor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor--e35fe41a9defd442f0dd1068.md) | 205 | `declaration-track:e35fe41a9defd442f0dd1068572446bb09daa804179eb1dcc355d8c56da94f0f` |
| 26 | `theorem` | [rightDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-hom--7f0590094401e91d3e749a0e.md) | 208 | `result-track:7f0590094401e91d3e749a0e785c2187a77ed4ebfeeb51814c3fa0c4293048a6` |
| 27 | `theorem` | [rightDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-inv--4b0f27174050267a6990458c.md) | 218 | `result-track:4b0f27174050267a6990458c3b1872a5f681e161c722528e97d713cf4425e997` |
| 28 | `theorem` | [rightDistributor_hom_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-hom-comp-biproduct--39db239595138baf05407289.md) | 227 | `result-track:39db239595138baf05407289bff662366659c30bbaf474f4ccb3976c41984c64` |
| 29 | `theorem` | [biproduct_ι_comp_rightDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/biproduct-comp-rightdistributor-hom--84677209352c610c3254d5f6.md) | 234 | `result-track:84677209352c610c3254d5f6040336acd3c9c9916cfa1e57524b0ee933d94c28` |
| 30 | `theorem` | [rightDistributor_inv_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-inv-comp-biproduct--e490f684d01a42581964416c.md) | 242 | `result-track:e490f684d01a42581964416cd549fa4c103c4c3b83233c36206af672199b3a7f` |
| 31 | `theorem` | [biproduct_ι_comp_rightDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/biproduct-comp-rightdistributor-inv--7b49590ccac6b0d75372fb6d.md) | 250 | `result-track:7b49590ccac6b0d75372fb6d9d66cb89ea9f30dcf39213425f2b28e4854dd904` |
| 32 | `theorem` | [rightDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-assoc--3cd7a4eaa2d16c29f29c471e.md) | 257 | `result-track:3cd7a4eaa2d16c29f29c471e581ce9149cb95f3b64412b841730eb0607d06ef6` |
| 33 | `theorem` | [leftDistributor_rightDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-rightdistributor-assoc--fc5b6ecb1111ae3d3252b94c.md) | 272 | `result-track:fc5b6ecb1111ae3d3252b94cbb696117071a6c76369eef8bc1c2502779b1cd24` |
| 34 | `theorem` | [leftDistributor_ext_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-ext-left--78f2c8ad9286175151899479.md) | 292 | `result-track:78f2c8ad9286175151899479fe1868673477839f72819742cdaffb37d5fb9bc6` |
| 35 | `theorem` | [leftDistributor_ext_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-ext-right--7985e7de057ba6a74ff0186f.md) | 304 | `result-track:7985e7de057ba6a74ff0186f7cc1381ff611aaa9bbfb7fc0ec1e390657c59a9d` |
| 36 | `theorem` | [leftDistributor_ext₂_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-ext-left--954982e6bedcce0d4047c160.md) | 319 | `result-track:954982e6bedcce0d4047c16072e24f3b13525903be8f55c7464ce579b76d0b82` |
| 37 | `theorem` | [leftDistributor_ext₂_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/leftdistributor-ext-right--ff5db6c032b4ccfe8e574d17.md) | 328 | `result-track:ff5db6c032b4ccfe8e574d17cad399d35e37ec96b60871f369eb8d650a4c6e97` |
| 38 | `theorem` | [rightDistributor_ext_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-ext-left--6cbcd81c10eaf661936e9185.md) | 337 | `result-track:6cbcd81c10eaf661936e9185b40e9b93e009f150e061bd1bfdb5a9be82ccbaa4` |
| 39 | `theorem` | [rightDistributor_ext_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-ext-right--f19abab0bc23da8f20cdcc53.md) | 350 | `result-track:f19abab0bc23da8f20cdcc5364d014671b969d09308592fa2e17c075be8dc526` |
| 40 | `theorem` | [rightDistributor_ext₂_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-ext-left--62206bea013b9c27813060f7.md) | 364 | `result-track:62206bea013b9c27813060f76adad23fcd91f8500942e70a6b45f86f71a05bcc` |
| 41 | `theorem` | [rightDistributor_ext₂_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean/declarations/rightdistributor-ext-right--781945313c7a951eb7732c21.md) | 373 | `result-track:781945313c7a951eb7732c219e4d603a43cbf2248a3ea97adca7e2735ebdcd6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
