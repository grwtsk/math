# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt03.Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f658f98844fc699b6221a274354326eaf53f22f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f658f98844fc699b6221a274354326eaf53f22f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean.json)

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
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/angularintegral--ad24b4b418d2243180d4ccb2.md) | 19 | `declaration-track:ad24b4b418d2243180d4ccb2e6b1d113a48fe7edfdc87216e92ffe3d9134d684` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/critical-jacobian--b81c66516a0faae7decf668e.md) | 22 | `result-track:b81c66516a0faae7decf668eae8b30012255c09389d84f5905de8b90edab01a0` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/mellin-critical-log--3d1b6d3d7927da8dc8c1d5f3.md) | 34 | `result-track:3d1b6d3d7927da8dc8c1d5f33a610428a7b5d3219535add9d085e33ddd8ac727` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/critical-integrable-iff--566d58359038c9768b32cf5c.md) | 45 | `result-track:566d58359038c9768b32cf5cb178ab32957c015142689a9a99582a5614282bef` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/phase-norm--74d8a3250ded05c3b280ab7c.md) | 57 | `result-track:74d8a3250ded05c3b280ab7c5c128d5ce6ca07e668f754fe752d9ac40241a846` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/logfunc-integrable-of-critical--e30be6aab20cab7cf634ee72.md) | 61 | `result-track:e30be6aab20cab7cf634ee729f97577ce34c6227eded949f71fcbedc91e7da97` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actualsource-memlp--61573f5ed675653667d16a0b.md) | 73 | `result-track:61573f5ed675653667d16a0b3c3ddc6cfd403317f8e655cc3b2e4543925b393d` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actualsourcel2--c96e5a44f070f3cd0e4d2265.md) | 82 | `declaration-track:c96e5a44f070f3cd0e4d2265241c33717d36c303e423127b5fd28db5821e4f52` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actualsourcel2-ae--04262decb3364fe64ff983f3.md) | 85 | `result-track:04262decb3364fe64ff983f3094786b122d8204cb333a9890b040d4044a37958` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-source-log-pointwise--cc2e16d3340ec15c20576164.md) | 89 | `result-track:cc2e16d3340ec15c20576164dafe4b3ce1ca5e33e2e4d3ef01b9419426cb34a1` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-source-log-ae--1a50dfc8913f4b7e06976baf.md) | 96 | `result-track:1a50dfc8913f4b7e06976bafb3063362fcf004bdee319a4ae5d59ef413d204b3` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-source-angular-integrable--4d12b78ce429b18099190e22.md) | 105 | `result-track:4d12b78ce429b18099190e22494c197686efa245f2b5a37a33b9bcaa885f4928` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-muntz-angular-integrable--f83a5198b3cdcdbb44eccaa1.md) | 112 | `result-track:f83a5198b3cdcdbb44eccaa1a95101c4f104e5a6c6e2b454478a1b1b8c56a851` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-muntz-log-integrable--077704f91e1c798eef4a6b7b.md) | 119 | `result-track:077704f91e1c798eef4a6b7b9585c2fae796677b30a59a1fa0fc6d7cb8b3b795` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-source-mellin-log--4fc1e2b1e897321c2605ee51.md) | 126 | `result-track:4fc1e2b1e897321c2605ee51f7bc3ea3405be2f71c9d6f5b273d85622129bceb` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-muntz-mellin-log--f76567cacdeb2959c838b5f9.md) | 134 | `result-track:f76567cacdeb2959c838b5f9bef7be1124e4420e7e21f17324ad2a1264e42b95` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt03/Variant2b6033d18d75b4288b3676de57d32532cc32c4dd09a85e3c4cc11a4c09ffdaa1.lean/declarations/actual-muntz-mellin-log-class--f64852ad07f32204291549b4.md) | 138 | `result-track:f64852ad07f32204291549b4abfa8fe9e72c102b201e54e544e70893304a51dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
