# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Finite.Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff69b4814becff0cd4129aa8cb24b14140860b66",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff69b4814becff0cd4129aa8cb24b14140860b66`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Filtered` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Functor.IsFinitelyAccessible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/functor-isfinitelyaccessible--33dd714377c1fdeba3876a75.md) | 40 | `declaration-track:33dd714377c1fdeba3876a75637be607635c2bea8b4a206c3c196102590f21b9` |
| 2 | `lemma` | [Functor.IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/functor-isfinitelyaccessible-iff-preservesfilteredcolimitsofsize--c8cddfdc6c3991af7475cdea.md) | 42 | `result-track:c8cddfdc6c3991af7475cdea165641bfe76bcac8ae9c5a05e60f6d09f6d02a66` |
| 3 | `lemma` | [Functor.isFinitelyAccessible_iff_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/functor-isfinitelyaccessible-iff-preservesfilteredcolimits--ac5348a86b594b47f97780bc.md) | 48 | `result-track:ac5348a86b594b47f97780bc748eb1cde52ad1658106f9da1ce39cd3b12e9ce4` |
| 4 | `abbrev` | [IsFinitelyPresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/isfinitelypresentable--ebd100d73f88fba333ce2af6.md) | 53 | `declaration-track:ebd100d73f88fba333ce2af60251d58fca28215d3fd7e45709585ca4c0bb3460` |
| 5 | `lemma` | [isFinitelyPresentable_iff_preservesFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/isfinitelypresentable-iff-preservesfilteredcolimitsofsize--00a27e462033c58881793017.md) | 56 | `result-track:00a27e462033c58881793017830cd3ed3133453b2f741dd3d7949d902094ea66` |
| 6 | `lemma` | [isFinitelyPresentable_iff_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/isfinitelypresentable-iff-preservesfilteredcolimits--f4ba1776d6c01a5ae231739e.md) | 60 | `result-track:f4ba1776d6c01a5ae231739e5aa5b7e9b8a8ff08beb86b6d7f1533e738032eaf` |
| 7 | `lemma` | [HasCardinalFilteredColimits_iff_hasFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/hascardinalfilteredcolimits-iff-hasfilteredcolimitsofsize--9ef2b79b3f08cb1c7eebc68f.md) | 64 | `result-track:9ef2b79b3f08cb1c7eebc68f029286c2acc281508c97d614cfc4782a300cb7d3` |
| 8 | `lemma` | [HasCardinalFilteredColimits_iff_hasFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant6d48d6ef0bc92f3cf9d8966bf067f39f80b4759231d276c25a930771cd732072.lean/declarations/hascardinalfilteredcolimits-iff-hasfilteredcolimits--2dd72197b70ed738de37c4c7.md) | 70 | `result-track:2dd72197b70ed738de37c4c760df743cf61f0368bcbe62046702a0b8367682d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
