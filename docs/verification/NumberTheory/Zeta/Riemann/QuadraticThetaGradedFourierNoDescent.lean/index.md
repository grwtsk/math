# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaGradedFourierNoDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c050648f41cd5786f09b2f72cecd72d4d139a47",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c050648f41cd5786f09b2f72cecd72d4d139a47`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteDistanceRegrouping`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteDistanceRegrouping.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedDyadicEnergyHalfPlane`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AllDyadicPrimeOnlyFourierCoordinateBoundAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/alldyadicprimeonlyfouriercoordinateboundat--f48fd14a923130a2b22ea7ef.md) | 17 | `declaration-track:f48fd14a923130a2b22ea7ef6dea77b09fdffaec2c2fe7ab34360110bfc1ac02` |
| 2 | `theorem` | [allDyadicPrimeOnlyFourierCoordinateBoundAt_half_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/alldyadicprimeonlyfouriercoordinateboundat-half-iff--453f99b42c77b717a13bd924.md) | 28 | `result-track:453f99b42c77b717a13bd9245ecfec023e27e8add3c658129df80c77ce6b858d` |
| 3 | `theorem` | [criticalPrimeOnlyFourier_iff_halfEnergy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/criticalprimeonlyfourier-iff-halfenergy--bf2d4bcc5d4685e2270c7973.md) | 51 | `result-track:bf2d4bcc5d4685e2270c7973d1462a44ba062c14934983554689fde36cb19dbd` |
| 4 | `theorem` | [criticalPrimeOnlyFourier_implies_RH](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/criticalprimeonlyfourier-implies-rh--31b291961bc156a9b4c8ff62.md) | 59 | `result-track:31b291961bc156a9b4c8ff62f792c7ce380cf6ceb79b2bca59b753b01ec51c43` |
| 5 | `def` | [gradedFourierMaximalExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/gradedfouriermaximalexponent--a8c2a8ebd827a4fb228ccb92.md) | 66 | `declaration-track:a8c2a8ebd827a4fb228ccb92f28146808fef6431bbc8f037e4cf678751446cf5` |
| 6 | `theorem` | [gradedFourierMaximalExponent_half](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/gradedfouriermaximalexponent-half--5f8ce5342976371b22815b92.md) | 71 | `result-track:5f8ce5342976371b22815b92a85c5691c0ffa55a07317788bbad49ebdee75eb6` |
| 7 | `theorem` | [gradedFourierMaximal_le_quadratic_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/gradedfouriermaximal-le-quadratic-iff--2225224e81a89998ff85e26a.md) | 80 | `result-track:2225224e81a89998ff85e26abae2b84d1ca335c6bf2cbaa116ca902e4a7025f0` |
| 8 | `theorem` | [quadraticThreshold_lt_gradedFourierMaximal](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/quadraticthreshold-lt-gradedfouriermaximal--d5644fee818252d843448a5d.md) | 90 | `result-track:d5644fee818252d843448a5da04666280f5bfdd1f363a089417dd5e9688e2590` |
| 9 | `theorem` | [sevenEighths_gradedFourier_no_threeQuarter_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/seveneighths-gradedfourier-no-threequarter-descent--b567c9a06e8677a2b9cd5101.md) | 101 | `result-track:b567c9a06e8677a2b9cd5101fd4cc860d34b6713c8caf0fcacb4406707b159c4` |
| 10 | `def` | [SevenEighthsGradedPrimeFourierReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/seveneighthsgradedprimefourierreadout--dedb35bd1e71f6ed8f65b439.md) | 112 | `declaration-track:dedb35bd1e71f6ed8f65b4391ff949ab7eed151363edaf873a8f9df2d40ba3ee` |
| 11 | `def` | [CriticalPrimeFourierReadoutPremiseClassification](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/criticalprimefourierreadoutpremiseclassification--382323f387ded430de393d9b.md) | 118 | `declaration-track:382323f387ded430de393d9b3d1c74e55559d7446238744508ac5892fda08451` |
| 12 | `theorem` | [criticalPrimeFourierReadoutPremiseClassification](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaGradedFourierNoDescent.lean/declarations/criticalprimefourierreadoutpremiseclassification--2d56a221919768fd036faf4f.md) | 122 | `result-track:2d56a221919768fd036faf4ff9081121ee01804f286942ba6fad4ce2b23b9849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
