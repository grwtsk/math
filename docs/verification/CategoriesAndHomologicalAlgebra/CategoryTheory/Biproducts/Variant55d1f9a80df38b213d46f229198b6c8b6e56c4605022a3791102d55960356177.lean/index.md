# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af1046235867656faf69423ea98e42befac9bd7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af1046235867656faf69423ea98e42befac9bd7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/instance--8e8b75b8e7c631e85cdd148f.md) | 26 | `declaration-track:8e8b75b8e7c631e85cdd148fca4c03828844d89bff192543e35714ee885e7164` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/instance--1654f4772b6fce9ac6d8461c.md) | 29 | `declaration-track:1654f4772b6fce9ac6d8461cebf1a67d4e83b211fee778a7ee903ef5e235bc10` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/binaryproductlimitcone--7bd3b40748218d2d23fb5aea.md) | 38 | `declaration-track:7bd3b40748218d2d23fb5aeaa12e7292868cbd1baa3a56fd762cbdaa057d6621` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/binaryproductlimitcone-cone-app-left--35c905e1cb35a04eb8dc4b6c.md) | 44 | `result-track:35c905e1cb35a04eb8dc4b6c5ada249cf756b307bb8410aaeb8822a5d46eb3dd` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/binaryproductlimitcone-cone-app-right--b948104cd754758ee837f125.md) | 49 | `result-track:b948104cd754758ee837f125ca6782600ada1fe855751c399893f68246d52030` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/biprodisoprod--e2dbd6b01557e0c365a84765.md) | 56 | `declaration-track:e2dbd6b01557e0c365a84765186e08aa0702071af5846930fb68670e6af0e658` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/biprodisoprod-inv-comp-fst--01e9474c06cb8fb6b0a06253.md) | 61 | `result-track:01e9474c06cb8fb6b0a06253eb48c2bfd8978938b6bd39d6ee861c7cd175d9f2` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/biprodisoprod-inv-comp-snd--fc74370d994f6d2ad51e8101.md) | 66 | `result-track:fc74370d994f6d2ad51e810162f13bfe1ab9db7e963de1cd159d0e0ec63bd9de` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/lift--b71efa97e708a2a251fd6372.md) | 78 | `declaration-track:b71efa97e708a2a251fd6372477257cab39e2c6927c31b9e8ce2419c6f722546` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/productlimitcone--a75dbf9c3e5ac109bfb2efe6.md) | 92 | `declaration-track:a75dbf9c3e5ac109bfb2efe656684ebd3067c7894476654e50898f76b88dccff` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/biproductisopi--c0f9100970fc1efa006e29dc.md) | 112 | `declaration-track:c0f9100970fc1efa006e29dcc1b63aaddccfaa978fc3d2c29999a96ba9120388` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant55d1f9a80df38b213d46f229198b6c8b6e56c4605022a3791102d55960356177.lean/declarations/biproductisopi-inv-comp--e73609859e337a93f4c9c10f.md) | 117 | `result-track:e73609859e337a93f4c9c10fbdbd87e314e38472bc97dc095f713ca11d024079` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
