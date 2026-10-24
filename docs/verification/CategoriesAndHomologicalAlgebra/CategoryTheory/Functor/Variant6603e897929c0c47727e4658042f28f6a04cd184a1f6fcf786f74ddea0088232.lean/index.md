# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e953a598c0df7f94fbe9e17ea3bccd7044084970",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e953a598c0df7f94fbe9e17ea3bccd7044084970`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Grothendieck` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/functor--1e4a292449fb504b22a29785.md) | 29 | `declaration-track:1e4a292449fb504b22a29785b1d038103a8036877bfa7f1f612c90447469003f` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/functor--780bc96eea490b4fa22b2e22.md) | 42 | `declaration-track:780bc96eea490b4fa22b2e220c2cbfd43c8a2d6dcfdf804422430939db9c72a8` |
| 3 | `def` | [grothendieckPrecompFunctorToComma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/grothendieckprecompfunctortocomma--cf5a5678f228272bc8239684.md) | 54 | `declaration-track:cf5a5678f228272bc8239684c7ea51e3a98e6d402eeaa22afd3b44013379e00b` |
| 4 | `def` | [ιCompGrothendieckPrecompFunctorToCommaCompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/compgrothendieckprecompfunctortocommacompfst--4ec0041a4b17b5f7834158ba.md) | 61 | `declaration-track:4ec0041a4b17b5f7834158ba2295ce9236d5d921c39375aa361b22b638bf094c` |
| 5 | `def` | [commaToGrothendieckPrecompFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/commatogrothendieckprecompfunctor--d5adc2f617808743a81db40b.md) | 69 | `declaration-track:d5adc2f617808743a81db40bff4f7373962817d74f5092527a15393b5760a870` |
| 6 | `def` | [grothendieckPrecompFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/grothendieckprecompfunctorequivalence--5764e172fb365ead4d8e3c4b.md) | 79 | `declaration-track:5764e172fb365ead4d8e3c4b0b18b35ab050e3538c227766eebfbd4b754149ab` |
| 7 | `def` | [grothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/grothendieckproj--4a4d1f5f74ffe0de5bd4c024.md) | 88 | `declaration-track:4a4d1f5f74ffe0de5bd4c024c9e243964cd995af304694eee40963f09832671a` |
| 8 | `def` | [ιCompGrothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/compgrothendieckproj--b12342236e4afda7375040ab.md) | 93 | `declaration-track:b12342236e4afda7375040ab87ad4faf6a7cb269d43415096bbe344b65f36bc3` |
| 9 | `def` | [mapCompιCompGrothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/mapcomp-compgrothendieckproj--15d48470d9ff472fa44f77bf.md) | 100 | `declaration-track:15d48470d9ff472fa44f77bf82af6499c8f1c4b0e4f16b3aa770d01f12d411b4` |
| 10 | `def` | [preFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant6603e897929c0c47727e4658042f28f6a04cd184a1f6fcf786f74ddea0088232.lean/declarations/prefunctor--63e6ae748ed14f0d3bc31515.md) | 108 | `declaration-track:63e6ae748ed14f0d3bc3151564b76897aae480b0910b583b0ee1ae6f7478d2b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
