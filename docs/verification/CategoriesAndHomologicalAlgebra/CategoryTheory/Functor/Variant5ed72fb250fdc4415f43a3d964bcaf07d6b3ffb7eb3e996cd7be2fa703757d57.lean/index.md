# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48cc98fd5b95d192281279609dce1f8fde6e6b41",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48cc98fd5b95d192281279609dce1f8fde6e6b41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Grothendieck` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/functor--da048d40a65fdc16c6ef1bce.md) | 37 | `declaration-track:da048d40a65fdc16c6ef1bce990dbc655599a6b3037633d6b8c72c8c01121941` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/functor--7f7e88065d78ae53aef15657.md) | 50 | `declaration-track:7f7e88065d78ae53aef1565791ba57c5594043cc859d53aa9260384deae5f10c` |
| 3 | `def` | [grothendieckPrecompFunctorToComma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/grothendieckprecompfunctortocomma--7284ceadd10e4031c2c32c8c.md) | 62 | `declaration-track:7284ceadd10e4031c2c32c8c042d8c91108d3a212d3b4fc75b44dfeed4800173` |
| 4 | `def` | [ιCompGrothendieckPrecompFunctorToCommaCompFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/compgrothendieckprecompfunctortocommacompfst--5bc955f150f232b944ca0a7e.md) | 69 | `declaration-track:5bc955f150f232b944ca0a7ee49d9f1d0115a3d66d738bafeeb60e2fe3e51f4a` |
| 5 | `def` | [commaToGrothendieckPrecompFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/commatogrothendieckprecompfunctor--888143ed9193079650506cfa.md) | 77 | `declaration-track:888143ed9193079650506cfad59221c7232907ed9735e4134621574e6d9b26b6` |
| 6 | `def` | [grothendieckPrecompFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/grothendieckprecompfunctorequivalence--d5fca9284498164e39bf77fe.md) | 87 | `declaration-track:d5fca9284498164e39bf77feb6e6db6157bf94a9be5e3aa43ed579f342dd5f6c` |
| 7 | `def` | [grothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/grothendieckproj--c815f2d5d3b4ee94dc1f9de8.md) | 96 | `declaration-track:c815f2d5d3b4ee94dc1f9de85f5b1599615d475ad29b38ed2121f49b2ee9d69a` |
| 8 | `def` | [ιCompGrothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/compgrothendieckproj--17a6ab7d10ff1e4804608074.md) | 101 | `declaration-track:17a6ab7d10ff1e4804608074f1b4d15f07dc3933d3506dd36ad8a6186bff33af` |
| 9 | `def` | [mapCompιCompGrothendieckProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/mapcomp-compgrothendieckproj--8e1587696f52ef4a8b2d69cd.md) | 108 | `declaration-track:8e1587696f52ef4a8b2d69cdeb61681b3a4c7c9c5faa8e984929f64158e0d967` |
| 10 | `def` | [preFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5ed72fb250fdc4415f43a3d964bcaf07d6b3ffb7eb3e996cd7be2fa703757d57.lean/declarations/prefunctor--598da966e2dbdade96268c24.md) | 116 | `declaration-track:598da966e2dbdade96268c2458baa1eee9dd63f289cf97285274e8f4fe3622fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
