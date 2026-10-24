# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt06.Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5be770a42d26cd54f964ac750ac76acc9dde01e2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5be770a42d26cd54f964ac750ac76acc9dde01e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/criticalprimetest-contdiff-two--f64c166eac0099d75936b7b9.md) | 27 | `result-track:f64c166eac0099d75936b7b9c5621ef5b2ef4f08dc43d7217b12679ba2ccde72` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/criticalprimetest-deriv-lipschitz--6636e3fd1a5ccfc7b439a70b.md) | 33 | `result-track:6636e3fd1a5ccfc7b439a70bb87a29f43634a05524b3613cddd7d5fb8b032579` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-slope-phases-lipschitz--530b248c6b55556a136cf1e1.md) | 42 | `result-track:530b248c6b55556a136cf1e1f37c277aecf92c3ca71b62a4a4f21880d977af19` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailtest-deriv-lipschitz--f69df57632c6b95741b603ba.md) | 49 | `result-track:f69df57632c6b95741b603ba069af3c2c5247a441f54f68d9bc761a488fd9bed` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--3d595d919d157e7fc99f0079.md) | 65 | `result-track:3d595d919d157e7fc99f0079a6aa00d168738fa651621f4f9fc88ff60525628b` |
| 6 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailcurvature--62e99eeabfee0994d6b40022.md) | 80 | `declaration-track:62e99eeabfee0994d6b400220ce6aec9ba1f11188b77aa150455ce10d8154082` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailcurvature-intervalintegrable--e31d325c2285f1816c6f03c6.md) | 82 | `result-track:e31d325c2285f1816c6f03c6ff5f9b2ac7ede85469fda3fa05b9082e7ed9a1cd` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailcurvature-ae-hasderivat--f95f3524a6452b9edcb69782.md) | 86 | `result-track:f95f3524a6452b9edcb69782f32ce9bcb99d3a781b4de46131389de5f6739100` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/pairedtailtest-deriv-integral-zero--77422f9863d0396396907c47.md) | 94 | `result-track:77422f9863d0396396907c471e4f9c4fa6e55896b9f09ed16f37db8ee04b6b9d` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-delta-pairing-intervalintegrable--3adfff5d26b904d01be1f59a.md) | 102 | `result-track:3adfff5d26b904d01be1f59a19f5374d82a81785fa90993325557ed4b70276d8` |
| 11 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-first-abel--4eb768038c8c97c04c6ea9b2.md) | 110 | `result-track:4eb768038c8c97c04c6ea9b295eb8fb00009d66729f17086ddf9344fd1f371e8` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-bridge-curvature-intervalintegrable--d7e2ef87fd0f94ec2c1fb994.md) | 147 | `result-track:d7e2ef87fd0f94ec2c1fb99478d2b01238257227d9a4e8a8a2ea7685e6c1d630` |
| 13 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-second-abel--2b225f8b22af4f4ac5a05b46.md) | 155 | `result-track:2b225f8b22af4f4ac5a05b46c0bed6cdd139d858220dbfc2a8b9f18ea3f29c26` |
| 14 | `def` | [negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/negativecurvaturework--37ed84d9d63c403b92a34755.md) | 182 | `declaration-track:37ed84d9d63c403b92a34755fc3d7ef5bbfe17d20c423cdad0627ad67278ad08` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/negativecurvaturework-integrand-intervalintegrable--b1348cdd7504bfb5f7f5ba9b.md) | 185 | `result-track:b1348cdd7504bfb5f7f5ba9bc809ddce7dc4893afd0c7b941681113fe3597115` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/negativecurvaturework-nonneg--7c55f229ddbceaa25617cad7.md) | 200 | `result-track:7c55f229ddbceaa25617cad7694710856280c6d057092c751847ed21ae61ce9f` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-work-ge-negativecurvaturework--ef961c550d910013a92b64d7.md) | 205 | `result-track:ef961c550d910013a92b64d762f973fdb7cf89504ac0be837b73b1db5a4f26bb` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/negativecurvaturetailbudget--5c6a21047dbc155a4da795af.md) | 221 | `declaration-track:5c6a21047dbc155a4da795af7cce2c3b837af5cfd1d45a1ceb5c915f0e94829e` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-tail-of-negativecurvature-budget--1f33ee222759f01fa40b57f5.md) | 224 | `result-track:1f33ee222759f01fa40b57f57c5cc8a3c0a149716387cdc73620bebb958a1ac3` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant694b32535e2d53c9333a6926df78a57328008edf55718cbb3d513540a561181d.lean/declarations/actual-estimate-of-negativecurvature-budget--4ed42dbc4f1fad4f5303c14e.md) | 232 | `result-track:4ed42dbc4f1fad4f5303c14e9c7e878da9d391b5e2f913d166275e0044620bad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
