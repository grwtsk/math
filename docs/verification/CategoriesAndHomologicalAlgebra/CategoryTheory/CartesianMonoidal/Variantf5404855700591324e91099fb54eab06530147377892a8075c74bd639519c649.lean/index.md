# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianMonoidal.Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "add6afb09405b46dad43d897daa65ee1f092130e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `add6afb09405b46dad43d897daa65ee1f092130e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Biproducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Zero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/binaryproductlimitcone--6ff18cd90b6ffc54019f3c6e.md) | 30 | `declaration-track:6ff18cd90b6ffc54019f3c6e9b7cb860b2477591feb65567b8a1e707d7812402` |
| 2 | `instance` | [cartesianMonoidalCategoryGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/cartesianmonoidalcategorygrp--f0fbd7c113a681e8470b1b6f.md) | 37 | `declaration-track:f0fbd7c113a681e8470b1b6f6bfe866c3be4e76592067a202630d78d6c10b93f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--375d973e38f24b15a31f4716.md) | 41 | `declaration-track:375d973e38f24b15a31f4716b5269d2bbe341668796338efeb41292a6e708b44` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--2bdae688a088ffab630e532e.md) | 43 | `declaration-track:2bdae688a088ffab630e532eda6c9afcd94f5d33214b667e7e4274b754bb028a` |
| 5 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/tensorobj-eq--94c381751eee3d65eec553c4.md) | 45 | `result-track:94c381751eee3d65eec553c4058175dc850c51d20cb66f0a8d8af89d161a6a83` |
| 6 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/forget-apply--c87dd00992b97958762ceee5.md) | 48 | `result-track:c87dd00992b97958762ceee518a0898a101f0e2da4ea79f0e9c6df3d646d8ec7` |
| 7 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/binaryproductlimitcone--034c775a321386e4d4199493.md) | 60 | `declaration-track:034c775a321386e4d4199493b2ca1c92bc2aa7e5d030b616acc87b7568269d46` |
| 8 | `instance` | [cartesianMonoidalCategoryAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/cartesianmonoidalcategoryaddgrp--4f39255e3b5c187283407330.md) | 67 | `declaration-track:4f39255e3b5c187283407330a031bac8ad939ad5957dfd0e8616ebc5c26f4c77` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--f5d9e83bbc2bddd53610aad7.md) | 71 | `declaration-track:f5d9e83bbc2bddd53610aad743d8ee142374d977892907bc2a0c177c25f2ec71` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--29a1494b1e026c15b6464e5e.md) | 73 | `declaration-track:29a1494b1e026c15b6464e5e8d1543a420f7252927a13e6bd3d7da0ac8df9cb7` |
| 11 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/tensorobj-eq--e5fba8397dc46adefd3da528.md) | 75 | `result-track:e5fba8397dc46adefd3da52884ef27eedb4624908876e9af7785782eb8b1d3b5` |
| 12 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/forget-apply--d647be69019e82e2c32093a3.md) | 78 | `result-track:d647be69019e82e2c32093a37b7d10d280ca3daed181499a05a59f3fba3938af` |
| 13 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/binaryproductlimitcone--f98ad8224fa9f8cf507f27ec.md) | 90 | `declaration-track:f98ad8224fa9f8cf507f27ec9130c09781e44749d577a03bc88f1edd86d823d0` |
| 14 | `instance` | [cartesianMonoidalCategoryCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/cartesianmonoidalcategorycommgrp--9dae556b5a4a790ca895decf.md) | 97 | `declaration-track:9dae556b5a4a790ca895decf942e4e2127ee8db8a849d3ddf89caa4592141b9c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--d42ff67efef9940c80c7ad49.md) | 101 | `declaration-track:d42ff67efef9940c80c7ad495ab39241796010d49ff7a273b33064a60a1897b2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--f72e04cac1d3772626cd3693.md) | 103 | `declaration-track:f72e04cac1d3772626cd3693b99d41310b31fdb1910501b99f6bfedee7d0405b` |
| 17 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/tensorobj-eq--3ee82fab5bc1fe321eeebe7a.md) | 105 | `result-track:3ee82fab5bc1fe321eeebe7adedc94be3bde0494bd9a97274618a1407add6d3d` |
| 18 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/forget-apply--afb1b0b9bd263dfa0ee033e6.md) | 108 | `result-track:afb1b0b9bd263dfa0ee033e6663e915c415ab0076335dcdaab08c89a0ae64d60` |
| 19 | `def` | [cartesianMonoidalCategoryAddCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/cartesianmonoidalcategoryaddcommgrp--ee5ac4e79cac2f0b7456f232.md) | 120 | `declaration-track:ee5ac4e79cac2f0b7456f232c283693b2e02fedb3ae53d4a4b30354e87f9ee6c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--5a4ce317a1fa6b6f715f80ff.md) | 129 | `declaration-track:5a4ce317a1fa6b6f715f80ffa73f84e2148c63970f3d797c7fa78f17dce68993` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/instance--b6f6ce9713745ac2bced7019.md) | 131 | `declaration-track:b6f6ce9713745ac2bced7019a1d9c9a8923c0019d1aacfa0fc1d479688496048` |
| 22 | `theorem` | [tensorObj_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/tensorobj-eq--f128bd20b2e38fef6b0157de.md) | 133 | `result-track:f128bd20b2e38fef6b0157de0f6c44c94d682844d38d8a7afd37a71d9dbdb24e` |
| 23 | `theorem` | [μ_forget_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variantf5404855700591324e91099fb54eab06530147377892a8075c74bd639519c649.lean/declarations/forget-apply--2a532e561caa6315d123d27a.md) | 136 | `result-track:2a532e561caa6315d123d27a53e2a4911334b8f236569984faa7a069ae31b16c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
