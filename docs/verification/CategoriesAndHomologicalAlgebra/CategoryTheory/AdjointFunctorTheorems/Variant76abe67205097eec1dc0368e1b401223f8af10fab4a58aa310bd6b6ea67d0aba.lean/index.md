# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AdjointFunctorTheorems.Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70462aa2882952ea4c42df9daf82f58af3de0ba4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70462aa2882952ea4c42df9daf82f58af3de0ba4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Small` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.WeaklyInitial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Comma` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SolutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/solutionsetcondition--a53b2ada959b52e03f553366.md) | 58 | `declaration-track:a53b2ada959b52e03f553366eeb929429c615b7007f99b4aef3eabafac38f94b` |
| 2 | `theorem` | [solutionSetCondition_of_isRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/solutionsetcondition-of-isrightadjoint--0fc6e91b8920f680705a9230.md) | 69 | `result-track:0fc6e91b8920f680705a92307d48d2e3eb9e3e09da13498016f9eb2975d507af` |
| 3 | `lemma` | [isRightAdjoint_of_preservesLimits_of_solutionSetCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/isrightadjoint-of-preserveslimits-of-solutionsetcondition--5e740e9d84d8808df7074af3.md) | 80 | `result-track:5e740e9d84d8808df7074af3c62ba0e77c8f9130a83cf21c5a44844531b2d21f` |
| 4 | `lemma` | [isRightAdjoint_of_preservesLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/isrightadjoint-of-preserveslimits-of-iscoseparating--c39a3defcd92459e7a970159.md) | 103 | `result-track:c39a3defcd92459e7a9701591b8152f3a09bab0bf297fc19648bce9bc5f2f9f3` |
| 5 | `lemma` | [isLeftAdjoint_of_preservesColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/isleftadjoint-of-preservescolimits-of-isseparating--3c0663e6f0263d1c7e63699b.md) | 113 | `result-track:3c0663e6f0263d1c7e63699b98d9f91a21f8a9c067c57e95f8901656bb1090ff` |
| 6 | `theorem` | [hasColimits_of_hasLimits_of_isCoseparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/hascolimits-of-haslimits-of-iscoseparating--a6bcccba6a1cc17c29bdec67.md) | 126 | `result-track:a6bcccba6a1cc17c29bdec673a50ad8745786b0d6ed065ed6e9530b68068d295` |
| 7 | `theorem` | [hasLimits_of_hasColimits_of_isSeparating](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/haslimits-of-hascolimits-of-isseparating--df41f61b07fad840d0ff01f2.md) | 134 | `result-track:df41f61b07fad840d0ff01f20a7351563fab7fefbcb405e7d7730842795e5341` |
| 8 | `theorem` | [hasLimits_of_hasColimits_of_hasSeparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/haslimits-of-hascolimits-of-hasseparator--919707c19ae3007e51db0779.md) | 142 | `result-track:919707c19ae3007e51db07796e71a7681f3b9b7191c8e39ba1ee00a8441cc26d` |
| 9 | `theorem` | [hasColimits_of_hasLimits_of_hasCoseparator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AdjointFunctorTheorems/Variant76abe67205097eec1dc0368e1b401223f8af10fab4a58aa310bd6b6ea67d0aba.lean/declarations/hascolimits-of-haslimits-of-hascoseparator--cc403a77cbc3ebeed2d36ac2.md) | 148 | `result-track:cc403a77cbc3ebeed2d36ac293c49822de2905c5293f6d679c58891852735c0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
