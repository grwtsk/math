# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateLogSampling.Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dab20048249146742a2d0f8922c978f6fa570299",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dab20048249146742a2d0f8922c978f6fa570299`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean.json)

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
| 1 | `def` | [logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingterm--fe52663855adf9f3a8a33ef6.md) | 32 | `declaration-track:fe52663855adf9f3a8a33ef628a6314ef917acdb318aac9ff018118f0e0f3d2e` |
| 2 | `def` | [logSamplingDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingderivative--9e767e2727f773d9f3d37a90.md) | 37 | `declaration-track:9e767e2727f773d9f3d37a901cdc01b050657a5446a3579f3b2a85d717ea020c` |
| 3 | `theorem` | [logSamplingTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingterm-contdiffon-pos--bc7948d76c30b47b355da433.md) | 44 | `result-track:bc7948d76c30b47b355da433d3bbcf180139517bc60fd2bb38652dac92f21d38` |
| 4 | `theorem` | [logSamplingTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingterm-hasderivat--d9414b99be84291a319bd1c7.md) | 74 | `result-track:d9414b99be84291a319bd1c74e6e338e21db1c992548dbfab5282cf9194593c0` |
| 5 | `theorem` | [deriv_logSamplingTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/deriv-logsamplingterm--5df9286d1a96f0667905da14.md) | 117 | `result-track:5df9286d1a96f0667905da142629b1ab81fb967f97ed581b1b02e6ac3ad171af` |
| 6 | `theorem` | [logSamplingTerm_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingterm-source-eq--ef73c81f33a015f2af8dd1a9.md) | 126 | `result-track:ef73c81f33a015f2af8dd1a92c7d278329b5cf54d6b7c5c6240443a35b9948a9` |
| 7 | `theorem` | [leftSampleSum_source_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/leftsamplesum-source-eq--73a09aa92587b6f3959ddefb.md) | 139 | `result-track:73a09aa92587b6f3959ddefbdc7b6e86a7a768ba7d98fc4ec7b540e33c7f1f78` |
| 8 | `def` | [ProfileSupBounds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/profilesupbounds--d73ffae041f13f85f24cff5b.md) | 155 | `declaration-track:d73ffae041f13f85f24cff5b56c7d745a7eb6fe1d789c6c2ac099c5b354aa828` |
| 9 | `def` | [logSamplingDerivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingderivativemajorant--4f9d5fd5392bfb961f68d364.md) | 161 | `declaration-track:4f9d5fd5392bfb961f68d364379c86003c8b80c1694fef89d0fcfcba175aeca2` |
| 10 | `theorem` | [abs_logSamplingDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/abs-logsamplingderivative-le--ebb9521635d9fed43115eb48.md) | 169 | `result-track:ebb9521635d9fed43115eb483b1086c2caac2506c444a7b9eb33619172eff195` |
| 11 | `def` | [LogSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/logsamplingcheckpoint--d45bc25be760f97c84acdc11.md) | 237 | `declaration-track:d45bc25be760f97c84acdc1146d244b4dbeb94080aec284adb6a878bdfe16b7f` |
| 12 | `theorem` | [log_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateLogSampling/Variantce3ae6dc89f694ad681d839e44d72870d898e41649208f2b33d360f311ad769e.lean/declarations/log-sampling-checkpoint--a8c9442f16640034370ef7c4.md) | 251 | `result-track:a8c9442f16640034370ef7c47cb0661b0cf95749589513d54c0f72d140a356ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
