# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt04.Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4311440c5abbf655453dbaf1a68c26ca2d11bc12",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4311440c5abbf655453dbaf1a68c26ca2d11bc12`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/positiveloglift--a981e2a538231e780edad88f.md) | 26 | `declaration-track:a981e2a538231e780edad88fcadb9a14ebbcaa35cd73a991e754db765d173457` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/positiveloglift-exp--ce291e434c10a57aeee63166.md) | 29 | `result-track:ce291e434c10a57aeee6316645b0f6ad7e5804e09b158702c22bdbcce3af04ec` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/exp-square-weight--b94e8222e2057203871f8d8c.md) | 33 | `result-track:b94e8222e2057203871f8d8c19115e035be3c38ed019a0017ce3d2ada8acaf7f` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-square-jacobian--e7a1a369df72d755453d1e6e.md) | 39 | `result-track:e7a1a369df72d755453d1e6efbbc3956633cf8ec01453df938b67a3f7152acf2` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-square-integrable-iff--18925f5488cd58fe604aa7ea.md) | 46 | `result-track:18925f5488cd58fe604aa7eaa205fc2eeb8743026fb729de7bedca0505fcb4f1` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-square-integral--751e0c325aade00db56ee80d.md) | 57 | `result-track:751e0c325aade00db56ee80d2807a588fc0a0157fbc47077eea29b3caed0e679` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/actuallogsource--880d0054dc1dfedcdc85fe97.md) | 68 | `declaration-track:880d0054dc1dfedcdc85fe97f228c3717f311fe44109e8bef4e2663b4e6eaa3a` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/actuallogsource-square-integrable--4e3710258a4ab0877afbcbbf.md) | 71 | `result-track:4e3710258a4ab0877afbcbbf1d832b2b5380115e99b312c34fc2b36994bf7ca5` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/actuallogsource-square-integral--a52b90455a3d9ab4f1329a1a.md) | 75 | `result-track:a52b90455a3d9ab4f1329a1a5886e5355199c7359f07fbe81b0ec7d5c5e331f9` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/positiveloglift-dilation--ea4b04a272e87d3e85b1c682.md) | 80 | `result-track:ea4b04a272e87d3e85b1c682cf5022d7d2b12884e4e77775260bd7124590f2e1` |
| 11 | `theorem` | [lift_mellin_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-mellin-jacobian--7c699cc5c222b0fc33bcc969.md) | 89 | `result-track:7c699cc5c222b0fc33bcc969023f127e2e4cbc2826f062fb75c4153a64ad7338` |
| 12 | `theorem` | [lift_mellin_eq_bilateral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-mellin-eq-bilateral--d5f128a1807f16f594181b13.md) | 103 | `result-track:d5f128a1807f16f594181b133111dd61d6d2f8b27e4a6e4403c6c9fc8f6df550` |
| 13 | `theorem` | [lift_mellin_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/lift-mellin-integrable-iff--9239601c30f7977f2b6391c7.md) | 115 | `result-track:9239601c30f7977f2b6391c7b6d4e431ea7335ff4e371ac71c834302b319ec1d` |
| 14 | `theorem` | [actualLogSource_mellin_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/actuallogsource-mellin-integrable--e655bc73e8f070cf03d599c1.md) | 126 | `result-track:e655bc73e8f070cf03d599c18d6223d98d228dcf45a68156580eb30ef534cd60` |
| 15 | `theorem` | [actualLogSource_mellin_critical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt04/Variant5700166d7ba84ab4d340082bdb48f205469dceb7cac2a5de107740d2965ce6c0.lean/declarations/actuallogsource-mellin-critical--f76ed20672421a9e83beda60.md) | 135 | `result-track:f76ed20672421a9e83beda602047f0c2d9f8c10ca9860e8a8d7f08abd121780e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
