# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219db99a967f1b5ebc71c7f57062eed738e4e4dc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219db99a967f1b5ebc71c7f57062eed738e4e4dc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/criticalprimetest-contdiff-two--023bd99d0b2a7c6d4a799ad9.md) | 35 | `result-track:023bd99d0b2a7c6d4a799ad98b1571f8e7a6ddac3f4d01426df3a36c7be53d36` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/criticalprimetest-deriv-lipschitz--cd7cadc4a8add85f717b826b.md) | 41 | `result-track:cd7cadc4a8add85f717b826bfcc4811f40dc51b444c8ef7952f1ee7df3801466` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-slope-phases-lipschitz--3a171bdb4db26146baa8c052.md) | 50 | `result-track:3a171bdb4db26146baa8c0526b1065ef6af73c5bdb70afca2a2d410b1f8b9e9b` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailtest-deriv-lipschitz--d2c29a866a9a8edaf4705d50.md) | 57 | `result-track:d2c29a866a9a8edaf4705d50598abbdb74ae80e707bf6242e2978672e2cc64c7` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--6cd30f1236465d28d22247a9.md) | 73 | `result-track:6cd30f1236465d28d22247a92b57a5a77ae1ec1b65df6ab9c1e005146a57bea0` |
| 6 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailcurvature--8f310968ae1b18edf982a858.md) | 88 | `declaration-track:8f310968ae1b18edf982a8580f67f5ce615b62b672eee88a3ba3e1464db7d0fe` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailcurvature-intervalintegrable--fa34c61cf9dcde887cf5095d.md) | 90 | `result-track:fa34c61cf9dcde887cf5095d216e0238a2f156c1ffae38c3a15f67109f49242b` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailcurvature-ae-hasderivat--cfac666b95ff27c6b549f2eb.md) | 94 | `result-track:cfac666b95ff27c6b549f2ebfb96380053118d55dcbab63da45b7e625b3688ff` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/pairedtailtest-deriv-integral-zero--97e7a61bfe8f11b59d15699e.md) | 102 | `result-track:97e7a61bfe8f11b59d15699eada4a0475fca9c5f522941bfd10f2e9bcf572493` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-delta-pairing-intervalintegrable--a49869b724bf1ab9a2020662.md) | 110 | `result-track:a49869b724bf1ab9a2020662a51228bd3df5d4537c4dce929b2f921b40fa24a8` |
| 11 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-first-abel--fa47addde06ba1001f43dde8.md) | 118 | `result-track:fa47addde06ba1001f43dde80bf3a682d97b7fd3fb09d478087e5ab265175d78` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-bridge-curvature-intervalintegrable--a574aeda4c005e71701a67dc.md) | 155 | `result-track:a574aeda4c005e71701a67dc3bb06412c2385aa15563d2a16a9d33d2a06cf3f3` |
| 13 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-second-abel--47fafd3e2a4e6c49e608ec48.md) | 163 | `result-track:47fafd3e2a4e6c49e608ec485f86f4e963890308962bd54114cd36fb0bcf7fa7` |
| 14 | `def` | [negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/negativecurvaturework--2f779fa9e22c992c43c55250.md) | 190 | `declaration-track:2f779fa9e22c992c43c552508cd51375b4733eee09cf0cd2ff67c1bb4e2d1323` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/negativecurvaturework-integrand-intervalintegrable--56a30cc38c71e3d83be7f269.md) | 193 | `result-track:56a30cc38c71e3d83be7f269b4ab38750f46bd73214c8a0e686c056b6f6feae0` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/negativecurvaturework-nonneg--fbf3730801b3d25d043ea55f.md) | 208 | `result-track:fbf3730801b3d25d043ea55fd6d41c7e6657fa89ce3fadc704b4d149ac615d04` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-work-ge-negativecurvaturework--950af53e833a7a262cdcf6ba.md) | 213 | `result-track:950af53e833a7a262cdcf6ba887ca2d1722293726ba54ae5c83b217a86354d11` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/negativecurvaturetailbudget--e95d10cace117d8e1de36ec6.md) | 229 | `declaration-track:e95d10cace117d8e1de36ec68967b817ae6e97372983b495c711d5ad2b4b09ea` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-tail-of-negativecurvature-budget--d60cc0946fef1a64a4fbebfd.md) | 232 | `result-track:d60cc0946fef1a64a4fbebfd0d64ddf94f872f20055936d44996b9330679716c` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant53dc30fc24eba41ff6ad1277070fad5e931342d20cb8876bf43cd529a8997eee.lean/declarations/actual-estimate-of-negativecurvature-budget--f5a9a77e1b60844535edd14e.md) | 240 | `result-track:f5a9a77e1b60844535edd14efea66f8fe274c34c137e7a9312e63239f7643346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
