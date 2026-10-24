# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellin.Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12d063c85d518c795f1028a7eb4770207febb341",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12d063c85d518c795f1028a7eb4770207febb341`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean.json)

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
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/angularintegral--896f05eb7690d414d6056931.md) | 19 | `declaration-track:896f05eb7690d414d6056931be45454864b7ce65a54000c9a799dd97aadbfae3` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/critical-jacobian--f9822690ab9758235e9484b9.md) | 22 | `result-track:f9822690ab9758235e9484b9772c8087f5f7e6314a7e21ab2a6b83541394b2be` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/mellin-critical-log--0a2f0ed80185546daa8a4449.md) | 34 | `result-track:0a2f0ed80185546daa8a4449d9dc08ef8e131ce3942eb65dd4642e896fbd4e3c` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/critical-integrable-iff--5af24b47191c556d9dcb79c4.md) | 45 | `result-track:5af24b47191c556d9dcb79c467269bf1a03c7af9e873c8161fc59b14d6b30d4d` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/phase-norm--ba0202b67fcb51d326a2e9f1.md) | 57 | `result-track:ba0202b67fcb51d326a2e9f1e4023c99ee686d6827cc420b3094b4a5fa52515a` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/logfunc-integrable-of-critical--8573349d2292dc357e59a015.md) | 61 | `result-track:8573349d2292dc357e59a015668f24350b912c9912e6192b818470e07e3ca083` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualsource-memlp--d048a5699e4c8216adfcd3c7.md) | 73 | `result-track:d048a5699e4c8216adfcd3c793e610be5330c4a8dbd006396a692fcc9c255978` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualsourcel2--854c8dd1279cc7c5e999f3e8.md) | 82 | `declaration-track:854c8dd1279cc7c5e999f3e813fb8a7efbb21ab56c4e7b2e77a0bc3d2e06c0b0` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualsourcel2-ae--9bc081b024c834f808315597.md) | 85 | `result-track:9bc081b024c834f808315597b23c7793c65947889205717b33b52c9769fc735f` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-log-pointwise--6d6e0c56da90c73c07e6aadf.md) | 89 | `result-track:6d6e0c56da90c73c07e6aadf11b89e7cd6c2a1554abb5e1bf5e4869e1fbc2809` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-log-ae--88b85a08c43f8216cc9174c5.md) | 96 | `result-track:88b85a08c43f8216cc9174c5c35f8bc1f86f425e54ac45aa6ca26e00b2ea6cd8` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-angular-integrable--7a455c2d33a81bb3828f269b.md) | 105 | `result-track:7a455c2d33a81bb3828f269b0cb657d9ea74ec4888468607b6a1920a7d4ac5ae` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-angular-integrable--b08cf4da5b71bcaec692b694.md) | 112 | `result-track:b08cf4da5b71bcaec692b6945fa4953062d09474fb82ffe2e5c187add1e94d6d` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-log-integrable--85d3bbf2a85408bea09372e4.md) | 119 | `result-track:85d3bbf2a85408bea09372e40bb0ec9dba19f9ae5d13f486c0a9d7800990df60` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-mellin-log--e70ec479e0da56821fbbee37.md) | 126 | `result-track:e70ec479e0da56821fbbee372f17ae366f0356606656443b7257e162f2844a4e` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-mellin-log--dec8465d3380c6809d1d804b.md) | 134 | `result-track:dec8465d3380c6809d1d804b4b0534351d80a15d375dd30db6215a6192bc9dd2` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-mellin-log-class--a9e7aa747a76bf9e497095e1.md) | 138 | `result-track:a9e7aa747a76bf9e497095e1ffd958b5c12efbbf585f6cdf5a6bafad65bbbe1f` |
| 18 | `theorem` | [actualQ_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualq-memlp--70b0373e7bb6f3151888ef71.md) | 146 | `result-track:70b0373e7bb6f3151888ef71a45f73f5dccaad80327564162908f0ca14ec475c` |
| 19 | `def` | [actualQClass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualqclass--c682b443ccceb4e66e077eac.md) | 152 | `declaration-track:c682b443ccceb4e66e077eac03c329c0e13c32872183ec4886c5522e112408dc` |
| 20 | `theorem` | [actualQClass_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actualqclass-ae--2220eee33e3cbc3d9fa71afa.md) | 155 | `result-track:2220eee33e3cbc3d9fa71afac7a357430dca076d938708b2b780547667887c06` |
| 21 | `theorem` | [actual_source_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-log-eq--2fa92782063a8a5737a23d4a.md) | 161 | `result-track:2fa92782063a8a5737a23d4aee545ee859d96d7633ffe6683e435b8acb2719ad` |
| 22 | `theorem` | [actual_muntz_log_class_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-log-class-integrable--ed7b73278e3038e9190c4ca3.md) | 165 | `result-track:ed7b73278e3038e9190c4ca3d14c562c3bf7176b39fe1ad3f988377ce5d07954` |
| 23 | `theorem` | [actual_muntz_log_class_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-muntz-log-class-angular-integrable--711b349fc3430e7af94ecbb7.md) | 169 | `result-track:711b349fc3430e7af94ecbb7cf12fb7e1772fc36ea4b2a44778b3d5df7d1efdd` |
| 24 | `theorem` | [actual_source_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/declarations/actual-source-mellin-log-class--8c22c51c07f06380337cec0f.md) | 175 | `result-track:8c22c51c07f06380337cec0f08666be2969d718e9b955e74bca70bc3ce4bd4e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
