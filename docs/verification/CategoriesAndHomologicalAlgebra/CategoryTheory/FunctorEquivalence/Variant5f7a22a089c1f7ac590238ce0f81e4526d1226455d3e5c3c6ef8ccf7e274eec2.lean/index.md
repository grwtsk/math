# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorEquivalence.Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b7b06d266ffb0a417e6e6e9b3dbe3fca77acea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b7b06d266ffb0a417e6e6e9b3dbe3fca77acea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/declarations/functor--6ee4ad9cc93df9e02b65f68b.md) | 31 | `declaration-track:6ee4ad9cc93df9e02b65f68b791006385cd4e9d7dab36040485da44d6d9598e0` |
| 2 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/declarations/inverse--0ac0fad6aec90fd56750df67.md) | 40 | `declaration-track:0ac0fad6aec90fd56750df678e883ab8326992d1abaef77a338f203e4aad6cdd` |
| 3 | `def` | [unitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/declarations/unitiso--ddd815ef0b4669696a854cf4.md) | 51 | `declaration-track:ddd815ef0b4669696a854cf4aff568a169e68e5b79f66f00ee3c61a05c852ae6` |
| 4 | `def` | [counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/declarations/counitiso--5b2afdba2a257623c0b0c73d.md) | 61 | `declaration-track:5b2afdba2a257623c0b0c73dba231f802f95462f0825903d8986864a66aa1c5b` |
| 5 | `def` | [functorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorEquivalence/Variant5f7a22a089c1f7ac590238ce0f81e4526d1226455d3e5c3c6ef8ccf7e274eec2.lean/declarations/functorequivalence--b0e0b642deaf3c1ce758911f.md) | 70 | `declaration-track:b0e0b642deaf3c1ce758911fea7ed77bbb13a72c1d38be8388bc56902141bc03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
