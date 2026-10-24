# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualMuntzMellinDomainAttempt01.Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49eb219e98cbe1da99a34b4d352ccf256fb8b157",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49eb219e98cbe1da99a34b4d352ccf256fb8b157`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMuntz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexmuntz--61910bdea7cf82ada235828f.md) | 16 | `declaration-track:61910bdea7cf82ada235828fd849346d467baf812a1de591a9bebf201a119472` |
| 2 | `def` | [complexSource](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexsource--72953b77baef2f299e99fc4e.md) | 18 | `declaration-track:72953b77baef2f299e99fc4e82b4c98bb773da0069a0668397b78141654696a1` |
| 3 | `theorem` | [complexMuntz_measurable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexmuntz-measurable--4ad7a714dabf17f7e4cdd075.md) | 20 | `result-track:4ad7a714dabf17f7e4cdd075e36eaf1af9746a023f7cb91529c979cebe12da4f` |
| 4 | `theorem` | [complexMuntz_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexmuntz-integrable--cccf8d0cedc370be8a1b0cae.md) | 24 | `result-track:cccf8d0cedc370be8a1b0cae7666137c6099341361ce5f064f456eede914832f` |
| 5 | `theorem` | [complexMuntz_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexmuntz-top-decay--47b969993f4392119af920ef.md) | 42 | `result-track:47b969993f4392119af920ef9a2437aba9c797f4ece87d127308debabadf7ccc` |
| 6 | `theorem` | [complexMuntz_zero_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexmuntz-zero-bound--8d31645136be7fb76634244e.md) | 48 | `result-track:8d31645136be7fb76634244ee8c89aa38a763904191369353536c11364df50de` |
| 7 | `theorem` | [actual_muntz_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-muntz-mellinconvergent--2d5a7b9f7f3621ddca03ca3c.md) | 56 | `result-track:2d5a7b9f7f3621ddca03ca3c8d8c02172400bdc7a0954e6f332380fa81bf86e4` |
| 8 | `theorem` | [actual_muntz_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-muntz-mellin-hasderivat--be453e40ea98a600b4b84135.md) | 63 | `result-track:be453e40ea98a600b4b84135bbaff9f486c1718942c3430065562993294c78f8` |
| 9 | `theorem` | [actual_muntz_mellin_analytic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-muntz-mellin-analytic--6e3d62ca4191fb63d9a472a7.md) | 72 | `result-track:6e3d62ca4191fb63d9a472a79792c0def0514e71c15fd2457ed2413fdac99371` |
| 10 | `theorem` | [complexSource_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexsource-integrable--58bb98793031590cda47faa3.md) | 78 | `result-track:58bb98793031590cda47faa3eaad5e3527a9b21ce693645ac99b9fc2fa7d47fb` |
| 11 | `theorem` | [complexSource_top_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexsource-top-decay--b0d10bdce9c0c697c7f88be9.md) | 82 | `result-track:b0d10bdce9c0c697c7f88be9731870ef208272a2474e7d66460273727494c092` |
| 12 | `theorem` | [complexSource_zero_decay](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/complexsource-zero-decay--7b16bda5c6143aa66c959274.md) | 88 | `result-track:7b16bda5c6143aa66c959274ddf5f204a9b1621aeed470958ae4d7e8d87904ec` |
| 13 | `theorem` | [actual_source_mellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-source-mellinconvergent--87cb4fd26b5c3cce92993cd7.md) | 96 | `result-track:87cb4fd26b5c3cce92993cd74f5080c7b79169ca67648a07e982e2ffa6cd775e` |
| 14 | `theorem` | [actual_source_mellin_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-source-mellin-hasderivat--66ac16411636497eb24c73a0.md) | 103 | `result-track:66ac16411636497eb24c73a05c4f4c91061dd02c8d88ace3e7fc761f255d647b` |
| 15 | `theorem` | [actual_source_mellin_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-source-mellin-differentiable--5f582976f9a5737885cbeac0.md) | 112 | `result-track:5f582976f9a5737885cbeac010b5e0d6dae4785dc9874e4a272f4fbea645697d` |
| 16 | `theorem` | [actual_source_mellin_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomainAttempt01/Variant3cdda4e2dfc4d04a36aa6b63a8a8f70690cf67501fab70e0f8524c7735701690.lean/declarations/actual-source-mellin-one--4fc2d79e4e4d4d79b46a6362.md) | 116 | `result-track:4fc2d79e4e4d4d79b46a63625d5ab09a311b0f4692a6eee32a1e5c7f468eed85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
