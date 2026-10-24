# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14e5425d98d754502401943b6823f68a5fd3817",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14e5425d98d754502401943b6823f68a5fd3817`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Rat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/functor-linear--a0a1c003237cf3a56fdb5b8b.md) | 40 | `declaration-track:a0a1c003237cf3a56fdb5b8bfe3332896b4db01894d1efb078bb59eb09415783` |
| 2 | `lemma` | [Functor.linear_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/functor-linear-iff--e6cc2d53e38dd9d854a92b0a.md) | 44 | `result-track:e6cc2d53e38dd9d854a92b0af1b69b5e1a328d0d5d60e5f8cc7cad6a0e5a8b23` |
| 3 | `theorem` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/map-smul--6203b4f949186409db1eafda.md) | 62 | `result-track:6203b4f949186409db1eafda0637efafcad0ee47652ed9e87ac4030871313544` |
| 4 | `theorem` | [map_units_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/map-units-smul--41fa3676365b5888abf92459.md) | 66 | `result-track:41fa3676365b5888abf924591d061c90a287c58dc60988b0dcbfd196a5eedf89` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/instance--5828e1ecb0f7abaa59173758.md) | 69 | `declaration-track:5828e1ecb0f7abaa59173758d7c68b0e28c6ba50e28e11178d0c868260d43537` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/instance--efb4e4f44d22b50a41a4f495.md) | 71 | `declaration-track:efb4e4f44d22b50a41a4f495826c27aaf09569b5582a4a06bd4967c6efb1d15d` |
| 7 | `def` | [mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/maplinearmap--7bc894d5ebf29d49431df605.md) | 78 | `declaration-track:7bc894d5ebf29d49431df605721bfd2a5f8c4ea4bb76ff54911277431d0f8e0f` |
| 8 | `theorem` | [coe_mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/coe-maplinearmap--2d7c892a05f94f5161251311.md) | 81 | `result-track:2d7c892a05f94f5161251311a5d80add9b53fa7cc7cbfe9c4521e9f02ac4a527` |
| 9 | `lemma` | [linear_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/linear-of-iso--91d1c3033696f86506dfa84a.md) | 86 | `result-track:91d1c3033696f86506dfa84acda05aaf715d7b93f87210bda61004e4226a3b4d` |
| 10 | `instance` | [inducedFunctorLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/inducedfunctorlinear--568d3e208c2594349bde3508.md) | 94 | `declaration-track:568d3e208c2594349bde35087f4d563818562539bb33ec1dbba2d4381dd8ead7` |
| 11 | `instance` | [fullSubcategoryInclusionLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/fullsubcategoryinclusionlinear--954995781deaa394744ea1f4.md) | 98 | `declaration-track:954995781deaa394744ea1f463deff669b6866b9636f1b36c36c7074ee1fc844` |
| 12 | `instance` | [natLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/natlinear--7f47fabc384306c59d7a9db1.md) | 105 | `declaration-track:7f47fabc384306c59d7a9db1c333af2be34821a9d54d4dd2c8dd9c9cf779aa97` |
| 13 | `instance` | [intLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/intlinear--f2cc5ba4531c5a093d880834.md) | 108 | `declaration-track:f2cc5ba4531c5a093d8808340a8ae5bfe3d323cd091dc8501b446604b16dfb6b` |
| 14 | `instance` | [ratLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/ratlinear--f9a71b14e6272bb906c074aa.md) | 113 | `declaration-track:f9a71b14e6272bb906c074aaa3ac0c395a103992d9b9eb55e8a3376001c11f58` |
| 15 | `instance` | [inverseLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant706b9b09df5bf0b4d3575895d32f6a6845083284bdd4edec5e01d30499b023cc.lean/declarations/inverselinear--e5811418dd54c45e43817ce5.md) | 122 | `declaration-track:e5811418dd54c45e43817ce514ba646651be372c1a6ada1d50de12578ebc70ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
