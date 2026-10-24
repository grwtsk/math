# Verification target: GRWTSK.Analysis.SpecialFunctions.DigammaFourierBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10d1f31abe6a01ac4862d81df1628455cc56ec20",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/DigammaFourierBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/index.md) · [Full source](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10d1f31abe6a01ac4862d81df1628455cc56ec20`.

Source path: `GRWTSK/Analysis/SpecialFunctions/DigammaFourierBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/DigammaFourierBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.DigammaSeries`](../../../../mathematics/Analysis/DigammaSeries.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ReciprocalKernel`](../../../../mathematics/Analysis/ReciprocalKernel.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.DigammaMultiplier`](../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/DigammaMultiplier.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuarterSeriesObligation](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/quarterseriesobligation--4db39d06f63251a95430b03e.md) | 28 | `declaration-track:4db39d06f63251a95430b03e5f5edff40e3caefde55d5ff12781b43520d92c4f` |
| 2 | `theorem` | [actual_multiplier_difference](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/actual-multiplier-difference--5f30d098fb4d884ca8213a9a.md) | 33 | `result-track:5f30d098fb4d884ca8213a9a74aced74d47b61298f61f9c260af4f735cab0fa9` |
| 3 | `theorem` | [quarter_series_of_derivative_limit](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/quarter-series-of-derivative-limit--e9860dee068ee13d3102a7d0.md) | 43 | `result-track:e9860dee068ee13d3102a7d043832df0160e421ce3541004b72b6db431cea8c1` |
| 4 | `theorem` | [multiplier_estimate_of_series](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/multiplier-estimate-of-series--a0f7c5853810e530cd612c12.md) | 52 | `result-track:a0f7c5853810e530cd612c1228c7d4383355cf195e09b177f08564e5a06f8bcd` |
| 5 | `theorem` | [archimedean_integrability_of_series](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/archimedean-integrability-of-series--af92132ca0bbf12541f607d6.md) | 60 | `result-track:af92132ca0bbf12541f607d60ad2fb37b218811498ad7acf212bed858fb0bd52` |
| 6 | `theorem` | [admission_of_derivative_limit](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/admission-of-derivative-limit--91628891aadc046f986e4bc2.md) | 67 | `result-track:91628891aadc046f986e4bc20d7e43813450bc2eff1df6b93a9cc61ff092f978` |
| 7 | `theorem` | [quarter_series](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/quarter-series--cc345f0a8ef2b88a35059818.md) | 73 | `result-track:cc345f0a8ef2b88a3505981822da0b4b3c961677f0c8b8e1ffb6605625ed2169` |
| 8 | `theorem` | [multiplier_estimate](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/multiplier-estimate--516a9369d1a97c7b1ea1eabe.md) | 77 | `result-track:516a9369d1a97c7b1ea1eabe10c5fdcfbba29d2c34419614730e9a95b2acb289` |
| 9 | `theorem` | [archimedean_integrability](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/archimedean-integrability--3b2384cb83e480482034c1ca.md) | 81 | `result-track:3b2384cb83e480482034c1ca4f6ebbc225c767fd4e5fea708ebffee16c215db0` |
| 10 | `theorem` | [normalization_admissibility](../../../../mathematics/Analysis/SpecialFunctions/DigammaFourierBound.lean/declarations/normalization-admissibility--3f4e330af3685fd1b2908755.md) | 86 | `result-track:3f4e330af3685fd1b29087559b40f89a6aabbcd5661e39bd41d7142ca08b292a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
