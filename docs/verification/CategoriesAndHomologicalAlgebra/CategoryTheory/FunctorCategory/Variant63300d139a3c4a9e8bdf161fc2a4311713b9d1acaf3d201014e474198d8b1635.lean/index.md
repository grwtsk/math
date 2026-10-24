# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72bb317a5034656e5e6fe1714949f1e54974080f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72bb317a5034656e5e6fe1714949f1e54974080f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functorHasRightDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/declarations/functorhasrightdual--7a195cd12e35df8ff413f6c4.md) | 34 | `declaration-track:7a195cd12e35df8ff413f6c4b8898e2c376cbe6cd31d6707762b3107e354fb9f` |
| 2 | `instance` | [rightRigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/declarations/rightrigidfunctorcategory--a2d340c8bd8f3257f833422c.md) | 57 | `declaration-track:a2d340c8bd8f3257f833422c0bd8326fa23e1e795a02db9946c85ba5f2bbe3f9` |
| 3 | `instance` | [functorHasLeftDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/declarations/functorhasleftdual--cf6dc035f46f830b0a133f6b.md) | 59 | `declaration-track:cf6dc035f46f830b0a133f6b2a0867ebeafaea735b6db70fa9627bdc98b1e039` |
| 4 | `instance` | [leftRigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/declarations/leftrigidfunctorcategory--8f8d7263657cc3ec24f75710.md) | 76 | `declaration-track:8f8d7263657cc3ec24f75710e1d1f44270338ba2588a4578caa4816ed1956175` |
| 5 | `instance` | [rigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant63300d139a3c4a9e8bdf161fc2a4311713b9d1acaf3d201014e474198d8b1635.lean/declarations/rigidfunctorcategory--f17bfdb46764b0b4fc96884c.md) | 78 | `declaration-track:f17bfdb46764b0b4fc96884cd9f7399e3bbebec757c9955baa17862527cb4b4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
