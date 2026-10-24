# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingZeroModeVariance

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86aee0d7b10b468badc8e0f46d5d369e33c3f66d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86aee0d7b10b468badc8e0f46d5d369e33c3f66d`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingNonzeroFrequencySplit`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [parityCenteredIntegerCoordinateAmplitude](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/paritycenteredintegercoordinateamplitude--68cc1e27f81fc9f08c85faf4.md) | 41 | `declaration-track:68cc1e27f81fc9f08c85faf4cc6579a1d09cefbaba928d43a21c082c69e6ed2b` |
| 2 | `theorem` | [sum_parityCenteredIntegerCoordinateAmplitude_eq_pairMass](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/sum-paritycenteredintegercoordinateamplitude-eq-pairmass--a97ae7e7ba0bb3b7fbb6f7c9.md) | 46 | `result-track:a97ae7e7ba0bb3b7fbb6f7c956f789c589e8b8f9caa420cacbc3b7d10c1b8a6b` |
| 3 | `def` | [parityCenteredIntegerCoordinateMean](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/paritycenteredintegercoordinatemean--ceed3afb7cf041bc0e997e67.md) | 64 | `declaration-track:ceed3afb7cf041bc0e997e6748b7fa3837afa461023e2f1a91e4df21af214327` |
| 4 | `def` | [parityCenteredIntegerCoordinateVariance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/paritycenteredintegercoordinatevariance--bc6ab2c542353e4ac993a51c.md) | 69 | `declaration-track:bc6ab2c542353e4ac993a51c64fa095ed60d34e0918663a9689ea9130572d10f` |
| 5 | `theorem` | [parityCenteredIntegerCoordinateVariance_nonneg](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/paritycenteredintegercoordinatevariance-nonneg--c6a161a8ec3d1fae53d8233e.md) | 75 | `result-track:c6a161a8ec3d1fae53d8233e1f7374c8c1e8116b9178c4aa17f318ebf52236e2` |
| 6 | `theorem` | [sum_sq_integerCoordinateAmplitude_eq_variance_add_meanSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/sum-sq-integercoordinateamplitude-eq-variance-add-meansquare--8994f4d1e73df94fb11991d8.md) | 82 | `result-track:8994f4d1e73df94fb11991d86f06b8c8041402894d5b417a87488f4b3c16e32e` |
| 7 | `theorem` | [parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_integerCoordinateSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/parityhalfindexzerowindingfiberenergy-eq-four-mul-integercoordinatesecon--c7d7f364ef2c244adc11a2ac.md) | 101 | `result-track:c7d7f364ef2c244adc11a2ac4600482ea5af5e8037f3f972b07105b3dc2c0205` |
| 8 | `theorem` | [parityHalfIndexCenteredZeroModeCorrection_eq_reciprocalDifference_sub_variance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/parityhalfindexcenteredzeromodecorrection-eq-reciprocaldifference-sub-va--81859b3100db462ab8bc7dff.md) | 109 | `result-track:81859b3100db462ab8bc7dff05cc50675100ef5ce662ffe8fdfc578a3286e9e9` |
| 9 | `theorem` | [parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_variance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/parityhalfindexcenteredzeromodecorrection-eq-meaninflation-sub-variance--ec47596589b3cad842d4b459.md) | 127 | `result-track:ec47596589b3cad842d4b45940dd409e30d3b60ffb4fa0c5d62b91154783f210` |
| 10 | `def` | [parityCenteredWindingMeanInflation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/paritycenteredwindingmeaninflation--e265f5219c3267ff4f3e23dd.md) | 142 | `declaration-track:e265f5219c3267ff4f3e23dd4fafedbe17d9a4af4f932e34e82e585870e90e1f` |
| 11 | `theorem` | [parityHalfIndexCenteredZeroModeCorrection_eq_meanInflation_sub_fourVariance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/parityhalfindexcenteredzeromodecorrection-eq-meaninflation-sub-fourvaria--1e63d2e5111b4595d8899db6.md) | 148 | `result-track:1e63d2e5111b4595d8899db68fab7e56465f170a5ea3c3ae56b846eb2cf5c1a1` |
| 12 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_meanInflation_sub_variance](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/parityhalfindexsignedquarticwrap-eq-nonzerofrequency-add-meaninflation-s--cf65bd7d95b8c546b0221e06.md) | 159 | `result-track:cf65bd7d95b8c546b0221e0676864a06392aa30a0d0332392c487ea4e08aa1f0` |
| 13 | `def` | [regularCenteredWindingZeroModeVarianceAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/regularcenteredwindingzeromodevarianceatmodulus--76dec75edfc726864ff8b937.md) | 170 | `declaration-track:76dec75edfc726864ff8b937d2a616dfeeabb1a474123b9188f23c7074f32dbf` |
| 14 | `def` | [regularCenteredWindingZeroModeVarianceEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/regularcenteredwindingzeromodevarianceendpoint--6eb37b1a785890ee8ad12fa1.md) | 182 | `declaration-track:6eb37b1a785890ee8ad12fa11c540889b21a0daf5c88fa06c240a663d7a1ea32` |
| 15 | `def` | [RegularCenteredWindingZeroModeVarianceEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/regularcenteredwindingzeromodevarianceenvelope--7454fe574ca5e87da9d69332.md) | 190 | `declaration-track:7454fe574ca5e87da9d69332af1f37d1e414d162d2dedac46ae8d5afb5c981cf` |
| 16 | `structure` | [RegularCenteredWindingZeroModeVarianceSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/regularcenteredwindingzeromodevariancesourcedata--fefdd9cf2e7c787fe9d4ec38.md) | 194 | `declaration-track:fefdd9cf2e7c787fe9d4ec3835bd8a4df782b0ae78b5b893498bec5677c24dee` |
| 17 | `def` | [RegularCenteredWindingZeroModeVarianceSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingZeroModeVariance.lean/declarations/regularcenteredwindingzeromodevariancesource--9c7ce46654493ea6264dfb05.md) | 211 | `declaration-track:9c7ce46654493ea6264dfb05cb8f4ca02ecf16f35cd976875b1edf53434e961d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
