# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colimits.Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1071865925ffbb6eb2220f24ced0de2846938a6c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1071865925ffbb6eb2220f24ced0de2846938a6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/prequotient--7c81c4a460a46b3011cdceae.md) | 66 | `declaration-track:7c81c4a460a46b3011cdceaec0b517487be77a5cca7b8bf8ebb1fa7d3df3fb43` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/instance--3e1c32e64e74d4b8f286b035.md) | 73 | `declaration-track:3e1c32e64e74d4b8f286b035868b29739ec65953035a116020b147216e03ab82` |
| 3 | `inductive` | [Relation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/relation--865ec2034e7b880bc8b88b03.md) | 82 | `declaration-track:865ec2034e7b880bc8b88b03df64f16350263c0260fce550b75c66f85a2ed87b` |
| 4 | `def` | [colimitSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/colimitsetoid--2f9fd18ebc363054f5c3e7d4.md) | 105 | `declaration-track:2f9fd18ebc363054f5c3e7d46cbe572e1eb54f48605c5f0565bd023a2b24d561` |
| 5 | `def` | [ColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/colimittype--8c81ff6bed87db8edbbd3802.md) | 115 | `declaration-track:8c81ff6bed87db8edbbd380292846102b2696fb26977dbb73c8abba32445c890` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/instance--ed68a7c61f2de09bac1cb883.md) | 120 | `declaration-track:ed68a7c61f2de09bac1cb883183684da8f53457f29b6cee01442415260639664` |
| 7 | `instance` | [monoidColimitType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/monoidcolimittype--188cae52330443709e0d3af5.md) | 124 | `declaration-track:188cae52330443709e0d3af5a91fcb57f53e72079a08e58903c02c2a2297cc30` |
| 8 | `theorem` | [quot_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/quot-one--65c2fd74118a744602b712be.md) | 136 | `result-track:65c2fd74118a744602b712be3e9978007ab90a76e06321a09bf193b4bef43692` |
| 9 | `theorem` | [quot_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/quot-mul--cd499884c9d1655a2acd42d6.md) | 142 | `result-track:cd499884c9d1655a2acd42d681d10f94e402537440c3100322b4c825da5d5eac` |
| 10 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/colimit--3179260b9d619d66d92c8931.md) | 150 | `declaration-track:3179260b9d619d66d92c89316c26266028740b54d92de818aa7f1841c1741564` |
| 11 | `def` | [coconeFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/coconefun--d0f452fa16748dd1b0d45992.md) | 156 | `declaration-track:d0f452fa16748dd1b0d459921da3c782c62502a2e04df90ab8ecd74630121b32` |
| 12 | `def` | [coconeMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/coconemorphism--945c9abf21f5ecc256e007e2.md) | 162 | `declaration-track:945c9abf21f5ecc256e007e29fa5a965ae33af5a1a2537e0d771b9a30b6e01fa` |
| 13 | `theorem` | [cocone_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/cocone-naturality--4d98d282f8d591d8bab0b98e.md) | 170 | `result-track:4d98d282f8d591d8bab0b98eb3cd036e5f6853edb6d795f49d10ea401efe434d` |
| 14 | `theorem` | [cocone_naturality_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/cocone-naturality-components--c29c677d73621c296de0fdcb.md) | 179 | `result-track:c29c677d73621c296de0fdcb465f75caf5de984d19b18bf32c34cb4eaacf8e8d` |
| 15 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/colimitcocone--2e50f8a4d5eb10513e901bc4.md) | 187 | `declaration-track:2e50f8a4d5eb10513e901bc4e88d579108dc3819ae1dcd8f650b25ff47500010` |
| 16 | `def` | [descFunLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/descfunlift--6db2000fc1428442610704cb.md) | 195 | `declaration-track:6db2000fc1428442610704cb2e9ae05ee08e8fd17e181bf693c1bb90a5eee1e8` |
| 17 | `def` | [descFun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/descfun--d1683afa02ee5a157aa5734a.md) | 203 | `declaration-track:d1683afa02ee5a157aa5734a38d4166250904813340f5b6eca5e6f4b31b2250c` |
| 18 | `def` | [descMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/descmorphism--fec1afcbdb05dd1d53876b3a.md) | 224 | `declaration-track:fec1afcbdb05dd1d53876b3a7bcf8398f2cbbe24b34b6e7d022e7d3dfd1e6968` |
| 19 | `def` | [colimitIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/colimitiscolimit--75b7133cfc070c215dbb3306.md) | 237 | `declaration-track:75b7133cfc070c215dbb33067bbb3f35278722a2a4ac59286018545c9bab7d6c` |
| 20 | `instance` | [hasColimits_monCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean/declarations/hascolimits-moncat--a4c3191ef5ca5059c1b13f63.md) | 254 | `declaration-track:a4c3191ef5ca5059c1b13f63f62712c522024743bd568bb6f1cd540cfc751c53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
