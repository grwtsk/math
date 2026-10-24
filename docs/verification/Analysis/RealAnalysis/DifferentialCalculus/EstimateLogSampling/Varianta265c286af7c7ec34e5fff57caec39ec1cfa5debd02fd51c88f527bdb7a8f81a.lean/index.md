# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateLogSampling.Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df3ec0b26b02540f20ebeb9340c4da4ed72d3e79",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df3ec0b26b02540f20ebeb9340c4da4ed72d3e79`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingterm--1405f2d95ea5d44862195cc6.md) | 34 | `declaration-track:1405f2d95ea5d44862195cc645c937c05ca13de4ff48a6c37a292a6215978b2a` |
| 2 | `def` | [logSamplingDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingderivative--b24e5c92fd9e2fe9db3ab033.md) | 41 | `declaration-track:b24e5c92fd9e2fe9db3ab033c16f194d7af5cbdaa58d120467a0ff4cb1cd0809` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingterm-contdiffon-pos--0b227921c1a8437fcd2cf1dd.md) | 48 | `result-track:0b227921c1a8437fcd2cf1dd867173a2d4884ed359ed1158f1a8e4d3b0e846de` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingterm-hasderivat--31949ef1efe5341ae907c9fd.md) | 78 | `result-track:31949ef1efe5341ae907c9fd30d570197b0decf8cf8283b7fd31b5041b26ca6c` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/deriv-logsamplingterm--44d2fd5d79d7d983525036b1.md) | 119 | `result-track:44d2fd5d79d7d983525036b19f3a177b373fb4fabc4661218f604f1f513a9844` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingterm-source-eq--e764188350baaf4c383d7318.md) | 128 | `result-track:e764188350baaf4c383d731846190bb48cfbed19ac7f0c2e3c47c2fbebf28cff` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/leftsamplesum-source-eq--e5f9e8b6cd66aa3a2ec4ae5d.md) | 141 | `result-track:e5f9e8b6cd66aa3a2ec4ae5d336836eb2e7799384b1ad6a191c0bd8570e352c0` |
| 8 | `def` | [ProfileSupBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/profilesupbounds--f9f44f27b5bef8f19b5b66dc.md) | 157 | `declaration-track:f9f44f27b5bef8f19b5b66dce36e26f9b2cb81d5baf4f8008aa653ecc506341b` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingderivativemajorant--8a3cf70f874095f3335cf366.md) | 165 | `declaration-track:8a3cf70f874095f3335cf366eba02cc83a6f1e3e52459afbd934d0b3edc3dd01` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/abs-logsamplingderivative-le--ad163a3373c9f12459502f17.md) | 173 | `result-track:ad163a3373c9f12459502f176642f3af9c93c8dcd061efb2f94ec9b60a59fc13` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/logsamplingcheckpoint--0acfbe196f17669bfaa83307.md) | 239 | `declaration-track:0acfbe196f17669bfaa833075d9957651496fc2a13a151017d13f961b3acf219` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Varianta265c286af7c7ec34e5fff57caec39ec1cfa5debd02fd51c88f527bdb7a8f81a.lean/declarations/log-sampling-checkpoint--7eee6bf565aed0b5e7260a9a.md) | 253 | `result-track:7eee6bf565aed0b5e7260a9ab6b1468e240311199e8b4f3656b32201d71046ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
