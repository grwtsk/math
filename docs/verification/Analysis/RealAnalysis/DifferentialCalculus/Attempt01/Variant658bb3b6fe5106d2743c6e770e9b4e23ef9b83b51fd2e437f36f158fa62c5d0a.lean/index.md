# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d93422048d501aceeb58a84bc8e27de7f19a2a23",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d93422048d501aceeb58a84bc8e27de7f19a2a23`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/criticalprimetest-contdiff-two--c1286f62f22569afc4c4d122.md) | 34 | `result-track:c1286f62f22569afc4c4d1220439bae2567f54b2ca4a6e5569684667b5d1d01c` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/criticalprimetest-deriv-lipschitz--dc5d108adcfbc5f4ed7eaab6.md) | 40 | `result-track:dc5d108adcfbc5f4ed7eaab68027684b53c8b4169106d0ea9652bda996ce357d` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/actual-slope-phases-lipschitz--72d24de2486017482e64ee25.md) | 48 | `result-track:72d24de2486017482e64ee25e51165d8b5585fa355097a4d3a95a33f4345b4d8` |
| 4 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/pairedtailtest-deriv-absolutelycontinuous--5d0e116dafb289f4833974cd.md) | 55 | `result-track:5d0e116dafb289f4833974cd1769fc56afdc898b05358e1460003a82af09ec07` |
| 5 | `def` | [pairedTailCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/pairedtailcurvature--6c00cb1603432d8f033d51af.md) | 70 | `declaration-track:6c00cb1603432d8f033d51afda44357c7adab7b7f634f23de1503ff432e79586` |
| 6 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/pairedtailcurvature-intervalintegrable--18e26a5c732086187f76f688.md) | 72 | `result-track:18e26a5c732086187f76f688269c66a332bbc001580b925406ebc3881052473c` |
| 7 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/pairedtailcurvature-ae-hasderivat--08ee05d4f5b3a2302bb5a702.md) | 76 | `result-track:08ee05d4f5b3a2302bb5a702ede234276f77826d13399fd1c8ba0d67bb3f5197` |
| 8 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/pairedtailtest-deriv-integral-zero--2405823679ea0e34cb6acca2.md) | 84 | `result-track:2405823679ea0e34cb6acca23e8e3490771af4f90c548754fe3b0d0ef3b2b12b` |
| 9 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/actual-delta-pairing-intervalintegrable--ac259f8ae6013ee47c56cf7d.md) | 92 | `result-track:ac259f8ae6013ee47c56cf7dd31c257a45036ff8144a5ed223ccdd8b9e481b9a` |
| 10 | `theorem` | [actual_first_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/actual-first-abel--b4613c3c721e0449bf857753.md) | 100 | `result-track:b4613c3c721e0449bf85775300b4fd810c401987b9c23b58988eedc7d4cbbb0c` |
| 11 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/actual-bridge-curvature-intervalintegrable--a4cbd9ce9c15559db060e294.md) | 137 | `result-track:a4cbd9ce9c15559db060e2946456c6a70a4098b2da2ffce671f1a72a858be255` |
| 12 | `theorem` | [actual_second_Abel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variant658bb3b6fe5106d2743c6e770e9b4e23ef9b83b51fd2e437f36f158fa62c5d0a.lean/declarations/actual-second-abel--926b4c46b663ce7b315ef55b.md) | 145 | `result-track:926b4c46b663ce7b315ef55b2c2c3f7de431eb139b4bb4b8b1d975bb3dcb58ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
