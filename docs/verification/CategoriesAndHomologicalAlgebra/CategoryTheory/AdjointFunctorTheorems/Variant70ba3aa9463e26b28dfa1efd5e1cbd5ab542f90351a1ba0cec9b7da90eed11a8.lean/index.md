# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdjointFunctorTheorems.Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed1385e643991393eb5b7d5238a672ec4d6b016",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed1385e643991393eb5b7d5238a672ec4d6b016`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Small` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.WeaklyInitial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Comma` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SolutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/solutionsetcondition--12dbeff91b9b0166c80ca2e9.md) | 66 | `declaration-track:12dbeff91b9b0166c80ca2e9e844858aec0eea89db2f96198210a4d83445af8d` |
| 2 | `theorem` | [solutionSetCondition_of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/solutionsetcondition-of-isrightadjoint--3c8f50c1fe110ab01c8a1524.md) | 77 | `result-track:3c8f50c1fe110ab01c8a15244e41ab18b7d9c387e1fc66e71daed9d3f643a711` |
| 3 | `lemma` | [isRightAdjoint_of_preservesLimits_of_solutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/isrightadjoint-of-preserveslimits-of-solutionsetcondition--295a065e1a13141977a2f881.md) | 88 | `result-track:295a065e1a13141977a2f881843e88d798f64c4c786f5439f4366e1a4824157d` |
| 4 | `lemma` | [isRightAdjoint_of_preservesLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/isrightadjoint-of-preserveslimits-of-iscoseparating--69f8cc22f2ee92a71581e2e0.md) | 111 | `result-track:69f8cc22f2ee92a71581e2e01b6e6a561ddd39b5a7ecabdb7a0afaa71b48ccea` |
| 5 | `lemma` | [isLeftAdjoint_of_preservesColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/isleftadjoint-of-preservescolimits-of-isseparating--b4749a82a6db5a53e33e32bc.md) | 121 | `result-track:b4749a82a6db5a53e33e32bc6013554afe08eb03184747d65ccaa5554a426d80` |
| 6 | `theorem` | [hasColimits_of_hasLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/hascolimits-of-haslimits-of-iscoseparating--d71592829cd37e0b031fa819.md) | 134 | `result-track:d71592829cd37e0b031fa819bbc7ba398d0d0d2dbe9ed5c97613fcd55ee5f38c` |
| 7 | `theorem` | [hasLimits_of_hasColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/haslimits-of-hascolimits-of-isseparating--3f80ba2e3b33bdbe755fee61.md) | 142 | `result-track:3f80ba2e3b33bdbe755fee617a3fb52fb4f799a9fedf106818fedd9ba12c86ec` |
| 8 | `theorem` | [hasLimits_of_hasColimits_of_hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/haslimits-of-hascolimits-of-hasseparator--224bcb86fc76d60b6fdd6274.md) | 150 | `result-track:224bcb86fc76d60b6fdd62746bc108a8ba50627ba78299f3f50357f5caefc73e` |
| 9 | `theorem` | [hasColimits_of_hasLimits_of_hasCoseparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant70ba3aa9463e26b28dfa1efd5e1cbd5ab542f90351a1ba0cec9b7da90eed11a8.lean/declarations/hascolimits-of-haslimits-of-hascoseparator--1ac2a0c0a71fe32a96a1cce1.md) | 156 | `result-track:1ac2a0c0a71fe32a96a1cce1959991a7afb79e38371e73e05cf42c4dcfac9702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
