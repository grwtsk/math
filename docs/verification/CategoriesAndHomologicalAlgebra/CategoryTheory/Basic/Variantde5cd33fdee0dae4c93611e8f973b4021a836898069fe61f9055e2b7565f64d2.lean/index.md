# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bb49658baa6b1266f41f82ef0268064c30d474f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bb49658baa6b1266f41f82ef0268064c30d474f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesHomology_preadditiveCoyonedaObj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean/declarations/preserveshomology-preadditivecoyonedaobj-of-projective--b388defcd4d534f09a2818f8.md) | 29 | `declaration-track:b388defcd4d534f09a2818f85791032d0ab7f027ed884416c193eba782ce2c4b` |
| 2 | `instance` | [preservesFiniteColimits_preadditiveCoyonedaObj_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean/declarations/preservesfinitecolimits-preadditivecoyonedaobj-of-projective--a8e6eae0e6da77d2358e4ff7.md) | 36 | `declaration-track:a8e6eae0e6da77d2358e4ff76e5e266a4a212e7527783a9ddee0fd0f37629956` |
| 3 | `theorem` | [projective_of_preservesFiniteColimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean/declarations/projective-of-preservesfinitecolimits-preadditivecoyonedaobj--154065a32acf6f87fe087dfa.md) | 42 | `result-track:154065a32acf6f87fe087dfa24a06ef8e3819cb349c5cc235475ca4a45174722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
