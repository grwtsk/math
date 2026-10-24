# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CriticalMertensTransformMeanSquare.Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0bdccbc91f91f3869f0b7f01958149fdc30e2e2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0bdccbc91f91f3869f0b7f01958149fdc30e2e2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalEndpointDefectRecurrence`](../../../../../../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefectRecurrence.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.FinitePowerSum`](../../../../../../../../../mathematics/Analysis/AsymptoticAnalysis/FinitePowerSum__SourceOccurrence743654db625b5be3e516c0b4.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalMertensIncrementSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalmertensincrementsquare--d0e390ce459191687738efe4.md) | 29 | `declaration-track:d0e390ce459191687738efe4ce9255f1ec934b04785d233ae9c0db843597cfc8` |
| 2 | `theorem` | [criticalMertensTransform_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalmertenstransform-sq-le--632612d77bf14ac3f89cee4a.md) | 35 | `result-track:632612d77bf14ac3f89cee4a0f3230b68c298572ce57c7e2886b27e2011c69e5` |
| 3 | `theorem` | [sum_range_succ_rpow_sub_one_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/sum-range-succ-rpow-sub-one-le--83c7f9d28725b6a4f9ba1bd2.md) | 94 | `result-track:83c7f9d28725b6a4f9ba1bd2294a01bff0e38c0266350461f18d420d0fd5e213` |
| 4 | `theorem` | [criticalMertensTransform_sq_le_meanSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalmertenstransform-sq-le-meansquare--c430cfe7cec801c17f350926.md) | 111 | `result-track:c430cfe7cec801c17f3509263043cf888da43ea82db87b259f7774c4b40ff9c5` |
| 5 | `def` | [CriticalMertensIncrementMeanSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalmertensincrementmeansquare--9bd90d52bd5cb2eda5220bd2.md) | 128 | `declaration-track:9bd90d52bd5cb2eda5220bd2092ea10a186826855f4880ce971fce5202df34de` |
| 6 | `theorem` | [criticalMertensIncrementSquare_le_tsum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalmertensincrementsquare-le-tsum--1ee6f4149f994bfa479ded17.md) | 133 | `result-track:1ee6f4149f994bfa479ded177d46729414d710d5e702502b67dfb55a010a28e5` |
| 7 | `theorem` | [mertensTransformSummable_of_incrementMeanSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/mertenstransformsummable-of-incrementmeansquare--93f6ea705150028587df2a5a.md) | 145 | `result-track:93f6ea705150028587df2a5a1a5428a2ca8a85ed2667921447beb7ea66fa9e89` |
| 8 | `theorem` | [criticalBoundary_of_incrementMeanSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalMertensTransformMeanSquare/Variantc4590530b0a198669b6e889fc7e10e6ce3538c105a04199cd7caed40564ff32d.lean/declarations/criticalboundary-of-incrementmeansquare--07ff24d77618e205d14ad919.md) | 207 | `result-track:07ff24d77618e205d14ad9198ef9f39eeb0d09d8bcc52deb1e7582dcfd3962be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
