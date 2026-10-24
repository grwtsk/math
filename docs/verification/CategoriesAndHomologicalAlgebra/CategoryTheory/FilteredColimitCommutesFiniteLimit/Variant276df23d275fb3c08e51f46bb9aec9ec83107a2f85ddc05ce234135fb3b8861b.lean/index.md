# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimitCommutesFiniteLimit.Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be2b974c6b50017a2e7085113a70b196a6378ff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be2b974c6b50017a2e7085113a70b196a6378ff`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ColimitLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Bifunctor` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [comp_lim_obj_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/comp-lim-obj-ext--b0e2ff1c29395b693ab4ec0a.md) | 55 | `result-track:b0e2ff1c29395b693ab4ec0a55ecd21ff547f7a3a2086e9313ef3287c16dd57c` |
| 2 | `theorem` | [colimitLimitToLimitColimit_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimittolimitcolimit-injective--88a7f45ad0e58dcc924b4479.md) | 77 | `result-track:88a7f45ad0e58dcc924b4479270dd674f42455d810439b9f2ef46e7e5600dfed` |
| 3 | `theorem` | [colimitLimitToLimitColimit_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimittolimitcolimit-surjective--29dea4933c6169ac58e95d55.md) | 168 | `result-track:29dea4933c6169ac58e95d555a6810ce959e784fde96fe835be412c9ccb0ddb7` |
| 4 | `instance` | [colimitLimitToLimitColimit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimittolimitcolimit-isiso--53a6b4852398466666245e07.md) | 331 | `declaration-track:53a6b4852398466666245e07c7c038e130d26af0f4e9cb2853eb20659a0a4dfa` |
| 5 | `instance` | [colimitLimitToLimitColimitCone_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimittolimitcolimitcone-iso--8d959473ea781acc17594fcf.md) | 335 | `declaration-track:8d959473ea781acc17594fcf2d76428648220133ea7a96d8510b8b43890d31c3` |
| 6 | `instance` | [filtered_colim_preservesFiniteLimits_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/filtered-colim-preservesfinitelimits-of-types--aee990736281789a35c492eb.md) | 344 | `declaration-track:aee990736281789a35c492eba58346b4ff73332e78838820f5b61b6cf08621c4` |
| 7 | `instance` | [filtered_colim_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/filtered-colim-preservesfinitelimits--4470d50d98704f439e18f2df.md) | 362 | `declaration-track:4470d50d98704f439e18f2df195165cd6df321503c10d6e2a27077d0ba5323c2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/instance--fb0471df8026e7c6c2f8a22a.md) | 372 | `declaration-track:fb0471df8026e7c6c2f8a22a4e0116fd6aef9c30c3c28dbbb1b5bdccf3bc27cb` |
| 9 | `def` | [colimitLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimitiso--6c48642c0a656439d019f611.md) | 390 | `declaration-track:6c48642c0a656439d019f611477b372503aea43b0d4ada52cfc9246d4ec9c45f` |
| 10 | `theorem` | [ι_colimitLimitIso_limit_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/declarations/colimitlimitiso-limit--36691d7a43838a32ff846c35.md) | 395 | `result-track:36691d7a43838a32ff846c35d541b60e770a1edff33919a453beb6202ea6851c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
