# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52da90a1031a877b386de8e313bc46497590a349",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52da90a1031a877b386de8e313bc46497590a349`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/instance--7612269b1dba0899a5661c51.md) | 27 | `declaration-track:7612269b1dba0899a5661c5193c224084d5ee22253ccef3d6b8392d50b6021e1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/instance--21ec5de94409876c628125d7.md) | 30 | `declaration-track:21ec5de94409876c628125d724d15f5b6526cbfe3d9f9355f3837e2754774d95` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/binaryproductlimitcone--1a25b686b697623b7f3ba83b.md) | 38 | `declaration-track:1a25b686b697623b7f3ba83bd78043454eaed7d318f64d88354ef73b575c65b1` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/binaryproductlimitcone-cone-app-left--d0e7bfd0e4643dd0f7f8b234.md) | 56 | `result-track:d0e7bfd0e4643dd0f7f8b2344b2710c936dfd8e488bef74e4c18e781c5c593a9` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/binaryproductlimitcone-cone-app-right--12fc32cd17f3988cc14a1871.md) | 61 | `result-track:12fc32cd17f3988cc14a1871910baacde7994b3cefa0bee77788a5bc134fe454` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/biprodisoprod--16512554d3e09d806a8b682a.md) | 68 | `declaration-track:16512554d3e09d806a8b682a01bd2640394a9baf2b0d8d003b75708f9534196f` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/biprodisoprod-inv-comp-fst--95312da70e65107853e76659.md) | 73 | `result-track:95312da70e65107853e7665993e44ff7ecb2e78c70338eefb37bc9c881d5acf6` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/biprodisoprod-inv-comp-snd--230e3146147af5379632ef01.md) | 78 | `result-track:230e3146147af5379632ef0181e9cb1b0be519f15e4fc1bfa42d617ed3f1714c` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/lift--ae3ffc9ee214e0fef90ae8f0.md) | 90 | `declaration-track:ae3ffc9ee214e0fef90ae8f08804f4d413c2b1c7a8597574e244678c4ce4fe2b` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/productlimitcone--6c1ae8ab80c7262cbf65f22a.md) | 103 | `declaration-track:6c1ae8ab80c7262cbf65f22ac8362dfeb638dffbc9b9f63fb00aca69f974ae26` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/biproductisopi--31b90d624ee506c0bc93acf2.md) | 123 | `declaration-track:31b90d624ee506c0bc93acf2b2d59299a5c7004d90ba0b99546488d45a6112aa` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/biproductisopi-inv-comp--239d310e5e9ceb843ecf6d6c.md) | 128 | `result-track:239d310e5e9ceb843ecf6d6c2b3a2f39660b9428f1201f09ea742bbe5959f418` |
| 13 | `def` | [lequivProdOfRightSplitExact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/lequivprodofrightsplitexact--2130db66af4de7f95a85d19b.md) | 144 | `declaration-track:2130db66af4de7f95a85d19b6bfe506520316b26185da27f2ccf53f5f4522951` |
| 14 | `def` | [lequivProdOfLeftSplitExact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/lequivprodofleftsplitexact--25478d19c11850f7cc43d981.md) | 152 | `declaration-track:25478d19c11850f7cc43d9812a3bea572cd2af0fda5386158c8dd66f5f1d6ef3` |
| 15 | `def` | [lequivProdOfRightSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/lequivprodofrightsplitexact--02e7e07aedfe1ef05a7ec95d.md) | 173 | `declaration-track:02e7e07aedfe1ef05a7ec95d29cc1d5088b6dee2b05dba5795b7de27be5bb24d` |
| 16 | `def` | [lequivProdOfLeftSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantcbf3a3a5bd70bf2f5464e32c0bf0cd24284f38da52097f99d1cec8d499115d30.lean/declarations/lequivprodofleftsplitexact--fe068db43a27d37811359295.md) | 187 | `declaration-track:fe068db43a27d378113592959738aced7a6bbca566150623d7795f5fbe140581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
