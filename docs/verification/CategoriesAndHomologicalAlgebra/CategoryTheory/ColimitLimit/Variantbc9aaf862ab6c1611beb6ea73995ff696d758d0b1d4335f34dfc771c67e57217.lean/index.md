# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ColimitLimit.Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f43ea0b5c843379c7ccd991814c1fb7b62b7734",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f43ea0b5c843379c7ccd991814c1fb7b62b7734`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_left_eq_curry_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/map-id-left-eq-curry-map--54e7482c9b5fa0a25e6e2827.md) | 47 | `result-track:54e7482c9b5fa0a25e6e2827ddd93f673c0a11cfb0f8823cce1fe31d5f7e9b09` |
| 2 | `theorem` | [map_id_right_eq_curry_swap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/map-id-right-eq-curry-swap-map--dff85d03176c67247bb9fd95.md) | 51 | `result-track:dff85d03176c67247bb9fd95973c73c470b5796bc4281cc12448af41b0881eb1` |
| 3 | `def` | [colimitLimitToLimitColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/colimitlimittolimitcolimit--cbf20f57b08080db9f2a8532.md) | 61 | `declaration-track:cbf20f57b08080db9f2a8532806f7454ea7aec1fdd5cc5d32af034071572db5f` |
| 4 | `theorem` | [ι_colimitLimitToLimitColimit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/colimitlimittolimitcolimit--516bfa23d23120b94ab6897f.md) | 93 | `result-track:516bfa23d23120b94ab6897f2a86a02f478b721d9fd10ac96217c1e7fafd6878` |
| 5 | `theorem` | [ι_colimitLimitToLimitColimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/colimitlimittolimitcolimit-apply--8078a3f17bb903ef4800f0f8.md) | 100 | `result-track:8078a3f17bb903ef4800f0f8caf8a7a312de6b6019eb96449e55cd300bb5f218` |
| 6 | `def` | [colimitLimitToLimitColimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variantbc9aaf862ab6c1611beb6ea73995ff696d758d0b1d4335f34dfc771c67e57217.lean/declarations/colimitlimittolimitcolimitcone--2fa222c7ea553df29373adac.md) | 112 | `declaration-track:2fa222c7ea553df29373adac2f641237d131578ede278ce34ead750cb6b093d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
