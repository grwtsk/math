# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogMellinAttempt04.Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaa055a4be683573202f3a1b1962ab460c099edc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaa055a4be683573202f3a1b1962ab460c099edc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean.json)

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
| 1 | `def` | [angularIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/angularintegral--8089b9f9f66d18bb51d778a8.md) | 19 | `declaration-track:8089b9f9f66d18bb51d778a83785f0571957eca688a7f13dce440025946fba26` |
| 2 | `theorem` | [critical_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/critical-jacobian--223aeb515687e07d2cf0d96c.md) | 22 | `result-track:223aeb515687e07d2cf0d96c020debec5d72f3bb9256718969f698c605824f7b` |
| 3 | `theorem` | [mellin_critical_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/mellin-critical-log--b52a97b9804b7fe764213920.md) | 34 | `result-track:b52a97b9804b7fe76421392052e9d4599ddd48045e348cbf10e5fdd0034c3d06` |
| 4 | `theorem` | [critical_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/critical-integrable-iff--ced640f39a250f7c1b011186.md) | 45 | `result-track:ced640f39a250f7c1b01118651232721260a224d6e9508cf7dcf786a27c7da59` |
| 5 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/phase-norm--4b10b2c40ec638a9355d26a0.md) | 57 | `result-track:4b10b2c40ec638a9355d26a0fa0b0dc4642d9807262a17b1de9b09c93e2974e9` |
| 6 | `theorem` | [logFunc_integrable_of_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/logfunc-integrable-of-critical--9cc3e9a420a33c6a4f8ed121.md) | 61 | `result-track:9cc3e9a420a33c6a4f8ed1211d46ecdd52c307eaa86d57c87bac1a46569ade1d` |
| 7 | `theorem` | [actualSource_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualsource-memlp--9dda650e481e8b69e3131dc3.md) | 73 | `result-track:9dda650e481e8b69e3131dc3300869f51108befc6926f85d48f88eafa2a0c9aa` |
| 8 | `def` | [actualSourceL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualsourcel2--a306289d5cc100e460fb18ed.md) | 82 | `declaration-track:a306289d5cc100e460fb18ed0e9b81452cbfce816e5414fe0698c4cc7ba0f714` |
| 9 | `theorem` | [actualSourceL2_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualsourcel2-ae--b72bd1ddc78a69e85db254a4.md) | 85 | `result-track:b72bd1ddc78a69e85db254a43e1e746f20e8e50cd7ea320541e8ecf93a171f09` |
| 10 | `theorem` | [actual_source_log_pointwise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-log-pointwise--259e7020294078b972eeaff5.md) | 89 | `result-track:259e7020294078b972eeaff5771e262a661be18a8a575f6050170d45742cc693` |
| 11 | `theorem` | [actual_source_log_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-log-ae--ca8e1e1dfcf576db2729b49d.md) | 96 | `result-track:ca8e1e1dfcf576db2729b49d8e0b48c9e3fa57148aa1a8218039f61c8ad67671` |
| 12 | `theorem` | [actual_source_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-angular-integrable--238f1785a523c186e6f25d52.md) | 105 | `result-track:238f1785a523c186e6f25d521273ffcddf9eaeea13019c82a0cb578a30bb45a4` |
| 13 | `theorem` | [actual_muntz_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-angular-integrable--2b49e8495437c690df1ae600.md) | 112 | `result-track:2b49e8495437c690df1ae6003fc6fdcf4760aa92a30a416a8acd51a5dae9bb03` |
| 14 | `theorem` | [actual_muntz_log_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-log-integrable--cf38dcbc6601e407fd7d1d9c.md) | 119 | `result-track:cf38dcbc6601e407fd7d1d9c459f3dd3c9738bacd698cd5146ae4d2fadedba8d` |
| 15 | `theorem` | [actual_source_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-mellin-log--fbbc1dbe1e63e579d10ad583.md) | 126 | `result-track:fbbc1dbe1e63e579d10ad583565d41b1e9631a36df2426264617b6531e5c9b31` |
| 16 | `theorem` | [actual_muntz_mellin_log](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-mellin-log--2f2687bd627862f72a373133.md) | 134 | `result-track:2f2687bd627862f72a3731332f27eaef991b0077680a1e9af987196ae73bf1eb` |
| 17 | `theorem` | [actual_muntz_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-mellin-log-class--fc7c4bd3d349bd299cbf9a4a.md) | 138 | `result-track:fc7c4bd3d349bd299cbf9a4ad7b1f512a91383373f8490fbecac82d4a96454fa` |
| 18 | `theorem` | [actualQ_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualq-memlp--96740edce1f209e85ff110fa.md) | 146 | `result-track:96740edce1f209e85ff110fa3a72203dcd96eca0d2169f61f2a90c9747559e94` |
| 19 | `def` | [actualQClass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualqclass--8e7fa75098abc48384316868.md) | 152 | `declaration-track:8e7fa75098abc48384316868621a5da20454dfb4b5eefc83d8ea3254a6475916` |
| 20 | `theorem` | [actualQClass_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actualqclass-ae--a73480553f4ae406a930eb08.md) | 155 | `result-track:a73480553f4ae406a930eb08de19b049413c3ed913c1e494d61fd6ba647b1f2b` |
| 21 | `theorem` | [actual_source_log_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-log-eq--e99e59a23d3f8d175cdeb84b.md) | 161 | `result-track:e99e59a23d3f8d175cdeb84bfdae45b19923a5d0e6e717009fa06dff1e14ef47` |
| 22 | `theorem` | [actual_muntz_log_class_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-log-class-integrable--335eb4fa1e77c8ac417620a4.md) | 165 | `result-track:335eb4fa1e77c8ac417620a4e4012c944a363e99fcb8d568051d272e624661fd` |
| 23 | `theorem` | [actual_muntz_log_class_angular_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-muntz-log-class-angular-integrable--7b9c37a0a7e431089487ebc4.md) | 169 | `result-track:7b9c37a0a7e431089487ebc45d805ade9f5496fcc7a665877b8ffb1d25659e72` |
| 24 | `theorem` | [actual_source_mellin_log_class](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogMellinAttempt04/Variant21e3a946525a48c4a80c8d9f4569e888db4bea4884f354118f2c079e2d7d0de4.lean/declarations/actual-source-mellin-log-class--2132b8410aae7666cb4d525d.md) | 175 | `result-track:2132b8410aae7666cb4d525d025203115aac20c38773b7d5c2f14fcbcf534bb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
