# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7856c9e855d493ec3449b450b0ffd2c09fd63f1c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7856c9e855d493ec3449b450b0ffd2c09fd63f1c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.DifferentialObject` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [objEqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/objeqtohom--b1f5259025b7de8b8ad79fe7.md) | 44 | `declaration-track:b1f5259025b7de8b8ad79fe741d216e57ffef8c80d67756f6438dc0b274251e1` |
| 2 | `theorem` | [objEqToHom_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/objeqtohom-refl--90303ae0bfc0ad78978ae8b9.md) | 49 | `result-track:90303ae0bfc0ad78978ae8b92d9e6980cb12aa3b79b51ae10cbeb8781905553f` |
| 3 | `theorem` | [objEqToHom_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/objeqtohom-d--f8010efa0fbdae795b4f1cfc.md) | 53 | `result-track:f8010efa0fbdae795b4f1cfccea804696b2f49a46af840f1e0f460d84ea4dce6` |
| 4 | `theorem` | [d_squared_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/d-squared-apply--34c41c0f763526a7c04ff186.md) | 57 | `result-track:34c41c0f763526a7c04ff1862f0bebe181154422e7bf80bae9144b240775637c` |
| 5 | `theorem` | [eqToHom_f'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/eqtohom-f--7b6da7868bab68ab1aa042de.md) | 60 | `result-track:7b6da7868bab68ab1aa042de714f08e71d176d0e562e5f21c13a055e4e5e8017` |
| 6 | `theorem` | [d_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/d-eqtohom--0bd8b5803b2147017cc03ecb.md) | 73 | `result-track:0bd8b5803b2147017cc03ecbf5df5a05d4627ef233eb3192cbf1ff8cc39a5cfd` |
| 7 | `def` | [dgoToHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/dgotohomologicalcomplex--6dd3a84fefb057ef7e404ca3.md) | 80 | `declaration-track:6dd3a84fefb057ef7e404ca38ae93bd50f4ff221127deb8d762cc5c20218c32f` |
| 8 | `def` | [homologicalComplexToDGO](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/homologicalcomplextodgo--e80226103159f80afa5580cf.md) | 104 | `declaration-track:e80226103159f80afa5580cf56b2f9146bd3b53a7d708be4231d11ee38f6a559` |
| 9 | `def` | [dgoEquivHomologicalComplexUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/dgoequivhomologicalcomplexunitiso--526d9aae35794929e645667d.md) | 115 | `declaration-track:526d9aae35794929e645667dab6e076d5d59f2b5017246af4e7bb9d3002ebfe1` |
| 10 | `def` | [dgoEquivHomologicalComplexCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/dgoequivhomologicalcomplexcounitiso--f3d53270b79a0032e17b3958.md) | 125 | `declaration-track:f3d53270b79a0032e17b395873c522b0e70cbc86ea4991ec1e01527dec02376c` |
| 11 | `def` | [dgoEquivHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6.lean/declarations/dgoequivhomologicalcomplex--494ca34ee9276a613b5637d6.md) | 136 | `declaration-track:494ca34ee9276a613b5637d6522d5e5f4c7c34ed5e6ba30d6eb3594c1a6aa411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
