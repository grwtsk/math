# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7620d3c70a3e0b0300746cbec9527bd9790cfa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7620d3c70a3e0b0300746cbec9527bd9790cfa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodea--2fbb07685ec2bdb67a799df2.md) | 25 | `declaration-track:2fbb07685ec2bdb67a799df2160daf05bc664ca8d52e7e391a53d5a9f4c9d36b` |
| 2 | `def` | [thetaModeY](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodey--a380fe53496f11f6f204fd47.md) | 28 | `declaration-track:a380fe53496f11f6f204fd47a7d2028731d492d883bbe9a50e24e1075d284e3a` |
| 3 | `def` | [thetaModeScore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodescore--604e53fc39738757e756a0a6.md) | 32 | `declaration-track:604e53fc39738757e756a0a6e45e786134394c17435d040e3df6c750427d6c81` |
| 4 | `def` | [thetaModeCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodecurvature--31b78e08e6686fec483ad778.md) | 36 | `declaration-track:31b78e08e6686fec483ad7788f4c2491810772a82364125db946e2adfd608d4e` |
| 5 | `def` | [thetaPhiTermDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphitermderiv--70bf67a753a86decd08d360e.md) | 40 | `declaration-track:70bf67a753a86decd08d360e9eaa27438c3e97ec005f32ceb60e515f05d691a4` |
| 6 | `def` | [thetaPhiTermSecondDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphitermsecondderiv--d003e25741dedd5ae5739027.md) | 45 | `declaration-track:d003e25741dedd5ae5739027cc27b458edae1dc35d78823be8eebb5976e255fc` |
| 7 | `theorem` | [thetaPhiTerm_eq_mode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphiterm-eq-mode--f3c130d5d6e061a57dc4b2bb.md) | 51 | `result-track:f3c130d5d6e061a57dc4b2bbafec72c333fb782036f805a82ec88be3db9de0c2` |
| 8 | `theorem` | [hasDerivAt_thetaModeA](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-thetamodea--f6ae03ddf3cffd985b8281c8.md) | 59 | `result-track:f6ae03ddf3cffd985b8281c844422511575a90d94a352370377773390ea86d6c` |
| 9 | `theorem` | [hasDerivAt_thetaModeY](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-thetamodey--ec1e013d7ae3f9410a0d9ffd.md) | 67 | `result-track:ec1e013d7ae3f9410a0d9ffd15c7ff380587b4661c457bac1ce5c1cd3d054f22` |
| 10 | `theorem` | [hasDerivAt_modePrefactor](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-modeprefactor--e0160d61d5f40530ec57655e.md) | 73 | `result-track:e0160d61d5f40530ec57655efa9985e8c9f5f71c3c28ece214a69f1ed4d6dac6` |
| 11 | `theorem` | [hasDerivAt_thetaPhiTerm_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-thetaphiterm-raw--25c1c9d3e6b1845bb5e5c25e.md) | 82 | `result-track:25c1c9d3e6b1845bb5e5c25e5928eb2c32d7bc75391e57228ed7622b3cf59ad3` |
| 12 | `theorem` | [hasDerivAt_thetaPhiTermDeriv_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-thetaphitermderiv-raw--9be696614c13a16ec128f465.md) | 96 | `result-track:9be696614c13a16ec128f46541c9345281539634de383c3108bc66cbe6c110b0` |
| 13 | `theorem` | [thetaPhiTermDeriv_eq_score](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphitermderiv-eq-score--e5fd680729b1acde64745ccf.md) | 107 | `result-track:e5fd680729b1acde64745ccfa2fd78303d7b26ce08c345444f1a91a284a6ab0c` |
| 14 | `theorem` | [thetaPhiTermSecondDeriv_eq_score_curvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphitermsecondderiv-eq-score-curvature--c1b3716eb6c42a47e65e6419.md) | 120 | `result-track:c1b3716eb6c42a47e65e64192b9a9b66141e1eefd65f2f7d29b807889faefa39` |
| 15 | `theorem` | [hasDerivAt_thetaModeScore](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/hasderivat-thetamodescore--0d8e60ccadcac33ce9e53d48.md) | 139 | `result-track:0d8e60ccadcac33ce9e53d48509725e448abfaf01d75d0132a8c167d45f1ca50` |
| 16 | `theorem` | [thetaModeA_gt_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodea-gt-three--3a5dc3b787147e9aa44151a2.md) | 150 | `result-track:3a5dc3b787147e9aa44151a243d39e604c9a028b88795f9a2fa411a4e207b14a` |
| 17 | `theorem` | [thetaModeA_le_thetaModeY](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodea-le-thetamodey--85ddf604011ef7ecac6b4f1b.md) | 156 | `result-track:85ddf604011ef7ecac6b4f1b08fee4da34bd4a159ce6ae0add7b881c7c648cd8` |
| 18 | `theorem` | [thetaMode_den_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamode-den-pos--df90ff70c8ed2df70a0a325b.md) | 164 | `result-track:df90ff70c8ed2df70a0a325b18427c76a3cc3c069935caa0a9e0b76121560c22` |
| 19 | `theorem` | [thetaModeCurvature_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodecurvature-le--ec5992f8c6e05601ce7b918d.md) | 171 | `result-track:ec5992f8c6e05601ce7b918d336da918e0fa7477502c94289095208e7b5738a1` |
| 20 | `theorem` | [abs_thetaModeScore_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/abs-thetamodescore-le--6e597348bab1cd1cfdf56d55.md) | 181 | `result-track:6e597348bab1cd1cfdf56d558555b5ccd85b44e793f0c01088e76630bce4d100` |
| 21 | `theorem` | [abs_thetaModeCurvature_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/abs-thetamodecurvature-le--90cbf192ea7b460ee830ea0f.md) | 194 | `result-track:90cbf192ea7b460ee830ea0f99d46bbb1574c496cf0777cf486aa2748c3d6a78` |
| 22 | `theorem` | [thetaModeScore_sub_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodescore-sub-nonnegative--2322cb8822eeffe8265023db.md) | 210 | `result-track:2322cb8822eeffe8265023db20cf9c4b58bab4b4fdab6be266dd77945a79ab67` |
| 23 | `theorem` | [thetaModeScore_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetamodescore-sub-le--4b3ace84710dbea3df91b43e.md) | 221 | `result-track:4b3ace84710dbea3df91b43e516525daa4620c2d7a97816845b16e57135d0a79` |
| 24 | `theorem` | [thetaPhiTerm_div_zero_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphiterm-div-zero-eq--1dec3b6cd3f58e05bf1a5b62.md) | 247 | `result-track:1dec3b6cd3f58e05bf1a5b621b03e7cdf4bce9715b19de16596112ca09dfce59` |
| 25 | `theorem` | [thetaPhiTerm_div_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant18f7ea380558ec5c728142eaee207b870d1bb880e24bcf8829a3e1d30110ff8f.lean/declarations/thetaphiterm-div-zero-le--c7970f1932510f8e636cd5b8.md) | 265 | `result-track:c7970f1932510f8e636cd5b8e1680308ff1e6fdd9168b67f28a43fc01900be9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
