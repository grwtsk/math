# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8676ed17818496ddf33efce95b3a0d7b428b1e56",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8676ed17818496ddf33efce95b3a0d7b428b1e56`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoidalSingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/monoidalsingleobj--ab178cc0468b280472cc6cfd.md) | 39 | `declaration-track:ab178cc0468b280472cc6cfd9bf91a9bf567442364bd8192aca0fe345cb910c8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/instance--f3679c8f8059998a84c22c36.md) | 44 | `declaration-track:f3679c8f8059998a84c22c36b0adcfdc1f324a92c1ab1e9ae2a752cc65fde877` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/instance--28dca6f829ed8d653dfa9627.md) | 50 | `declaration-track:28dca6f829ed8d653dfa962729ffe1699a6b3e9229458e1e75fde60bbda27667` |
| 4 | `def` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/star--261d7e1768c0981fd73aea86.md) | 65 | `declaration-track:261d7e1768c0981fd73aea869872e8e5da704b28717f8e1ffc80f985d30939b1` |
| 5 | `def` | [endMonoidalStarFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/endmonoidalstarfunctor--45ee1919cc466b4b8af09080.md) | 75 | `declaration-track:45ee1919cc466b4b8af090804364bcfdbc1e2e5570abdc148d825c8f1395e648` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/instance--af684bd3530c48579a5c7453.md) | 79 | `declaration-track:af684bd3530c48579a5c7453e4d2cd93635bdf9b0ea6bbc6d1fd8fddfee68ce6` |
| 7 | `def` | [endMonoidalStarFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/endmonoidalstarfunctorequivalence--132c82298a763c9bdc2fe67d.md) | 89 | `declaration-track:132c82298a763c9bdc2fe67da00efc505c2c78ecc20be72fe597aa4b18186164` |
| 8 | `instance` | [endMonoidalStarFunctor_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant6f2b6b1ecb28640389dec8ca6635a5c08d10966f63a2d0e5c2f3085c1ac71401.lean/declarations/endmonoidalstarfunctor-isequivalence--3a572a5ced6bd0515a3e09a4.md) | 98 | `declaration-track:3a572a5ced6bd0515a3e09a46d11569edac548f067c6b13bca8ba0790866cde4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
