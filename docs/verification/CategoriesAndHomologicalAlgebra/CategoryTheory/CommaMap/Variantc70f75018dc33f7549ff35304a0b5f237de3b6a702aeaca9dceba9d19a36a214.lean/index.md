# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMap.Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a0d5b34cc35b612927c3cfcb0772f8d52aaf0f1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a0d5b34cc35b612927c3cfcb0772f8d52aaf0f1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commaMapEquivalenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/declarations/commamapequivalencefunctor--4e03fea297ee60a3ec48cb79.md) | 31 | `declaration-track:4e03fea297ee60a3ec48cb79b74ab3cdf029850f31657637e1bf23f2be2b7a49` |
| 2 | `def` | [commaMapEquivalenceInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/declarations/commamapequivalenceinverse--917c0fbd9605aa16315388e1.md) | 51 | `declaration-track:917c0fbd9605aa16315388e1ac2c738aa90582f56e4bd0a716ab7dc0f3944698` |
| 3 | `def` | [commaMapEquivalenceUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/declarations/commamapequivalenceunitiso--15231f2a27036a8ad450f340.md) | 71 | `declaration-track:15231f2a27036a8ad450f340f7ff2cd89438dc46bbdb859dbbb39ce1a3c98616` |
| 4 | `def` | [commaMapEquivalenceCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/declarations/commamapequivalencecounitiso--51cd95c8b231fefcd8de37b7.md) | 78 | `declaration-track:51cd95c8b231fefcd8de37b7061496ab557c1216ff9d4dc038fe0f9ed2911cd0` |
| 5 | `def` | [commaMapEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommaMap/Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214.lean/declarations/commamapequivalence--1e5560b0c95af8fdcae2b2cd.md) | 85 | `declaration-track:1e5560b0c95af8fdcae2b2cd12a3e68b8a8201423328a00c734bc9ac601bebbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
