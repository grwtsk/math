# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SamplingSecondDerivative.Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "284769d36036617eb160abc852328382730410cd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `284769d36036617eb160abc852328382730410cd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [secondDifference](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/seconddifference--39b1451a81366cf15d169410.md) | 33 | `declaration-track:39b1451a81366cf15d1694103f7adb20e685aa082b63bf99fa8515df7398b814` |
| 2 | `theorem` | [secondDifference_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/seconddifference-eq--fe0c4b7ca0e2db44a12e78d2.md) | 37 | `result-track:fe0c4b7ca0e2db44a12e78d282ad9054239470ff2317871b8c4f124ca09611af` |
| 3 | `theorem` | [secondDifference_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/seconddifference-continuous--c38440f0f59273af91292967.md) | 47 | `result-track:c38440f0f59273af91292967e27953a3e34cdd2fa2e7c2112d59957ec515bd9c` |
| 4 | `theorem` | [secondDifference_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/seconddifference-abs-le--932c87f0d8864645e1f63045.md) | 52 | `result-track:932c87f0d8864645e1f63045be39e375feaf5b8b25c70465d140d20437290531` |
| 5 | `theorem` | [secondDifference_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/seconddifference-zero-right--c730e3b0e592f76302d8b28e.md) | 72 | `result-track:c730e3b0e592f76302d8b28e1ff74ef30c2234eee53b8e0699a0fb034b8789a1` |
| 6 | `theorem` | [derivative_sampling_term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/derivative-sampling-term-hasderivat--b5830e5581d58c3d569b28c8.md) | 83 | `result-track:b5830e5581d58c3d569b28c87d40b7db34d229583751a3a9d7b1f269079c151d` |
| 7 | `theorem` | [second_difference_sum_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/second-difference-sum-eq-fixed-sum--fc2879df72d08b9494357ded.md) | 107 | `result-track:fc2879df72d08b9494357ded950f5f720a1b38c71d9d5129e4f4eb2bbbcd7fe0` |
| 8 | `theorem` | [sourceSamplingKernel_derivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/sourcesamplingkernel-derivative-hasderivat--102ac1e35dc67ed7903bc207.md) | 124 | `result-track:102ac1e35dc67ed7903bc20770733bea8f75c53280aa755e6be24719d9239725` |
| 9 | `theorem` | [derivative_secondMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/derivative-secondmoment--4ef4d39a74489a7d912cd484.md) | 152 | `result-track:4ef4d39a74489a7d912cd4849d0811fb5664b199a701eef4fb07211a44fc0e11` |
| 10 | `theorem` | [correlationDifference_secondMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/declarations/correlationdifference-secondmoment--3bfc4a5d4cf82d4e2d51beb0.md) | 186 | `result-track:3bfc4a5d4cf82d4e2d51beb0d2743c3d69a8b1090e0d40d1c1ddccb40fd52d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
