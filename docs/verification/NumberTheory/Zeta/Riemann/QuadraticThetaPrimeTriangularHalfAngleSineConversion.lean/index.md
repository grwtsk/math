# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35d7af9a1011b0eaf2b40cc833024aeb6627d102",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35d7af9a1011b0eaf2b40cc833024aeb6627d102`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_two_mul_I_sub_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/exp-two-mul-i-sub-one--ae7f2f44b270f3d069a69961.md) | 14 | `result-track:ae7f2f44b270f3d069a69961e84d1617071a59d232450bd9414f4cd092cf6ca1` |
| 2 | `theorem` | [triangularGeometricRatio_sub_one_eq_sine](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/triangulargeometricratio-sub-one-eq-sine--fc2ad556f22a6aa3fe141f42.md) | 26 | `result-track:fc2ad556f22a6aa3fe141f4209fe9f44bcde782867fcde397bea401ff42f66ee` |
| 3 | `theorem` | [triangularGeometricRatio_pow_sub_one_eq_sine](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/triangulargeometricratio-pow-sub-one-eq-sine--ff36bef32b9e5234045a0e56.md) | 36 | `result-track:ff36bef32b9e5234045a0e563ab8ee59f7e0d874b4527c1b550b926b5c2eaf50` |
| 4 | `theorem` | [triangularGeometricBlock_eq_phase_mul_sineRatio](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/triangulargeometricblock-eq-phase-mul-sineratio--d669088dd01d17187ba099f3.md) | 48 | `result-track:d669088dd01d17187ba099f3351d65c4bfe421854085a7fe398540dab84d13f5` |
| 5 | `def` | [TriangularPhaseConjugateCancellationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/triangularphaseconjugatecancellationclaim--0f32030b94d3e2d7fcc608f2.md) | 76 | `declaration-track:0f32030b94d3e2d7fcc608f2641affd4b21483733110bd9134f318225bac2e3b` |
| 6 | `theorem` | [phaseCancellation_to_sineNorm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHalfAngleSineConversion.lean/declarations/phasecancellation-to-sinenorm--c96b4881c60b8c84f45434f6.md) | 86 | `result-track:c96b4881c60b8c84f45434f6af3393bce8d71d6abe2ad5cc8601889ecf7dcb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
