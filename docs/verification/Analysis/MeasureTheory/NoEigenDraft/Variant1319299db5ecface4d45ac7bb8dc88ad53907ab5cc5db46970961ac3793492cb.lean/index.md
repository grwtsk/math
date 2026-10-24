# Verification target: GRWTSK.Analysis.MeasureTheory.NoEigenDraft.Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8abe07c8db048ddfe38a04470f57d6545d933aa6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8abe07c8db048ddfe38a04470f57d6545d933aa6`.

Source path: `GRWTSK/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaMultiplicationDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shiftedDensityMeasure](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/declarations/shifteddensitymeasure--e72865d0653f22afd3889fba.md) | 24 | `declaration-track:e72865d0653f22afd3889fba57da5a16846a06e2b4c1f33fdaebe79d9c5890f8` |
| 2 | `theorem` | [shiftedDensityMeasure_nullSingleton](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/declarations/shifteddensitymeasure-nullsingleton--25cbd32a69d4ed6adc0670a4.md) | 28 | `result-track:25cbd32a69d4ed6adc0670a4008d4798d51b93b196f5a4ea6135fae77f09a760` |
| 3 | `theorem` | [coordinate_eigenvector_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/declarations/coordinate-eigenvector-eq-zero--d6c679bffbfdb9f2ca6b146a.md) | 43 | `result-track:d6c679bffbfdb9f2ca6b146ab07a7480d40411239c60a0bac5abc7d260b9fb97` |
| 4 | `theorem` | [shiftedDensity_coordinate_eigenvector_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/NoEigenDraft/Variant1319299db5ecface4d45ac7bb8dc88ad53907ab5cc5db46970961ac3793492cb.lean/declarations/shifteddensity-coordinate-eigenvector-eq-zero--79368af24197056826128d0e.md) | 65 | `result-track:79368af24197056826128d0ea82a97f089c24607423f5ff4f82e7ad977b8f962` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
