# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceSamplingDerivative.Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12763c93fe480ed3f488ba77164f8737646ac1af",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12763c93fe480ed3f488ba77164f8737646ac1af`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSampling` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_derivative_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/source-derivative-zero-right--99f072db93651f4006dbd7f3.md) | 24 | `result-track:99f072db93651f4006dbd7f334dd8cfe175499db5e55c6928b9113c223f39efd` |
| 2 | `theorem` | [source_difference_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/source-difference-zero-right--721258b9c1fd096a531f86b6.md) | 33 | `result-track:721258b9c1fd096a531f86b67d9205b60be7a2463a164ee281406d0a112a41f4` |
| 3 | `theorem` | [sampling_term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/sampling-term-hasderivat--67ad800dadf9980142ebc14a.md) | 39 | `result-track:67ad800dadf9980142ebc14aa5d6ce32823f6144d9f1a0ddc971e467e12cee25` |
| 4 | `theorem` | [samplingIndices_subset_fixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/samplingindices-subset-fixed--f208edec1d06f147bff1c0eb.md) | 59 | `result-track:f208edec1d06f147bff1c0ebb4854c6d6d50fc2625bc2934b2cad75e73526dce` |
| 5 | `theorem` | [kernel_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/kernel-eq-fixed-sum--938516368c58811b1e97428f.md) | 69 | `result-track:938516368c58811b1e97428f0ce8d341fa958a081c9f628a2533be84601de900` |
| 6 | `theorem` | [difference_sum_eq_fixed_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/difference-sum-eq-fixed-sum--db816616881701d564fcfa08.md) | 85 | `result-track:db816616881701d564fcfa08abdf162aee381b2b362977ec7ce16ad390423123` |
| 7 | `theorem` | [sourceSamplingKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/sourcesamplingkernel-hasderivat--365d7b7863c9806469f21172.md) | 101 | `result-track:365d7b7863c9806469f211727db90c0b230fb72c971d12e11f06487081ce280d` |
| 8 | `theorem` | [sourceSamplingKernel_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/sourcesamplingkernel-deriv--e243bcb55d4db6d148459570.md) | 127 | `result-track:e243bcb55d4db6d148459570695c2fd3ca4bf5d6ba17fd78006685cd089ddcfe` |
| 9 | `theorem` | [sourceSamplingKernel_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant215d32fd19eb4f2f66a6a50e8df67910bee6f45d4ce0e7c7459061322cc5e5a0.lean/declarations/sourcesamplingkernel-differentiableon--561cec3f3aa411560b5518d4.md) | 134 | `result-track:561cec3f3aa411560b5518d40c548880e14eca893d60d98e1447fca6dade9993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
