# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt05.Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbf76176f17737618854edbecacf6383652fe53f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbf76176f17737618854edbecacf6383652fe53f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/positiveloglift--11ffa83737e58e837321f96e.md) | 18 | `declaration-track:11ffa83737e58e837321f96efeb8e3f1fc09753494245dfaa67782ff7709fe98` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/positiveloglift-exp--bc2d7be9a6c05672cd2024e0.md) | 21 | `result-track:bc2d7be9a6c05672cd2024e07e3e8bb3ef2c2212d175cb77160bd57ac758236e` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/exp-square-weight--4b13617f305fe6f142093de4.md) | 25 | `result-track:4b13617f305fe6f142093de47c6f43e64146c91f536c68b8844ba0c2f637172d` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-square-jacobian--ee48aa1c2841d8a8e503a399.md) | 31 | `result-track:ee48aa1c2841d8a8e503a3997b3bb7f0395f07d0dd6cbac6fda613083b179718` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-square-integrable-iff--576761210ce315add70f7773.md) | 38 | `result-track:576761210ce315add70f7773f97706722523bf33f95c140dd048560862423d2e` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-square-integral--b17de3940c8d0c15dc42a866.md) | 49 | `result-track:b17de3940c8d0c15dc42a866fadbfd496568f7c23cb16a9eee92b10fd30b07db` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/actuallogsource--9e2bf9a559918170ab5ea1f7.md) | 60 | `declaration-track:9e2bf9a559918170ab5ea1f724bacb6bf430ff7da965a77e28934a9b95aab9f3` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/actuallogsource-square-integrable--ebfbb44a02fe5adc513f07e7.md) | 63 | `result-track:ebfbb44a02fe5adc513f07e763d2289d178b851a580b37917f246b97911babd6` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/actuallogsource-square-integral--d2cd2f88473cbf921c7fccae.md) | 67 | `result-track:d2cd2f88473cbf921c7fccaedb921e47fcac6560c96b999fa133b099d3b06fc2` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/positiveloglift-dilation--c4285e921a134a434b9d5e5a.md) | 72 | `result-track:c4285e921a134a434b9d5e5a45db075be4dbcce724f3acf4bbbd6f97b831af83` |
| 11 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-mellin-jacobian--34a20425fbbb86b09bdd3a4f.md) | 81 | `result-track:34a20425fbbb86b09bdd3a4f6886d7cefdde90fe67945ddfc90ef17828228a6f` |
| 12 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-mellin-eq-bilateral--10cde47fb5b49464cb680ff0.md) | 95 | `result-track:10cde47fb5b49464cb680ff069bba1a8cbf528aa8812f232a9cdeaed7ec3c3e2` |
| 13 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/lift-mellin-integrable-iff--96fcd6ed581625a3d66f4a0f.md) | 107 | `result-track:96fcd6ed581625a3d66f4a0f351cbd54224747e9496fb7fc3b7d5fb6c3e5c315` |
| 14 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/actuallogsource-mellin-integrable--1a7732a007c91e994e213e05.md) | 118 | `result-track:1a7732a007c91e994e213e0571e96bdafb5cb44eb11438b588370d5df166905f` |
| 15 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variant9f0f6da205c8f965cc3ca8ed8141e43097e5adaed090ab795a499b5d4f0426e4.lean/declarations/actuallogsource-mellin-critical--13efe16aed27b16b9d65b763.md) | 127 | `result-track:13efe16aed27b16b9d65b763b2ea1349e52d7260c562de9fff55e645a57368f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
