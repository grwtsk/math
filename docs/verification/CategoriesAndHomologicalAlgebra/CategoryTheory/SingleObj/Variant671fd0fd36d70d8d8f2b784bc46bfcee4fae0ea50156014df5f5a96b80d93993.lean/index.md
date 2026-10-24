# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7709718aef61716123e5c825f42259161ea6fdbf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7709718aef61716123e5c825f42259161ea6fdbf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoidalSingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/monoidalsingleobj--019cd863486734785f82895d.md) | 47 | `declaration-track:019cd863486734785f82895d2ba1586edd87c767852d2b7c309db67bdc2e642f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/instance--e72ed98d707f7264e324ecdf.md) | 52 | `declaration-track:e72ed98d707f7264e324ecdfeccd2042d526dfbdbfa281c8c439a0256f38d273` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/instance--464adfc9cfb8d45cdaf9607e.md) | 58 | `declaration-track:464adfc9cfb8d45cdaf9607e99c94e829cdf24da4cde36750f9caa182e98c0ba` |
| 4 | `def` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/star--15ba0fb6a8c008762dabdb32.md) | 73 | `declaration-track:15ba0fb6a8c008762dabdb3269a4bff0d10880a81121ff91dcd69cccab7c24c0` |
| 5 | `def` | [endMonoidalStarFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/endmonoidalstarfunctor--231ba3624f08eafbcbc37300.md) | 83 | `declaration-track:231ba3624f08eafbcbc373004f4aaf2b25786176e76c331304826f368c1ce6fd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/instance--553a14ec512acc4e989e864f.md) | 87 | `declaration-track:553a14ec512acc4e989e864ff7b7b3b4adf25efe07be5339ae1c417a4893a02e` |
| 7 | `def` | [endMonoidalStarFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/endmonoidalstarfunctorequivalence--d5bb9223dac6de709c836dde.md) | 97 | `declaration-track:d5bb9223dac6de709c836dde612034c3c0d111d2343d3a690d35f2bc452da57d` |
| 8 | `instance` | [endMonoidalStarFunctor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant671fd0fd36d70d8d8f2b784bc46bfcee4fae0ea50156014df5f5a96b80d93993.lean/declarations/endmonoidalstarfunctor-isequivalence--89a7bd9a67347274b0e9f8d2.md) | 106 | `declaration-track:89a7bd9a67347274b0e9f8d2c1c9157782a237c6ae09e62e70ed007b7fc0dec8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
