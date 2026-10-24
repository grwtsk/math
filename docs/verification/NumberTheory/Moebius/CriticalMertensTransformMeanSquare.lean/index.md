# Verification target: GRWTSK.NumberTheory.Moebius.CriticalMertensTransformMeanSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0bdccbc91f91f3869f0b7f01958149fdc30e2e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0bdccbc91f91f3869f0b7f01958149fdc30e2e2`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence`](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalMertensIncrementSquare](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalmertensincrementsquare--e3734539606f27a234513d06.md) | 29 | `declaration-track:e3734539606f27a234513d062b516901ffe60b7b722093373bb02c9a355d0451` |
| 2 | `theorem` | [criticalMertensTransform_sq_le](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalmertenstransform-sq-le--b0f93fbcdcd1e9f88bd76cb4.md) | 35 | `result-track:b0f93fbcdcd1e9f88bd76cb460acf0bb8cbde1bd9833744faa277e7556d297fd` |
| 3 | `theorem` | [sum_range_succ_rpow_sub_one_le](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/sum-range-succ-rpow-sub-one-le--f2c471ae863e65c0bf9153f8.md) | 94 | `result-track:f2c471ae863e65c0bf9153f8716b28c75fb3264014d2ef1b4afb73e98214917e` |
| 4 | `theorem` | [criticalMertensTransform_sq_le_meanSquare](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalmertenstransform-sq-le-meansquare--9ef9a6cc6fa6d18da4f0cc23.md) | 111 | `result-track:9ef9a6cc6fa6d18da4f0cc23af50d7cec83cddb59bd9287024bc4a5b51594c3c` |
| 5 | `def` | [CriticalMertensIncrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalmertensincrementmeansquare--3a6fcdc3ef2534a94bc466bf.md) | 128 | `declaration-track:3a6fcdc3ef2534a94bc466bf22b0c3a3cb096adbb1b6dae03fb9e76e59091a24` |
| 6 | `theorem` | [criticalMertensIncrementSquare_le_tsum](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalmertensincrementsquare-le-tsum--c27cab68aa90b7d595f211d3.md) | 133 | `result-track:c27cab68aa90b7d595f211d38d741393e338bd774832d11da3594dcaf7d3e58b` |
| 7 | `theorem` | [mertensTransformSummable_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/mertenstransformsummable-of-incrementmeansquare--a2e0a60d2a4e31b8e431420b.md) | 145 | `result-track:a2e0a60d2a4e31b8e431420b7f50f3d414931accd6aa26725dc534fa4f9a2eab` |
| 8 | `theorem` | [criticalBoundary_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/CriticalMertensTransformMeanSquare.lean/declarations/criticalboundary-of-incrementmeansquare--5c8d7c0c61d4b2ac668d0027.md) | 207 | `result-track:5c8d7c0c61d4b2ac668d0027ea20270b013b93e27a2314787ea33e98efce0bf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
