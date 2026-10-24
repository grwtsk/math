# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9445f7de8e6c25489b9c57d04ad0b415ba19f0a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9445f7de8e6c25489b9c57d04ad0b415ba19f0a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/dial--0c99d95fbd48e5b95ea920fd.md) | 53 | `declaration-track:0c99d95fbd48e5b95ea920fd8cd50a8e637ea759bea4b8c63eec513bc5fc04f4` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/hom--b8660e90ad732ad7eaf878e3.md) | 69 | `declaration-track:b8660e90ad732ad7eaf878e311d81201e29f16816638e9caa48cc7886985ada8` |
| 3 | `theorem` | [comp_le_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/comp-le-lemma--039c4b3f8f877a3fc7ea7f4d.md) | 79 | `result-track:039c4b3f8f877a3fc7ea7f4db57b651c8aaef96c40f95ff2ee7c5d5ae73fa9f1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/instance--14e19c76cf0621dff03ba518.md) | 88 | `declaration-track:14e19c76cf0621dff03ba518f5af2bf323a0e82d1974df9bb4fd47def49d41a3` |
| 5 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/hom-ext--bc56ab4fa66a02dfb5a8332d.md) | 105 | `result-track:bc56ab4fa66a02dfb5a8332d0d2d5caf69a5ecb2bdcb80dd515c712f9cbba863` |
| 6 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantab583c581404713e25e29673796a9526977ddb5c0a784ad282ba7899f9255933.lean/declarations/isomk--9a9e1094498ddedb4f6f792a.md) | 112 | `declaration-track:9a9e1094498ddedb4f6f792afdbf2d80143045bf0b5a11fe70df6abf76c60b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
