# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt03.Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0cf645768ee92c68fd1b46cb09831800fd68d18",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0cf645768ee92c68fd1b46cb09831800fd68d18`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/criticalprimetest-contdiff-two--9ae5d06b14d652a9aa756f2e.md) | 26 | `result-track:9ae5d06b14d652a9aa756f2ea680e2dadc8aa7f9edfe825f4a3f251706f6e7a0` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/criticalprimetest-deriv-lipschitz--98331b1a04baba9ff2aa00a4.md) | 32 | `result-track:98331b1a04baba9ff2aa00a41bdc0daabfea17dd36104cce4721dfa842912320` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-slope-phases-lipschitz--827bd76f6f0f6d6c255e2647.md) | 41 | `result-track:827bd76f6f0f6d6c255e2647b5caeba7faae33f65c50e96fd16333aeb3d29bb9` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailtest-deriv-lipschitz--56dc7fede80c877acb5ec7ed.md) | 48 | `result-track:56dc7fede80c877acb5ec7edcd8e5da6bccf37def2331b12cd47d56d2f444330` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--1167f8a4e7601b739b5a97bf.md) | 61 | `result-track:1167f8a4e7601b739b5a97bf2f76f1394a04644a048df3583793cadaa234df72` |
| 6 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailcurvature--277de3543dbf9a34f254e9af.md) | 76 | `declaration-track:277de3543dbf9a34f254e9af834bd850f1adfd24ef5ca038dae41ddbbc9138c9` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailcurvature-intervalintegrable--4d4a4da035dff886cc6a9825.md) | 78 | `result-track:4d4a4da035dff886cc6a9825a1699383e214afd8cdbf7eb3bb251f6b484e536b` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailcurvature-ae-hasderivat--f6dfd52855f8631c7590576d.md) | 82 | `result-track:f6dfd52855f8631c7590576d11d2661b0fc724a87456dd7cbfecb1e593d8e05b` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/pairedtailtest-deriv-integral-zero--6575ceae8b2b8ee445ee41fd.md) | 90 | `result-track:6575ceae8b2b8ee445ee41fd9e142e02827cfbc1f5e3f6a145b3ec3e5f1c136a` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-delta-pairing-intervalintegrable--8e1971d47de7a5d418c00cec.md) | 98 | `result-track:8e1971d47de7a5d418c00cec7c61c2d14081568313fd30e3bf07e78557cbaf67` |
| 11 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-first-abel--f5333d4ead9599c977348028.md) | 106 | `result-track:f5333d4ead9599c97734802805d7ffb47a7a9c0605ef616c16d311aadda30f2b` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-bridge-curvature-intervalintegrable--c5c573f4531defb474107600.md) | 143 | `result-track:c5c573f4531defb4741076000808e85e325ce79e563b758e97e60b6000e4ef6c` |
| 13 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-second-abel--630dc577281b5eebb65c7345.md) | 151 | `result-track:630dc577281b5eebb65c734588aa8f6bcad811618bdecbc04a259519520a3549` |
| 14 | `def` | [negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/negativecurvaturework--49f0a6707b4782bf56c05b5b.md) | 178 | `declaration-track:49f0a6707b4782bf56c05b5bdbc7a6f4346b1babdb145e0abeba5db4ead50109` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/negativecurvaturework-integrand-intervalintegrable--1f0320e46ff5be77f2926aac.md) | 181 | `result-track:1f0320e46ff5be77f2926aacb8ecd1acb33c7c2b0f8ebced52141b2f4cd66314` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/negativecurvaturework-nonneg--923e21056b364833fbb882bd.md) | 196 | `result-track:923e21056b364833fbb882bd21dfc92f17f48ee29a2ba4d38976fc877a848cd0` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-work-ge-negativecurvaturework--c37c7ef8b6428956d9d0201d.md) | 201 | `result-track:c37c7ef8b6428956d9d0201d9f0913db01761185495281c47a51032a2181cff1` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/negativecurvaturetailbudget--65b53155ec5e276c61a5e0b3.md) | 213 | `declaration-track:65b53155ec5e276c61a5e0b3cd3e5b0aadd5aef2d19630200a68e4321b7604bf` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-tail-of-negativecurvature-budget--40ad1d9073174dd3147e4c41.md) | 216 | `result-track:40ad1d9073174dd3147e4c41d2837ee2c751f3fb2731c8974f7495696218697f` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant518b9da984ff4f68a9ce44967cc8ee13ce801ff84a12952b87f91d84937afeac.lean/declarations/actual-estimate-of-negativecurvature-budget--cfd06eb8042f1679b0b81490.md) | 224 | `result-track:cfd06eb8042f1679b0b814900a9d52e2d9cd185949f69f1258b8c8dde2cfd5ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
