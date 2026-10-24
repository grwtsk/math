# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateLogSampling.Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd54b69fbbe298800ec0b96464df15a4773f8f09",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd54b69fbbe298800ec0b96464df15a4773f8f09`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingterm--110de4834a7d1e7b7d31b784.md) | 40 | `declaration-track:110de4834a7d1e7b7d31b784c5ecc20aef9c153ea012b3a67671fbf62262b156` |
| 2 | `def` | [logSamplingDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingderivative--c98f679d7c5e2efc3517ab8f.md) | 45 | `declaration-track:c98f679d7c5e2efc3517ab8fba838c8ba3e229d16810abbe64d5775fe45dd82b` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingterm-contdiffon-pos--3d153df90cc81acfe3e0d4b8.md) | 52 | `result-track:3d153df90cc81acfe3e0d4b835c3000ba28f0f85c3240e2418697ca68e97c3f5` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingterm-hasderivat--47218b5c7ff63969126db83f.md) | 82 | `result-track:47218b5c7ff63969126db83fcfd56f29e766e5ae271b6b471b38bcf14366604c` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/deriv-logsamplingterm--114ad7cc51981f1e823d28a3.md) | 125 | `result-track:114ad7cc51981f1e823d28a373f02f208968d167044e0daf8ae05098b83d9b82` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingterm-source-eq--490f8a1203fb4947d461a79a.md) | 134 | `result-track:490f8a1203fb4947d461a79ab06f978281b596af7f9493b78a76276ee1cee566` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/leftsamplesum-source-eq--4d1af625d84604b87d31d49c.md) | 147 | `result-track:4d1af625d84604b87d31d49c8cc2c68c28e5be404b283e16b7c5014a5c4b42c3` |
| 8 | `def` | [ProfileSupBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/profilesupbounds--71a917f89c84d51fbc36a450.md) | 163 | `declaration-track:71a917f89c84d51fbc36a450fc5a4c912b47534af8ae6708762e692f34fab00a` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingderivativemajorant--d5b63e8282fccb8fccc8b3c0.md) | 169 | `declaration-track:d5b63e8282fccb8fccc8b3c0805d6b4758c120f26b0f60d5755813cd5a75f635` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/abs-logsamplingderivative-le--2eb3ad1e1918ab8f12b88144.md) | 177 | `result-track:2eb3ad1e1918ab8f12b88144dde1990c079c092d7fd54940b4fc740b349fdae6` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/logsamplingcheckpoint--90feb150a3a52a93910082ac.md) | 245 | `declaration-track:90feb150a3a52a93910082ac27012ef13e76ca80ad0768d1e92d3617f04ff59b` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantc475d55a557e210ea77a90f60119ee06c2776cf9816b7ed6d0a2113a311cf3f2.lean/declarations/log-sampling-checkpoint--5db235168c23e3c93ae8a788.md) | 259 | `result-track:5db235168c23e3c93ae8a788b014ae728480aac066db3bc9ce3f1063d4e84581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
