# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "958f8082aa437e97e62b455c94b00d51ffe2515e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `958f8082aa437e97e62b455c94b00d51ffe2515e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Biproducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Zero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/binaryproductlimitcone--d846ff08421c07e4994e10db.md) | 22 | `declaration-track:d846ff08421c07e4994e10db2e597788421e05c0efe36645a62895551a3fe0da` |
| 2 | `instance` | [cartesianMonoidalCategoryGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/cartesianmonoidalcategorygrp--7617ac4afa19bd48758804b1.md) | 29 | `declaration-track:7617ac4afa19bd48758804b1d2427a8090cffd56e9cffd45d8b5382e7b4e99f4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--4bddfd6e35f40da08f86873a.md) | 33 | `declaration-track:4bddfd6e35f40da08f86873a32b2f724ec4cf04dcdb27e2b3792f42902065376` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--1acb33933d00d6213c29c075.md) | 35 | `declaration-track:1acb33933d00d6213c29c0752ee5fd4b0c0572d37a9211d954e1b7a8e5da2623` |
| 5 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/tensorobj-eq--318d4140900404bdce3b9ac3.md) | 37 | `result-track:318d4140900404bdce3b9ac3b0240d823dfaa3188c5e0c42705c681b183cf9e3` |
| 6 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/forget-apply--fb47e0be2a06828ba335ec50.md) | 40 | `result-track:fb47e0be2a06828ba335ec50216892b8d3ab8dc81095d61f52ecf92d84b0ea1a` |
| 7 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/binaryproductlimitcone--d1319ecb0fb5a74f7bb29cc8.md) | 52 | `declaration-track:d1319ecb0fb5a74f7bb29cc8a5b8e2a165874dbae2cb64e965d761e6ee0e1cfd` |
| 8 | `instance` | [cartesianMonoidalCategoryAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/cartesianmonoidalcategoryaddgrp--725cd9f1900ed24dc34468b1.md) | 59 | `declaration-track:725cd9f1900ed24dc34468b1327e0f2b81856380a2af3853e1907e36608dbfc7` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--20685d1ee12a8bfdb406167c.md) | 63 | `declaration-track:20685d1ee12a8bfdb406167cc7f4d8a6f7dec0735b17935d16d77c08de490560` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--7e09489888412879596b4002.md) | 65 | `declaration-track:7e09489888412879596b40021851c1c591ecc5aee21bcbc378287c4b15d1f259` |
| 11 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/tensorobj-eq--1f33de3b0073a79155e9dcc7.md) | 67 | `result-track:1f33de3b0073a79155e9dcc7372f56590bb632a0fb786006fb323fde83dd2b1a` |
| 12 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/forget-apply--639eefa74fc03f0a7c9066dd.md) | 70 | `result-track:639eefa74fc03f0a7c9066dd3c2a724b028535024944f06c5384d87bddab7fa0` |
| 13 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/binaryproductlimitcone--592e5661bf50fdff45823a38.md) | 82 | `declaration-track:592e5661bf50fdff45823a381dacf923fc738fd184fd49dbf0cdcc077951c6b9` |
| 14 | `instance` | [cartesianMonoidalCategoryCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/cartesianmonoidalcategorycommgrp--3b5c1d27b4227f96dfb8cf13.md) | 89 | `declaration-track:3b5c1d27b4227f96dfb8cf13315c291a4a9a885f825797579bf03cdfe82c6d7b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--3bc8ceb2534883d45356667e.md) | 93 | `declaration-track:3bc8ceb2534883d45356667efefa0c3978d49632f52e8602208ac433d0af2812` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--77f7ec82dd02931e7e6357ac.md) | 95 | `declaration-track:77f7ec82dd02931e7e6357ac338bce425ca61c0e44ac6d658dc0bd478031e713` |
| 17 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/tensorobj-eq--f1b1570953369b2b479f5b9a.md) | 97 | `result-track:f1b1570953369b2b479f5b9ac55ec1f433b3ed40990c605b91bdc32eba4c7c41` |
| 18 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/forget-apply--2d02ccddfcbdcc4ac3467422.md) | 100 | `result-track:2d02ccddfcbdcc4ac34674225402db95465f2b4d27d92054e44699dac6dd34e2` |
| 19 | `def` | [cartesianMonoidalCategoryAddCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/cartesianmonoidalcategoryaddcommgrp--fa88eb678555b3e2770f958c.md) | 112 | `declaration-track:fa88eb678555b3e2770f958c5be9e2d170c96e018a23465d46fcddc68e62673e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--cce2cc0be4de37a5ad8dff0f.md) | 121 | `declaration-track:cce2cc0be4de37a5ad8dff0ffcd9d585c9003795359cfcb7ecfc854cedc585c6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/instance--f39e350c96d01e0a804506fb.md) | 123 | `declaration-track:f39e350c96d01e0a804506fbceb1fa21af18c3eb30ed1a42302d4af9a54fda3d` |
| 22 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/tensorobj-eq--24568603aca6a65ae4a592fc.md) | 125 | `result-track:24568603aca6a65ae4a592fc932d06146f29b897cab97eb0e3a38925621d9dd2` |
| 23 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant2c51406ec686fe124d7d0517a1367ab54e74a3478412a775c9ac2ffbe47faf3e.lean/declarations/forget-apply--fbb7812692b70e5ba284c55c.md) | 128 | `result-track:fbb7812692b70e5ba284c55cee5067983db70e5181100917d090c27154d6b95b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
