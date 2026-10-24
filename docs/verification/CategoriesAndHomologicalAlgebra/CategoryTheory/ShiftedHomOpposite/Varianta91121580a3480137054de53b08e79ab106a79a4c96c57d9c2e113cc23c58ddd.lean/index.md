# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftedHomOpposite.Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47584a13053a0f35f55e03d2d25c47955a365b5d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47584a13053a0f35f55e03d2d25c47955a365b5d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv--0b5f69995f74e4d4c8c0138d.md) | 41 | `declaration-track:0b5f69995f74e4d4c8c0138d77d63b028b72dd2bda9b6739968ab396ed7cda2f` |
| 2 | `lemma` | [opEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-apply--01baee17b27b50844d3f5312.md) | 46 | `result-track:01baee17b27b50844d3f5312b92e3ef518a68fef8a8ba6a1d0f5a92db691eac8` |
| 3 | `lemma` | [opEquiv_symm_apply_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-apply-comp--84a6c3dcd2f8e836f50a1639.md) | 51 | `result-track:84a6c3dcd2f8e836f50a1639a676e72662f5590f20115d0ed478331e167f0f4a` |
| 4 | `lemma` | [opEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-comp--92f2c9b177c7bc7aeb6770c0.md) | 62 | `result-track:92f2c9b177c7bc7aeb6770c019d571cbddde3ef52c9147f3321c8eeb9c031e70` |
| 5 | `def` | [opEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv--03d8f86e074bd2ff0f814abc.md) | 86 | `declaration-track:03d8f86e074bd2ff0f814abc65b5ac588be5b0a6e8f367b027e70b85f90c828d` |
| 6 | `lemma` | [opEquiv'_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-apply--e6ee4d81f825a859cee42c12.md) | 90 | `result-track:e6ee4d81f825a859cee42c1243a1d3bce61ca0ece0457d70a0bf9687e7032547` |
| 7 | `lemma` | [opEquiv'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-apply--211b1da58f4af4de40377402.md) | 96 | `result-track:211b1da58f4af4de403774026ebae651caabb7d51fecd98950ab567bc5d01f51` |
| 8 | `lemma` | [opEquiv'_symm_op_opShiftFunctorEquivalence_counitIso_inv_app_op_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-op-opshiftfunctorequivalence-counitiso-inv-app-op-shift--084ab65a17cbb796ee153f3a.md) | 101 | `result-track:084ab65a17cbb796ee153f3a4eb1e7d9177c958455a79e2ccdfb9d8570de9e08` |
| 9 | `lemma` | [opEquiv'_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-comp--4b06dc5b410e2549792a4d97.md) | 114 | `result-track:4b06dc5b410e2549792a4d974bdcf4611d3fca881e976a802c60abfa1faa7a19` |
| 10 | `lemma` | [opEquiv'_zero_add_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-zero-add-symm--ee439afcea61e0b8ba5cae91.md) | 119 | `result-track:ee439afcea61e0b8ba5cae918a6489265f8ae0ba40937640928ef0a45aafb0f8` |
| 11 | `lemma` | [opEquiv'_add_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-add-symm--57483ee8f0701ee6a49073d5.md) | 125 | `result-track:57483ee8f0701ee6a49073d53136c519f8f5d5b89338cf313c000fe6f72e54af` |
| 12 | `lemma` | [opEquiv_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-add--0991e16fccdf3895343b8b9e.md) | 143 | `result-track:0991e16fccdf3895343b8b9e14295ebb293c400dd59994105df4771e460f3f3e` |
| 13 | `lemma` | [opEquiv'_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Varianta91121580a3480137054de53b08e79ab106a79a4c96c57d9c2e113cc23c58ddd.lean/declarations/opequiv-symm-add--7b6b986e7f3c843e453febf0.md) | 150 | `result-track:7b6b986e7f3c843e453febf056260d24ebec10f69b313b63cf06b60c989e5684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
