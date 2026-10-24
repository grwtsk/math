# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZeroSmoothingDerivative.Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc53add077a85628df9ee4410594e6dfa1b9df8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc53add077a85628df9ee4410594e6dfa1b9df8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothing` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualTest_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-hasderivat--21f846b6ab8dba790e8f4111.md) | 24 | `result-track:21f846b6ab8dba790e8f4111ecb5c620fcffd797133ab92a7770b6301217b3a1` |
| 2 | `theorem` | [actualTest_deriv_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-eq-indicator--0e708bc7ef56eeac6d9dce56.md) | 32 | `result-track:0e708bc7ef56eeac6d9dce56548592c78beca87780e24daee053c573d39865cd` |
| 3 | `theorem` | [actualTest_deriv_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-continuous--925d283f16d3021cfe068838.md) | 37 | `result-track:925d283f16d3021cfe06883826f0349b01e90121914a96d52f753566b7855fcb` |
| 4 | `theorem` | [actualTest_deriv_zero_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-zero-of-notmem--e704271f558df9d91c9c89c8.md) | 42 | `result-track:e704271f558df9d91c9c89c851fd5cfae382b0c5cd17486e85b177f65b2f0223` |
| 5 | `theorem` | [actualTest_deriv_support_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-support-subset--86ed89fb4b1283f5fc7977ab.md) | 48 | `result-track:86ed89fb4b1283f5fc7977abf4bab577bc7a61ce6cfc51a62874a9b49120a996` |
| 6 | `theorem` | [actualTest_deriv_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-tsupport-subset--3b048c9306f746400e041b31.md) | 55 | `result-track:3b048c9306f746400e041b318a0bbf4380faae00b456155565a12cc43be1cef5` |
| 7 | `theorem` | [actualTest_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-hascompactsupport--c04eecf895e08245fc4cd92a.md) | 60 | `result-track:c04eecf895e08245fc4cd92a725172f38665280a7062e11c7f0143913b432f45` |
| 8 | `theorem` | [actualTest_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/actualtest-deriv-integrable--df47aef22639f6895d3dc681.md) | 65 | `result-track:df47aef22639f6895d3dc681f210ffe41540ed49c9ea46a35108a35c943fcce0` |
| 9 | `theorem` | [smoothing_derivative_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothing-derivative-integrand-integrable--ac0331a647921770f61a9517.md) | 71 | `result-track:ac0331a647921770f61a951727dc1295223a391f0a3bcae68132520b8692266f` |
| 10 | `theorem` | [smoothedTest_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-hasderivat--86d400641cb74840b8bda011.md) | 79 | `result-track:86d400641cb74840b8bda011af5da910c27c3caa0610123afc8cd4af7dd9c2e1` |
| 11 | `theorem` | [smoothedTest_deriv_eq_convolution](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-eq-convolution--b2937d211da81c7ec5aba846.md) | 87 | `result-track:b2937d211da81c7ec5aba8467aa2620b37ee6877af1413154012f0f05a1caeec` |
| 12 | `theorem` | [smoothedTest_deriv_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-continuous--0906f2a5696c15e096465b38.md) | 93 | `result-track:0906f2a5696c15e096465b38410db215467ff51ecb4a6ecb0e9e12985c3ab5cc` |
| 13 | `theorem` | [smoothedTest_deriv_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-tsupport-subset--5f134e410aceb735732a265a.md) | 98 | `result-track:5f134e410aceb735732a265a95d5c6ecd22d31166c7c1428532342371617b310` |
| 14 | `theorem` | [smoothedTest_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-hascompactsupport--bc2428c314fdbbb0bf1d60f0.md) | 103 | `result-track:bc2428c314fdbbb0bf1d60f0ea418734bf56b3fb38f5b9b5510885d231f5d877` |
| 15 | `theorem` | [smoothedTest_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-integrable--a0c1bbbd6e8d12264fd52b22.md) | 108 | `result-track:a0c1bbbd6e8d12264fd52b22e2958e50d19ea0d772c93f174acdd181fa9647ac` |
| 16 | `theorem` | [smoothedTest_deriv_tsupport_subset_common](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-tsupport-subset-common--71cb316e6588246e9065a43b.md) | 114 | `result-track:71cb316e6588246e9065a43bc09c9acc6d239b4d67af4f5b1c21c6cee95067fd` |
| 17 | `theorem` | [smoothedTest_deriv_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ZeroSmoothingDerivative/Variant985ef97edc9f15477ad8b7cc29ec12952c586b7a6312e2a565e9245fd11c2def.lean/declarations/smoothedtest-deriv-tendsto--fb854149692b0e67ed415f06.md) | 121 | `result-track:fb854149692b0e67ed415f066d30fe67e4d2deb5df49db301b00834cd59a6baa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
