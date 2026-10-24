# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99fcf06d2a3dae221e8f85cf595e65c37d262a09",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99fcf06d2a3dae221e8f85cf595e65c37d262a09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functorHasRightDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/declarations/functorhasrightdual--3fb930e3e2c44dfc4c621e98.md) | 26 | `declaration-track:3fb930e3e2c44dfc4c621e9820d6e7c74701de71b556e9b60976971bd450e2a1` |
| 2 | `instance` | [rightRigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/declarations/rightrigidfunctorcategory--c97c3153b1f408658c406c22.md) | 49 | `declaration-track:c97c3153b1f408658c406c2247a1873e804ab845f1e7d13c0fa6d6819c1eaa3d` |
| 3 | `instance` | [functorHasLeftDual](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/declarations/functorhasleftdual--5ad69e5017f3c21135dec863.md) | 51 | `declaration-track:5ad69e5017f3c21135dec863c40bc57425f5b722aeb483402c84939a77bc016c` |
| 4 | `instance` | [leftRigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/declarations/leftrigidfunctorcategory--0b43dcbdc5f5831fa00256e2.md) | 68 | `declaration-track:0b43dcbdc5f5831fa00256e2d13cc99c21bc34c89f16d45d7aa92b9479114e4c` |
| 5 | `instance` | [rigidFunctorCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a2bcc3cee63786bdf411f54c21435311672d538d7d72b2cf804660528d1f2f.lean/declarations/rigidfunctorcategory--1f1224b935be8c62ab3ccbe4.md) | 70 | `declaration-track:1f1224b935be8c62ab3ccbe476500e2e13233e14c29012563a0734f15ea5c174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
