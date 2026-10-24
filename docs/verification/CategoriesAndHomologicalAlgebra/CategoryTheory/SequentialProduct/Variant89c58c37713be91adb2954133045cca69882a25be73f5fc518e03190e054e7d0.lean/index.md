# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SequentialProduct.Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d0f182a0a19da6c6205b3d9ebf7856d1ec41b2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d0f182a0a19da6c6205b3d9ebf7856d1ec41b2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.OfSequence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Countable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.PiProd` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [functorObj_eq_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functorobj-eq-pos--0d402a99015d6a18d1ad4c3b.md) | 32 | `result-track:0d402a99015d6a18d1ad4c3b52b07a2c1d100f1852e493e182977594b6bf97c4` |
| 2 | `lemma` | [functorObj_eq_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functorobj-eq-neg--174100694262cd5a85be9ef4.md) | 35 | `result-track:174100694262cd5a85be9ef41ca9af6f6c969c742236251613abcf983bb0fe27` |
| 3 | `def` | [functorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functorobj--4db2368d6ccfc191ba595092.md) | 42 | `declaration-track:4db2368d6ccfc191ba59509244c274a2fd05ad7dd70d5d7879a0776984bf2d47` |
| 4 | `def` | [functorObjProj_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functorobjproj-pos--d6bffa0e5d2576e548837bca.md) | 46 | `declaration-track:d6bffa0e5d2576e548837bcac5babd44b961491202ee7d8a094e2c03e80cf4db` |
| 5 | `def` | [functorObjProj_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functorobjproj-neg--959e6dc67c0ac48b7b0a3fd8.md) | 51 | `declaration-track:959e6dc67c0ac48b7b0a3fd814511b0fd68305a74f349c7f5807eaf8f09d763e` |
| 6 | `def` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functormap--abe8f49e8e79126314f899a2.md) | 56 | `declaration-track:abe8f49e8e79126314f899a27119858d95853ee11fd31bc850c75d0be301fa25` |
| 7 | `lemma` | [functorMap_commSq_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functormap-commsq-succ--59411bde10b8e1eb147834ec.md) | 63 | `result-track:59411bde10b8e1eb147834ec822d62ac0f41e5321057006026bf905d1456a252` |
| 8 | `lemma` | [functorMap_commSq_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functormap-commsq-aux--76007897e8859d380ad2ee4f.md) | 70 | `result-track:76007897e8859d380ad2ee4f75634db966dbfb5386e9c99916c5eb9ce6b23be4` |
| 9 | `lemma` | [functorMap_commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functormap-commsq--95d1b9b88a0ae8c6f14a9099.md) | 87 | `result-track:95d1b9b88a0ae8c6f14a9099f6a01189f57a9ff52b9c53e1a477735e6b6d79f8` |
| 10 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/cone--2915481e2b57bf9bcca6fdff.md) | 117 | `declaration-track:2915481e2b57bf9bcca6fdff44698fcf60d3610f1d763c14d951a5ad6f2d4e61` |
| 11 | `lemma` | [cone_π_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/cone-app--3d42010a29c6e4e163014786.md) | 134 | `result-track:3d42010a29c6e4e163014786867b0edbed8abac512bacf26b458256eb9a4dab0` |
| 12 | `lemma` | [cone_π_app_comp_Pi_π_pos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/cone-app-comp-pi-pos--18a383df6e3336b9b31c1664.md) | 139 | `result-track:18a383df6e3336b9b31c1664df92c826a0e4f47f05397433404c8aa74dd98e56` |
| 13 | `lemma` | [cone_π_app_comp_Pi_π_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/cone-app-comp-pi-neg--04cc9492e45472eb74c663f1.md) | 147 | `result-track:04cc9492e45472eb74c663f1f5577ca725c1d17c1e699b2031b7c66dc0732f41` |
| 14 | `def` | [isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/islimit--b0bb13c203305370104c7210.md) | 160 | `declaration-track:b0bb13c203305370104c7210ede58ec86f90a5cd7c01d837e3bb6b3c3e7aca63` |
| 15 | `lemma` | [functorMap_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variant89c58c37713be91adb2954133045cca69882a25be73f5fc518e03190e054e7d0.lean/declarations/functormap-epi--4c98de890d64be534a582c9f.md) | 214 | `result-track:4c98de890d64be534a582c9fbb637b6b6152e51e01817d25960d13210fbd76ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
