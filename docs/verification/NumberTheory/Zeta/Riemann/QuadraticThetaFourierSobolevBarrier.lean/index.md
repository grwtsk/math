# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4581fef29809b79b26aa1a0c916080d304d4fa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4581fef29809b79b26aa1a0c916080d304d4fa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeOnlySobolevShellWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/primeonlysobolevshellweight--f677ec7e46b9d00e1f76a94d.md) | 55 | `declaration-track:f677ec7e46b9d00e1f76a94d054b4eda0a411be201887e4cd3b61981b94f75d3` |
| 2 | `def` | [greenPrimeOnlySobolevHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/greenprimeonlysobolevhead--62112b2324da3ede54b679a3.md) | 60 | `declaration-track:62112b2324da3ede54b679a3fbf24ea8589e3fc3480c94169bf1aa0419274799` |
| 3 | `def` | [AllDyadicPrimeOnlySobolevBoundAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/alldyadicprimeonlysobolevboundat--ac5dabb03a454e2b8b9c659f.md) | 68 | `declaration-track:ac5dabb03a454e2b8b9c659f96af601da4990797c9a30a7c20bf1ad830105550` |
| 4 | `def` | [SobolevSupremumThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/sobolevsupremumthreshold--5bc3c62d2a159adc9f47de56.md) | 80 | `declaration-track:5bc3c62d2a159adc9f47de56b41b7b14fc96421e7f0884edf106f59112b3cab1` |
| 5 | `def` | [jumpModelWeightedSquareExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/jumpmodelweightedsquareexponent--0e59b84a83aabacb833efbed.md) | 85 | `declaration-track:0e59b84a83aabacb833efbedabc50a1a562ffdbc3b7e3d34d95858c4b867f358` |
| 6 | `theorem` | [jumpModelWeightedSquareSummableExponent_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/jumpmodelweightedsquaresummableexponent-iff--54aabd7499b47da5eda5e2ce.md) | 89 | `result-track:54aabd7499b47da5eda5e2cecbba56f4bcaa50afd4351aa5771049142c8879a8` |
| 7 | `theorem` | [no_sobolevExponent_aboveHalf_and_jumpModelBelowHalf](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/no-sobolevexponent-abovehalf-and-jumpmodelbelowhalf--dca598feba7a066d94d09c07.md) | 98 | `result-track:dca598feba7a066d94d09c074fdc7b047b1c020268f7772d13e7c0fbc231f30e` |
| 8 | `def` | [PrimeSobolevMaximalReadoutAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/primesobolevmaximalreadoutat--54e32f9288eae0a04eddea3c.md) | 112 | `declaration-track:54e32f9288eae0a04eddea3cc84ebe75d28b4cc08c2313846f9388703e6493ea` |
| 9 | `theorem` | [primeSobolevMaximalReadout_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/primesobolevmaximalreadout-to-recurrence--c10ab014641d05a7ea06ee16.md) | 118 | `result-track:c10ab014641d05a7ea06ee1683c72406b1f65baaf44b436f44148001ac5ee787` |
| 10 | `theorem` | [naiveSobolevJumpRoute_has_no_exponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/declarations/naivesobolevjumproute-has-no-exponent--58813ab53e024cd77a6bd387.md) | 129 | `result-track:58813ab53e024cd77a6bd387576649d23da4f5102979745eff8b1c1aee2651ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
