# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Estimator.Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b086c0ffd7ee09b6ab75f8b84019aa5945966c7f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b086c0ffd7ee09b6ab75f8b84019aa5945966c7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.EditDistance.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Estimator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LevenshteinEstimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/levenshteinestimator--25fab0b487fc073f6e4036b3.md) | 51 | `declaration-track:25fab0b487fc073f6e4036b35cee4b4cd3afa1283d2dfe9a39abf917e574bbc5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/instance--568dab0f1a889c50ffb4c84c.md) | 70 | `declaration-track:568dab0f1a889c50ffb4c84cdf50bca48d5f4b2e2b171d11c7650bd24500e4af` |
| 3 | `instance` | [estimator'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/estimator--5232ad2578525131f15cc10f.md) | 84 | `declaration-track:5232ad2578525131f15cc10f0164fb600240c7e93cb41699095e4d8f84a12ed6` |
| 4 | `def` | [LevenshteinEstimator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/levenshteinestimator--8625f871e47639c96c356013.md) | 136 | `declaration-track:8625f871e47639c96c35601377c4062c5eaf064da57b06c214b461ef35d1e6fa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/instance--5cc68e69efc7d7530eef6aa2.md) | 139 | `declaration-track:5cc68e69efc7d7530eef6aa227f6977ad0dce62409a1eb5e392ee2c41c02774e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Estimator/Variant028a79c6b9c886a370a03028f68f0c52a26dadd45cebdd35c54671af505768e3.lean/declarations/instance--760eb7964c6901ee4c1cf368.md) | 144 | `declaration-track:760eb7964c6901ee4c1cf368afeb2439695d227d5bb1febd48063b3cb778d77f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
