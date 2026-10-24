# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73dd43d154009242e5f51e88a5813022bfe4d0a7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73dd43d154009242e5f51e88a5813022bfe4d0a7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Yoneda` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsFiltered.iff_nonempty_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/isfiltered-iff-nonempty-limit--a8608e86214dfb53bcaec13d.md) | 46 | `result-track:a8608e86214dfb53bcaec13d8691f2c8daa5144a28b5c666268d5cf5a4ccad95` |
| 2 | `theorem` | [IsCofiltered.iff_nonempty_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/iscofiltered-iff-nonempty-limit--3bb9b10009972189f4879ac2.md) | 58 | `result-track:3bb9b10009972189f4879ac294554aa596b48a7772e418229e0c420209364620` |
| 3 | `class` | [HasCofilteredLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hascofilteredlimitsofsize--8226d3485aa8a1531f1810df.md) | 78 | `declaration-track:8226d3485aa8a1531f1810df89ea32d252afbb5006a0d6401b712add627ced05` |
| 4 | `class` | [HasFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hasfilteredcolimitsofsize--5d9d2785984df45df4b0a9aa.md) | 84 | `declaration-track:5d9d2785984df45df4b0a9aaa5ccb634c706c3906a452bbfeaea63e66a4946f8` |
| 5 | `abbrev` | [HasCofilteredLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hascofilteredlimits--40766f32ded677f4304483d3.md) | 89 | `declaration-track:40766f32ded677f4304483d3408136fd8bb304f08506ac033a559138dc0c4c15` |
| 6 | `abbrev` | [HasFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hasfilteredcolimits--b1f0ae2897ca2bfaae5e8686.md) | 92 | `declaration-track:b1f0ae2897ca2bfaae5e86868ac22abd69ba14a9751f4a67b5e62286f45a5831` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/instance--00ed2948ca059470b7e23ca4.md) | 96 | `declaration-track:00ed2948ca059470b7e23ca46ca3705d1a3be1e38fda9350cb48ba0c938a7c48` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/instance--00007ace58989744c9949cfe.md) | 100 | `declaration-track:00007ace58989744c9949cfe6b8032ce199ae2096ead7e74ecfe466045279974` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/instance--114bc2bbcc126d7f541a882b.md) | 104 | `declaration-track:114bc2bbcc126d7f541a882b2aa8a261bfbb7faea6eb159acaf151e7eb63035d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/instance--4ae3fce38745f0bd484c9e73.md) | 109 | `declaration-track:4ae3fce38745f0bd484c9e73c5ad3a6f34994ae23fdae542e3525ee5b85e525b` |
| 11 | `lemma` | [hasCofilteredLimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hascofilteredlimitsofsize-of-univle--953a61446c31a486b57ee581.md) | 114 | `result-track:953a61446c31a486b57ee581a95c49fcd3347916f4e0e7e2614ae6b7c0ba08a3` |
| 12 | `lemma` | [hasCofilteredLimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hascofilteredlimitsofsize-shrink--019e9bffec34e845805c0d20.md) | 123 | `result-track:019e9bffec34e845805c0d2025be282f8dd22820a4723e9be153354a7e0ea489` |
| 13 | `lemma` | [hasFilteredColimitsOfSize_of_univLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hasfilteredcolimitsofsize-of-univle--ad0af817df7b2d6a70c1a992.md) | 127 | `result-track:ad0af817df7b2d6a70c1a9926e5fd8d2535a0105c68886ac6248688897f02b5c` |
| 14 | `lemma` | [hasFilteredColimitsOfSize_shrink](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantadfabc493f3f5fa8b66525482388f38ae74262bb5d5fce7ac42aa6690852fa9a.lean/declarations/hasfilteredcolimitsofsize-shrink--5bf8a413c81dc895adcc0bb3.md) | 136 | `result-track:5bf8a413c81dc895adcc0bb39bc216c3c753686e6e40c3cab7391e98a9cb1d14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
