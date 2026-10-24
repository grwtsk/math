# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt02.Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e17cb85d10bd97047a0cb83e88c143d667875d0d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e17cb85d10bd97047a0cb83e88c143d667875d0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCoordinate` — import line 1; external provider; requires a separately pinned dependency.
- `ActualMuntzMellinDomain` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/angularintegral--1dc426d0e74a89966a89d7d3.md) | 19 | `declaration-track:1dc426d0e74a89966a89d7d359ea1a964bbf7aa8c597f580e0ea4eedb7ec0744` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/critical-jacobian--8cd5a9f0a8f2e9756e6b3976.md) | 22 | `result-track:8cd5a9f0a8f2e9756e6b397634289c652da4388b0a5b3b445987b79cd87ecee0` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/mellin-critical-log--9ab6ff92d20b2258e6d75bc0.md) | 34 | `result-track:9ab6ff92d20b2258e6d75bc04dcffd6da9d926ee5e6d84a37e2e67c4531e5245` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/critical-integrable-iff--fc54ee29d59ad576e7f58ea8.md) | 45 | `result-track:fc54ee29d59ad576e7f58ea8d2bfbb39c97b31f662f7859ee3c5bcaa510c83f6` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/phase-norm--46a0b29d97079c0cec4565aa.md) | 57 | `result-track:46a0b29d97079c0cec4565aa538d7256f926b5b48d066f62f19e8008a93e6c51` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/logfunc-integrable-of-critical--b7ed245bbf503b31b66b9696.md) | 61 | `result-track:b7ed245bbf503b31b66b96960278e52881b34e9285a751f5b1d61ccbee4908c6` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actualsource-memlp--e9c7bc9cff1e9e05fe48123d.md) | 73 | `result-track:e9c7bc9cff1e9e05fe48123d21d15922234aa44fe81caa6eee8c61ab3ac3549e` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actualsourcel2--f96bf3bf16346c2d1841a250.md) | 82 | `declaration-track:f96bf3bf16346c2d1841a2500559b2f4f82198debc359cff3ca9ea798afa0d09` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actualsourcel2-ae--9875b14581a38f57bfafa939.md) | 85 | `result-track:9875b14581a38f57bfafa93915681f3c41273ad4b09edb1fcf692e8a11b23444` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-source-log-pointwise--0d64a61eb0063d5216e1dee1.md) | 89 | `result-track:0d64a61eb0063d5216e1dee16f90e4dd1ee47aea76c35c25aeaa69d1ed0ac552` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-source-log-ae--6b9345cf936e5cf3a49ddcc9.md) | 96 | `result-track:6b9345cf936e5cf3a49ddcc993e1864cc38cb44a1d7e4bef0ff3d890ec51b0bd` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-source-angular-integrable--afc7c0a6fe826557d0ad573a.md) | 105 | `result-track:afc7c0a6fe826557d0ad573aad48bf4db113679ee7564e697b84d300ffe3f4ea` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-muntz-angular-integrable--8a0b839e12601836bf9625d6.md) | 112 | `result-track:8a0b839e12601836bf9625d6459ab423bbdb53c3bb5220ae65446b4e04beaf9d` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-muntz-log-integrable--60c097ae3594a6e21955c275.md) | 119 | `result-track:60c097ae3594a6e21955c275b416627fead83203bde0a095648f7ac526329a10` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-source-mellin-log--0374a70b40577f1868877d6d.md) | 126 | `result-track:0374a70b40577f1868877d6d0c57f6cd7f2853d413481868faaf361cfdf86a69` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-muntz-mellin-log--462b21fffd31154df8208fd0.md) | 134 | `result-track:462b21fffd31154df8208fd0925a01892937af78574f1d7ba62be8212b5a26c9` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt02/Variant13e0e79e894795438987157411c2d79f529eb9b0cd05024ad7a567cce37f92e5.lean/declarations/actual-muntz-mellin-log-class--78f396075fc46b261dd3ac41.md) | 138 | `result-track:78f396075fc46b261dd3ac411f099cc8b4098060d27667b0d7d4bb599d3acab2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
