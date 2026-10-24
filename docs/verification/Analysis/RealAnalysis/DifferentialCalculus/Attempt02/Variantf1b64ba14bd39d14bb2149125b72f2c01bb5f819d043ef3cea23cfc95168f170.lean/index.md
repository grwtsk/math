# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt02.Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfcd8c026d6b5d7ee500c050f36db8e835b246f2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfcd8c026d6b5d7ee500c050f36db8e835b246f2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/criticalprimetest-contdiff-two--41fdc687556c0861c92f0a0f.md) | 34 | `result-track:41fdc687556c0861c92f0a0fe0af3728d282555bea1fa0608a09d8d005b4a065` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/criticalprimetest-deriv-lipschitz--0a213afa893567803ae80910.md) | 40 | `result-track:0a213afa893567803ae80910d827f09fed240d6034c1297ec369ed82cbe540f9` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/actual-slope-phases-lipschitz--656c5c02256b2852e71e768a.md) | 49 | `result-track:656c5c02256b2852e71e768afb798ca354cdcf3068910c22069e5143d2394c8e` |
| 4 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--972eb823f1f09ecc9bae9a2f.md) | 56 | `result-track:972eb823f1f09ecc9bae9a2fc047d5182363a5b4073f58e2ce08388921da6685` |
| 5 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/pairedtailcurvature--e18e5fe4026afcfe7b48ee37.md) | 71 | `declaration-track:e18e5fe4026afcfe7b48ee3798d28591f239a45f49782d21817a57510bf24825` |
| 6 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/pairedtailcurvature-intervalintegrable--0388d747dee4b816d2acf2cf.md) | 73 | `result-track:0388d747dee4b816d2acf2cfd851c390df72a9b52ae51781b98c41760f94f865` |
| 7 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/pairedtailcurvature-ae-hasderivat--7420d655c72716e69510d9ac.md) | 77 | `result-track:7420d655c72716e69510d9ac6aca6e04b2440476be4e203167903cc5c5675e1d` |
| 8 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/pairedtailtest-deriv-integral-zero--f92175a27568e02e774a6052.md) | 85 | `result-track:f92175a27568e02e774a60527df3d2d5afe2248534695fbce1de23330ed7c1d8` |
| 9 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/actual-delta-pairing-intervalintegrable--9b72dc07c6b0f1377cc8bb51.md) | 93 | `result-track:9b72dc07c6b0f1377cc8bb51430d63611de1c3e65effb50f1d3ea2783fc5ddad` |
| 10 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/actual-first-abel--9b49aaa0f4ab2528d0d8da78.md) | 101 | `result-track:9b49aaa0f4ab2528d0d8da784242c5a9a7a0facbc69235355dfdda224cddc91f` |
| 11 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/actual-bridge-curvature-intervalintegrable--93a8c3f380c5202cf5ceb511.md) | 138 | `result-track:93a8c3f380c5202cf5ceb511239b3445c0a4a3708cbed554f2a901e7337299d9` |
| 12 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/declarations/actual-second-abel--bea39d77468682032439b4dd.md) | 146 | `result-track:bea39d77468682032439b4ddc7f0e659253668e89d26de54abb8ba794d14344d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
