# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf476435529dadbdbd60209c6a62f0421c8bbcc7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf476435529dadbdbd60209c6a62f0421c8bbcc7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/declarations/functor--f9b2830933cb975f4fee1ac0.md) | 39 | `declaration-track:f9b2830933cb975f4fee1ac01acce1f051915b232f8230bfe4a5d4f89874c867` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/declarations/inverse--0b03ceab7f5f5d6c62c9a758.md) | 48 | `declaration-track:0b03ceab7f5f5d6c62c9a758cea7a12bc6282c68b4213b829add54864d9d0090` |
| 3 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/declarations/unitiso--18b4f39f478808655089d36f.md) | 59 | `declaration-track:18b4f39f478808655089d36f369d1a7252cfe1046f32b68a9081a95ea5d88225` |
| 4 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/declarations/counitiso--b5eb64bc03e505a32926b47e.md) | 69 | `declaration-track:b5eb64bc03e505a32926b47ee0e0f4252929ba1ff6f32a72d83abd5489b771d8` |
| 5 | `def` | [functorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant3c2010e61b293e8263f5df21f3069e09f0bf9ca41b11bacc595c9409b00b9a84.lean/declarations/functorequivalence--f322da4b5d98fac924ac4204.md) | 78 | `declaration-track:f322da4b5d98fac924ac420454c8a2624872d405c47ab36f5bb25a0f6af08d55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
