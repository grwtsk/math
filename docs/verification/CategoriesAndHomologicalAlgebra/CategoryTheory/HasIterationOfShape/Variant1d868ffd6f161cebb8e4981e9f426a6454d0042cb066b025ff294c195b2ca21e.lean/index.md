# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasIterationOfShape.Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb6ed56889f24d63d16dbf05eacc271d7e08b4e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb6ed56889f24d63d16dbf05eacc271d7e08b4e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Comma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasIterationOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/hasiterationofshape--65b75d295c5d1a96ab26dfc8.md) | 39 | `declaration-track:65b75d295c5d1a96ab26dfc8839711b75dd3480a6a764b18068df478348b485d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/instance--ef0fe540d6119fbeb280aef3.md) | 46 | `declaration-track:ef0fe540d6119fbeb280aef3db71906076ddd0bb9872defd591f52c79559faf9` |
| 3 | `lemma` | [hasColimitsOfShape_of_isSuccLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/hascolimitsofshape-of-issucclimit--f77ec5533b5a4564d5b38194.md) | 51 | `result-track:f77ec5533b5a4564d5b38194bcbce750fe1745ccacb37a7587188a198abac1f2` |
| 4 | `lemma` | [hasColimitsOfShape_of_isSuccLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/hascolimitsofshape-of-issucclimit--52923994b0394be23706b29c.md) | 57 | `result-track:52923994b0394be23706b29c2ed71e4f1019594545e935900bec8180f204deab` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/instance--2d01d5ad2863d0c96da33fb4.md) | 63 | `declaration-track:2d01d5ad2863d0c96da33fb428cf67a4fa9cb1541e55995201a9e9b3cc37dfeb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/instance--c898313006a3bfd0a4aa1e01.md) | 68 | `declaration-track:c898313006a3bfd0a4aa1e01bfff87313224378c6a3650d06c5cbb13a2624d0b` |
| 7 | `lemma` | [hasColimitsOfShape_of_initialSeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/hascolimitsofshape-of-initialseg--6352cc7a76149c58b121bb4a.md) | 75 | `result-track:6352cc7a76149c58b121bb4a854a15049056aeb14b66c2e079ed62c916a0dedb` |
| 8 | `lemma` | [hasIterationOfShape_of_initialSeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/hasiterationofshape-of-initialseg--0f1175b163b76ab7fc73a6cc.md) | 100 | `result-track:0f1175b163b76ab7fc73a6ccd1b6f4f913c089a7ceaa924e0f5cd81746cdfafd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasIterationOfShape/Variant1d868ffd6f161cebb8e4981e9f426a6454d0042cb066b025ff294c195b2ca21e.lean/declarations/instance--858973eb3e1dfc1704db5057.md) | 111 | `declaration-track:858973eb3e1dfc1704db505731861d24178929d731089fda6b45c4acc254cc4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
