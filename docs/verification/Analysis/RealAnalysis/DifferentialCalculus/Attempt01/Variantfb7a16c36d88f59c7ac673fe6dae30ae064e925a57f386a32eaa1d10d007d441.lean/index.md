# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36b3aa8539c9949b2beb9943e5a4d39a855973b1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36b3aa8539c9949b2beb9943e5a4d39a855973b1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/criticalprimetest-contdiff-two--380160d6c27c55d17431b4d2.md) | 26 | `result-track:380160d6c27c55d17431b4d2f1ac88c387442eca7ed6bee4a0871b277269e3e5` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/criticalprimetest-deriv-lipschitz--b5dcb483631d01a502bac43b.md) | 32 | `result-track:b5dcb483631d01a502bac43b7c25bbe4beb424a0280d7a3de531b33cd451fb7c` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/actual-slope-phases-lipschitz--fd5d00c38ec40885dd21d61d.md) | 40 | `result-track:fd5d00c38ec40885dd21d61d29115a79f79fa6e554d596b616f980ed8a74b76f` |
| 4 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--77ab43551e25e5151a2de6ed.md) | 47 | `result-track:77ab43551e25e5151a2de6ed1887a992db098cf3bf2355dd2e29dbe0cfdc0088` |
| 5 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/pairedtailcurvature--768da0035b8892bd66788589.md) | 62 | `declaration-track:768da0035b8892bd6678858929ad949fdee4e31d7641bdd3e1095838ab714245` |
| 6 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/pairedtailcurvature-intervalintegrable--b1bab5f398e7a244e9c7afb8.md) | 64 | `result-track:b1bab5f398e7a244e9c7afb8bdf21d4297020ddc81eb5f78cd587059af96710a` |
| 7 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/pairedtailcurvature-ae-hasderivat--fc52f37bcdbdbf35098449ed.md) | 68 | `result-track:fc52f37bcdbdbf35098449ede00defb2564d32d5054ab25644ecdfe2b6a93237` |
| 8 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/pairedtailtest-deriv-integral-zero--f9e8a91ddda4f1b72fe264c8.md) | 76 | `result-track:f9e8a91ddda4f1b72fe264c85c5bfb16725e1ffbd02da87e50d1d2c359dcb638` |
| 9 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/actual-delta-pairing-intervalintegrable--9d1afb93d38f5ffcc6518a43.md) | 84 | `result-track:9d1afb93d38f5ffcc6518a4345d023b8d7e00244037bb3d3bc5304d4ddd75ebc` |
| 10 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/actual-first-abel--ad550bd8a08cbe4f3a00854a.md) | 92 | `result-track:ad550bd8a08cbe4f3a00854aa2255e1b47d722535767b717bc1453845ed3d408` |
| 11 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/actual-bridge-curvature-intervalintegrable--2a10a9030823a380d73bd3cc.md) | 129 | `result-track:2a10a9030823a380d73bd3cc52b28634559a15545d7881a8cefeae1cbe9d1ecb` |
| 12 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantfb7a16c36d88f59c7ac673fe6dae30ae064e925a57f386a32eaa1d10d007d441.lean/declarations/actual-second-abel--ffee113290211bbe1480ded7.md) | 137 | `result-track:ffee113290211bbe1480ded7a12adb8e382a86da1412187d9daab43b8aac179b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
