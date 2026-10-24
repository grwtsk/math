# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl.Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02013b004d31b7feb6643294c01528a5c1623684",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02013b004d31b7feb6643294c01528a5c1623684`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean.json)

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
| 1 | `def` | [logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingterm--93bd5ce08dc0619b35fedc6c.md) | 32 | `declaration-track:93bd5ce08dc0619b35fedc6c6707b478ba986dd0d142f0ce02c8ceeef278b97d` |
| 2 | `def` | [logSamplingDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingderivative--26ee2c2fa8944252b6ff0444.md) | 37 | `declaration-track:26ee2c2fa8944252b6ff044478a0600e455f7376390134385166da3b7ace3dca` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingterm-contdiffon-pos--ce896afd8cb682f7ddc10563.md) | 44 | `result-track:ce896afd8cb682f7ddc105639ca1f38ceec6efbf9bff0b621d70246133fd6f73` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingterm-hasderivat--32bed25f14443fd813062c3e.md) | 74 | `result-track:32bed25f14443fd813062c3e9b305e4ba81e0225364f4f0a378c7eda18bd96c3` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/deriv-logsamplingterm--1c60c2f42331b4f30da70d18.md) | 115 | `result-track:1c60c2f42331b4f30da70d187aee8b3ab8eb0c7f708f52ccd7f4b80f9a95df41` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingterm-source-eq--fd8e0c1d8e62acc5b495c1bc.md) | 124 | `result-track:fd8e0c1d8e62acc5b495c1bc5b35dabdf9a9674ce62ad41c8311e85d9fe0147b` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/leftsamplesum-source-eq--4f44c5f59ebc42331ae8dfb9.md) | 137 | `result-track:4f44c5f59ebc42331ae8dfb9991b024d2c7813c162ecc177c23ce82100030c74` |
| 8 | `def` | [ProfileSupBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/profilesupbounds--4cbfc6fee252266d4d4698a7.md) | 153 | `declaration-track:4cbfc6fee252266d4d4698a7639755be54acf1114bce0909de43b145733747a5` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingderivativemajorant--2fc3a9a14b01f91644c34a85.md) | 159 | `declaration-track:2fc3a9a14b01f91644c34a855ef86d1b3f058b0622b418d5d77d4a8b06b8b4b2` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/abs-logsamplingderivative-le--15a7e846fec6ad2d2477a9e9.md) | 167 | `result-track:15a7e846fec6ad2d2477a9e9aea5c2336abf115450392427bc21ffbd0e31de06` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/logsamplingcheckpoint--466f0c4ac8f0af4489da8ff4.md) | 233 | `declaration-track:466f0c4ac8f0af4489da8ff4efc39c0bc57ebb9a7081ba9ffd256e9a2795ad6a` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Acd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89cEstimateLogSampl/Variantacd4abc2d364f69d05cebe0a2df9a92518b1b66e8fab0261208ea1c1e914a89c.lean/declarations/log-sampling-checkpoint--57b957ffe777046b81eed83f.md) | 247 | `result-track:57b957ffe777046b81eed83f9446d1b835a55f2876abf9e11adaed2b9d83b83a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
