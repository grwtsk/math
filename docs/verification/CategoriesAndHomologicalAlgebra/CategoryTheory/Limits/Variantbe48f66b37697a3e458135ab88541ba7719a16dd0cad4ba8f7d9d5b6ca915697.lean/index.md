# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2275a8f6c561dbb658f3bcc1897ca0e29e539359",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2275a8f6c561dbb658f3bcc1897ca0e29e539359`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Small.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monoidObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/monoidobj--be20abc91b134ee2c9a022a1.md) | 41 | `declaration-track:be20abc91b134ee2c9a022a1a277bf8b51a5e382500d06a80fe5d7df4d2f4ccb` |
| 2 | `def` | [sectionsSubmonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/sectionssubmonoid--0578d515355e62a4eec91c0e.md) | 48 | `declaration-track:0578d515355e62a4eec91c0e6eb1c1f2c4353e135961a68bacb0679f360a0d40` |
| 3 | `instance` | [sectionsMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/sectionsmonoid--65916929fe8ea0ec590010cb.md) | 57 | `declaration-track:65916929fe8ea0ec590010cb36b25863c7110faaf05d069d3e3e8f907209871b` |
| 4 | `instance` | [limitMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitmonoid--303a885d8324050e8df6a30f.md) | 63 | `declaration-track:303a885d8324050e8df6a30f55ba07ba13b17169e8c320755452d69bc1315137` |
| 5 | `def` | [limitπMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limit-monoidhom--f648923c26f99a15b53356d1.md) | 69 | `declaration-track:f648923c26f99a15b53356d165804df9ec826b6013be6f0511f4b6aa63e317f4` |
| 6 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitcone--0380660774a0375debd6dcce.md) | 89 | `declaration-track:0380660774a0375debd6dcce80376079d8ed046ed011537f3071446f90b22bb9` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitconeislimit--2a89a0e803331fd4e9ce408f.md) | 100 | `declaration-track:2a89a0e803331fd4e9ce408f87d4869bb895572046aad748e10c0a9ac5af236b` |
| 8 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimit--e0bd833375be938d1c06ed54.md) | 112 | `declaration-track:e0bd833375be938d1c06ed5482dd4ba35fe330bc6210ecb6d95816671569ff40` |
| 9 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimitsofshape--4bb19626e47528ecdf4db425.md) | 120 | `declaration-track:4bb19626e47528ecdf4db425a4d4b092c1fe22cda88137061fc7b39ede5893a3` |
| 10 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimitsofsize--487e76637189e47d197846e5.md) | 130 | `declaration-track:487e76637189e47d197846e5a85e940908d2255539430d60b910e9a86fafb003` |
| 11 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimits--888ee4895a69e16c4afd050c.md) | 134 | `declaration-track:888ee4895a69e16c4afd050c3ada28d18f053557188f8c5ebbe7dac9bd1510d6` |
| 12 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimitsofshape--9550403dfdd9439f17c8f73c.md) | 140 | `declaration-track:9550403dfdd9439f17c8f73cc30efed074be8bffedef74f56970b008b497d67f` |
| 13 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimitsofsize--8bdd5a512bc18b45e1956221.md) | 152 | `declaration-track:8bdd5a512bc18b45e1956221a5dee2386a219d9c75272e2dfbffa67f4411f1d5` |
| 14 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimits--23f94460c95c3eaf051fc6e1.md) | 157 | `declaration-track:23f94460c95c3eaf051fc6e14db2c95b4466f5a086f7dc29260fba7134c9f899` |
| 15 | `instance` | [forget_createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimit--02cc7a6a77523b400a371d36.md) | 161 | `declaration-track:02cc7a6a77523b400a371d36565d743e67dd98c066b4443fe4074379610944f4` |
| 16 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimitsofshape--eb7a25d03da54feec0938fd0.md) | 189 | `declaration-track:eb7a25d03da54feec0938fd0010304afb2e0a20fd4ac76200188d7f45a0e508e` |
| 17 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimitsofsize--e5a95366d9212474b25f7c18.md) | 195 | `declaration-track:e5a95366d9212474b25f7c18b17727283273a3c14fe584c717acada9268aa736` |
| 18 | `instance` | [forget_createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimits--f7ca589893c29aa459e2235d.md) | 200 | `declaration-track:f7ca589893c29aa459e2235d492312f93ac00efec8f2cfe1e1bd3b258a316f51` |
| 19 | `instance` | [commMonoidObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/commmonoidobj--19ea54bfe23c56673cce9209.md) | 212 | `declaration-track:19ea54bfe23c56673cce9209fb890830c8353ee772ec7bd2ebe317a9743cf2e3` |
| 20 | `instance` | [limitCommMonoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitcommmonoid--330cd1df150884d702fba67d.md) | 218 | `declaration-track:330cd1df150884d702fba67da53306fb43e9c3f2c32e6d3795d0d36cc8131dc2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/instance--6e7e3adfed0db72ef3a8ef3e.md) | 226 | `declaration-track:6e7e3adfed0db72ef3a8ef3e6f5ab3c652c3a4d9fc946aee3e6fa93dd7ec4ab3` |
| 22 | `instance` | [forget₂CreatesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimit--a46add4025a3bcf1853d5e86.md) | 236 | `declaration-track:a46add4025a3bcf1853d5e8652d6551b0af8498baa268cae9be897c836584860` |
| 23 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitcone--93aa649db6492d42dba6aede.md) | 255 | `declaration-track:93aa649db6492d42dba6aedeaa37bf9add632ef861f3ab9b453d65c9059458bb` |
| 24 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/limitconeislimit--35a60d5c37f81c1d6c478d07.md) | 263 | `declaration-track:35a60d5c37f81c1d6c478d0770bb06d2cc1a7cd52d3b0be31e2cdbddbd854911` |
| 25 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimit--a9668114ecbac57a4335b2f0.md) | 268 | `declaration-track:a9668114ecbac57a4335b2f07a43e5c313aa176724bee33f872c5ffd183a724e` |
| 26 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimitsofshape--a77fbf4615dd9028a9cb9154.md) | 276 | `declaration-track:a77fbf4615dd9028a9cb91544700ae9d08faaad9ca4cfd5f9f4fcd8543e4a371` |
| 27 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimitsofsize--0cd22f04d1fef38f8cad4c74.md) | 282 | `declaration-track:0cd22f04d1fef38f8cad4c74a1ea54de48f5099db3aac2e3c755046d68fd48cf` |
| 28 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/haslimits--18dc90fa321fb9534fb7b92f.md) | 286 | `declaration-track:18dc90fa321fb9534fb7b92fee0fa627b694671fdecfe150c99bf5ee884c1a5a` |
| 29 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-mon-preserveslimitsofsize--7afbf1691799217256605e2b.md) | 297 | `declaration-track:7afbf1691799217256605e2b68bc09277e81c55ebc710034f17f62a53e4a9caf` |
| 30 | `instance` | [forget₂Mon_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-mon-preserveslimits--7c8a44772a4866d3d675f755.md) | 302 | `declaration-track:7c8a44772a4866d3d675f755d30b4d773d6174c0eebf78c18b2aac9644d3b251` |
| 31 | `instance` | [forget_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimitsofshape--4da67476007e3af22848c6c6.md) | 310 | `declaration-track:4da67476007e3af22848c6c6debccb01f26aa4a65934aa6249ea0238c04ba692` |
| 32 | `instance` | [forget_preservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimitsofsize--77bef375003f14b102348137.md) | 321 | `declaration-track:77bef375003f14b102348137fa20aa715b6309dc44e6171823de603cbe59ab62` |
| 33 | `instance` | [_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsSubmonoid.Variantc9d2125204e7e889e013da29dd52fb7d3e522e8867d17614ce563bfa445dde47.AddCommMonCat.forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-sectionssubmo--c274e313599f862b8c4f6323.md) | 325 | `declaration-track:c274e313599f862b8c4f632384eb4c302990c013322b55f5df665f89cdc1bd8f` |
| 34 | `instance` | [forget_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-preserveslimits--4dfb7d366a5fa9a7b66e9e14.md) | 330 | `declaration-track:4dfb7d366a5fa9a7b66e9e14b149ceb8b220dc0c410deffe551f06da9b868631` |
| 35 | `instance` | [forget_createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimit--1f6bc9dfbce021897324d0d1.md) | 334 | `declaration-track:1f6bc9dfbce021897324d0d1fe17f987ac6101218ab7508300caf7a375774262` |
| 36 | `instance` | [forget_createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimitsofshape--bdeb377305bb4c784aa99096.md) | 341 | `declaration-track:bdeb377305bb4c784aa99096643910805787be02cf4a7e1e09f07dccb35535aa` |
| 37 | `instance` | [forget_createsLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimitsofsize--2eaffd8e1e984bb1d9760158.md) | 348 | `declaration-track:2eaffd8e1e984bb1d976015848ca2e9bfa125b235f1fa7bed44358354e93caec` |
| 38 | `instance` | [forget_createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/declarations/forget-createslimits--0b9d98472237783f1c5b5938.md) | 353 | `declaration-track:0b9d98472237783f1c5b5938513f1e5348bf25ee4251cb980d1afdb6045485a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
