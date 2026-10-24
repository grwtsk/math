# Verification target: GRWTSK.Algebra.LinearAlgebra.Monoidal.Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97bc570523d1a8edb28ee6edb555105902439ad3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97bc570523d1a8edb28ee6edb555105902439ad3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.CoalgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.TensorProduct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonoidalCategoryStruct](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/declarations/instmonoidalcategorystruct--c2c00c0fb315aa4f3e7e96a0.md) | 43 | `declaration-track:c2c00c0fb315aa4f3e7e96a0e19d7c8397350454568b692f9938b15a205feecf` |
| 2 | `def` | [MonoidalCategory.inducingFunctorData](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/declarations/monoidalcategory-inducingfunctordata--0bf6d3195f8542dae87d2a7d.md) | 57 | `declaration-track:0bf6d3195f8542dae87d2a7d5ced6250d7c4b4f930eda4077adfe7db92990fea` |
| 3 | `instance` | [instMonoidalCategory](../../../../../mathematics/Algebra/LinearAlgebra/Monoidal/Variant8eaaca29a740e3ab30c421b76ab6e7c4a043eca4a13706c5ec38fdac3133dcdc.lean/declarations/instmonoidalcategory--5fe60f8e7ed94a51319045bc.md) | 68 | `declaration-track:5fe60f8e7ed94a51319045bc38e23db358db2ff9ad6a9cbf8a4f42a3b2106d92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
