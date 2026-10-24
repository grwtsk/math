# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt03.Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771c1bde77709db1ce3e991fb46ac794538a016e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771c1bde77709db1ce3e991fb46ac794538a016e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 6; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/angularintegral--5ef03f253ced61e416b155b3.md) | 27 | `declaration-track:5ef03f253ced61e416b155b3daefa30b16066442df93cf0b12d2d1c21599708b` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/critical-jacobian--040d574bfec9b004bde47b1c.md) | 30 | `result-track:040d574bfec9b004bde47b1cb613f4b29f53e6cfc7c279346e424b8ee25a6107` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/mellin-critical-log--9259e2249b1cae4709144174.md) | 42 | `result-track:9259e2249b1cae4709144174b30c5959a1436b7857957795a0048bd4d8bd4b79` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/critical-integrable-iff--34111f2826d134792eaa33bb.md) | 53 | `result-track:34111f2826d134792eaa33bb43f83c394e66b848113c231e27adb29777a75f76` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/phase-norm--88699654388c4ca8d4f71f3e.md) | 65 | `result-track:88699654388c4ca8d4f71f3e75ff2c0b40255654063ae99b0b841d038fdbd0d2` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/logfunc-integrable-of-critical--2fe1a3dd96b15e669333c401.md) | 69 | `result-track:2fe1a3dd96b15e669333c40149c9fd52ddaf8f937221d678fa10004a10f3dcf1` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actualsource-memlp--26d3f4137aa726cedaa8995c.md) | 81 | `result-track:26d3f4137aa726cedaa8995c5c222574317ab265d7f66bf09e3d584020f74b14` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actualsourcel2--8faadf5e53150b58cd283ba0.md) | 90 | `declaration-track:8faadf5e53150b58cd283ba016790771f6ed904ad8c4038af39677bcb78cf9b6` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actualsourcel2-ae--3e640a0090ede406f3dbc7d3.md) | 93 | `result-track:3e640a0090ede406f3dbc7d3d0d5c5c279aec6be1f591883c13e0154b4e8774d` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-source-log-pointwise--2ee9962da76ec390798bee4b.md) | 97 | `result-track:2ee9962da76ec390798bee4bc9370a6ff900ab964b50d023788c2d18f3239648` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-source-log-ae--17b3bdd0a9b45e3c6a64f884.md) | 104 | `result-track:17b3bdd0a9b45e3c6a64f88476ebf5f4433f49a58b02149795cf8d132adc0bef` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-source-angular-integrable--4266497375618ba9674ed62b.md) | 113 | `result-track:4266497375618ba9674ed62b501bb02452e697e3d63f5b97a086400e740c14d0` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-muntz-angular-integrable--2a23be50625f7997de23ab8c.md) | 120 | `result-track:2a23be50625f7997de23ab8c05991fc9cc78e369b4ef43a5c837800334c32ad5` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-muntz-log-integrable--31d4339128d4833d48ee45cc.md) | 127 | `result-track:31d4339128d4833d48ee45ccd72e0f0bfbcc175ad8fb131a43bfc970067c4472` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-source-mellin-log--a5bf1556f5423fb78f65982c.md) | 134 | `result-track:a5bf1556f5423fb78f65982c8ef6f83ffa2ca5f49a9d36bad18a2d192b230dfb` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-muntz-mellin-log--04ee1f6154a0318a11b37bfc.md) | 142 | `result-track:04ee1f6154a0318a11b37bfc7f134edcbffc773f7e7c7119414b0f9861c3d035` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variantabcb67325193e6e972b586a3c31dab4ba563e599c89103cbec4befedad6ea1a0.lean/declarations/actual-muntz-mellin-log-class--9d6c37f88c80f3bd48175219.md) | 146 | `result-track:9d6c37f88c80f3bd48175219b5b285fa97a68ca3179d4ee92ab67b4081d114ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
