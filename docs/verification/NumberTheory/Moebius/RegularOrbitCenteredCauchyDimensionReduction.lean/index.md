# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredCauchyDimensionReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12594e67ecd820cbe2ffc97ee15de13b7131754",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12594e67ecd820cbe2ffc97ee15de13b7131754`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctCancellationThreshold`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parityCenteredLagLeftEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredlagleftenergy--559aeab2e8d573eb15e6b094.md) | 17 | `declaration-track:559aeab2e8d573eb15e6b0949641c2311aa2d2f1706f794571ec74ca832c5161` |
| 2 | `def` | [parityCenteredLagRightEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredlagrightenergy--b989bcdfef2f7efe1eeb450e.md) | 23 | `declaration-track:b989bcdfef2f7efe1eeb450e654cdad2adc30bb10c6418a075d93ac9bf35369a` |
| 3 | `def` | [parityCenteredIntegerCoordinateSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredintegercoordinatesecondmoment--ac5b27fc9a54d1ae4a69f18f.md) | 29 | `declaration-track:ac5b27fc9a54d1ae4a69f18f9fb1226b6c324a68cb4f44c1eab919b400d98d1c` |
| 4 | `theorem` | [parityCenteredLagLeftEnergy_le_secondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredlagleftenergy-le-secondmoment--ba0908c395fa9440cc582ade.md) | 34 | `result-track:ba0908c395fa9440cc582ade4ac07b250c374e2c5453368f3cb7430bfe2d5991` |
| 5 | `theorem` | [parityCenteredLagRightEnergy_le_secondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredlagrightenergy-le-secondmoment--c620ffde7e6c967164e5b25e.md) | 48 | `result-track:c620ffde7e6c967164e5b25e3ba2f9990e9800b86157e63c421a8d3e48f14318` |
| 6 | `def` | [parityCenteredLagAutocorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/paritycenteredlagautocorrelation--b0375cff495723b26a81eec7.md) | 70 | `declaration-track:b0375cff495723b26a81eec77ac54bfb0be3f0dc36ff94f0226fc6c1feec5936` |
| 7 | `theorem` | [sq_abs_parityCenteredLagAutocorrelation_le](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/sq-abs-paritycenteredlagautocorrelation-le--ddefa773578f32b7d643b002.md) | 77 | `result-track:ddefa773578f32b7d643b0020d0839e45d4d2ee999112532571951fc0210e20f` |
| 8 | `theorem` | [sq_abs_parityCenteredLagAutocorrelation_le_secondMoment_sq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/sq-abs-paritycenteredlagautocorrelation-le-secondmoment-sq--c64ae256dc5f08f2733ccb93.md) | 95 | `result-track:c64ae256dc5f08f2733ccb937f2a0c5f01e4ade1d0834a135c33be82be2dc254` |
| 9 | `theorem` | [parityHalfIndexZeroWindingFiberEnergy_eq_four_mul_secondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/parityhalfindexzerowindingfiberenergy-eq-four-mul-secondmoment--64c2e1d8c4a62380c8a1a46a.md) | 114 | `result-track:64c2e1d8c4a62380c8a1a46acb59a6a4fe652b7e8a7c06f0d6c99c8b08459872` |
| 10 | `def` | [RegularCenteredIntegerCoordinateSecondMomentEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/regularcenteredintegercoordinatesecondmomentenvelope--31ce406494010412a4f1a9bd.md) | 124 | `declaration-track:31ce406494010412a4f1a9bd71916468bae918f8f8e49f48568b1167cbc86fff` |
| 11 | `structure` | [RegularCenteredCauchyDimensionReductionSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/regularcenteredcauchydimensionreductionsourcedata--5817b63d46669fe53a49cc69.md) | 131 | `declaration-track:5817b63d46669fe53a49cc69c428b038fb2b308508e1457ff844a2c95c3640f5` |
| 12 | `def` | [RegularCenteredCauchyDimensionReductionSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/declarations/regularcenteredcauchydimensionreductionsource--7ea38cb15f818196a39ee4ed.md) | 143 | `declaration-track:7ea38cb15f818196a39ee4ed8fc3aa6511dd2bdc446a2c87769c877d70c9cb79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
