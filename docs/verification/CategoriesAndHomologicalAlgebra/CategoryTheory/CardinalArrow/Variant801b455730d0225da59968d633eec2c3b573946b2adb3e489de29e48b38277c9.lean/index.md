# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CardinalArrow.Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb459b8a6f8622777f9f0d4c471cb750eeacaf74",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb459b8a6f8622777f9f0d4c471cb750eeacaf74`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.HasCardinalLT` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Arrow.finite_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/arrow-finite-iff--d438f634917065c5bf24ae0e.md) | 25 | `result-track:d438f634917065c5bf24ae0e2bfdce02bad5d72c606b95f969fda8c4ef6ba4ce` |
| 2 | `instance` | [Arrow.finite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/arrow-finite--515507bc1ed397e5d41ee457.md) | 42 | `declaration-track:515507bc1ed397e5d41ee45765e9e3d1c7e9428439b5a410e024da2d97a040c5` |
| 3 | `def` | [Arrow.opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/arrow-opequiv--1fb9074fd3bd7c246927faea.md) | 48 | `declaration-track:1fb9074fd3bd7c246927faeaad0c16ffb2a0f60ce5c5668cec8aad7488aa9227` |
| 4 | `lemma` | [hasCardinalLT_arrow_op_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/hascardinallt-arrow-op-iff--ffce9c0b5677244fa0794ea5.md) | 55 | `result-track:ffce9c0b5677244fa0794ea569bc61c0685be56c4afb1700d8f054b239c8ba5c` |
| 5 | `lemma` | [hasCardinalLT_arrow_discrete_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/hascardinallt-arrow-discrete-iff--7784dd5d85da3501e265eb4b.md) | 60 | `result-track:7784dd5d85da3501e265eb4b1e9dee6e17433f3fd7673848e8b08af243be0dc0` |
| 6 | `lemma` | [small_of_small_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/small-of-small-arrow--713db5dd4d5d03a669611a16.md) | 64 | `result-track:713db5dd4d5d03a669611a16dedea28fa51a0f29c90c0729bf2be6a8ba161d8e` |
| 7 | `lemma` | [locallySmall_of_small_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/locallysmall-of-small-arrow--2c6cfe13c39f9eaddf45163a.md) | 68 | `result-track:2c6cfe13c39f9eaddf45163aaa7d16d663de931285658159ad4055a7cbdc07e7` |
| 8 | `def` | [Arrow.shrinkHomsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/arrow-shrinkhomsequiv--dc18cc146779c4a96e96acc0.md) | 76 | `declaration-track:dc18cc146779c4a96e96acc0a7f0dab222fc836838aaadd10b49c05097af3098` |
| 9 | `def` | [Arrow.shrinkEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/arrow-shrinkequiv--1593920be02af8d297dd0b8a.md) | 84 | `declaration-track:1593920be02af8d297dd0b8a8f898b912a59533dfb4f951097a36385b909b07b` |
| 10 | `lemma` | [hasCardinalLT_arrow_shrinkHoms_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/hascardinallt-arrow-shrinkhoms-iff--1e53d457df48d9f2555be506.md) | 94 | `result-track:1e53d457df48d9f2555be506cc5f1e0326299b20d02c29bcbcc53ef800b690af` |
| 11 | `lemma` | [hasCardinalLT_arrow_shrink_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/hascardinallt-arrow-shrink-iff--307f8fab6c30f679f736c4e6.md) | 100 | `result-track:307f8fab6c30f679f736c4e69f5882fc68536b201e63717ea4cbca3770ba55ae` |
| 12 | `lemma` | [hasCardinalLT_of_hasCardinalLT_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variant801b455730d0225da59968d633eec2c3b573946b2adb3e489de29e48b38277c9.lean/declarations/hascardinallt-of-hascardinallt-arrow--0455d2e71ed76958331795c4.md) | 105 | `result-track:0455d2e71ed76958331795c469ef5735682fde564c2d04020e72d0c77c4d0ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
