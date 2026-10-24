# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c165fd6efee64995659bc84caa38af98ff23099",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c165fd6efee64995659bc84caa38af98ff23099`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor_category_hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean/declarations/functor-category-hasfinitelimits--68b9927b3e92326a94eaf5bb.md) | 36 | `declaration-track:68b9927b3e92326a94eaf5bb83cfe5886fafadef9fbac5fe8b70feb7c938cbc1` |
| 2 | `instance` | [functor_category_hasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant37214fce804c396269d203f3c9522311429fc93dfb16ef437a246a15ef90f5eb.lean/declarations/functor-category-hasfinitecolimits--1a2d07fde7510437b4690364.md) | 40 | `declaration-track:1a2d07fde7510437b4690364e75c28da2fd005d30a0ce547b9ee630d9eff3a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
