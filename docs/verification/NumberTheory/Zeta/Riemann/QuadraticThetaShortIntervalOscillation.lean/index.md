# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShortIntervalOscillation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eae15ac3a4bccb8c1734ded1dcb251b0ea4d524`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellPrimeEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicThetaErrorOscillationAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/dyadicthetaerroroscillationat--4b1551d2b10fceb86a329ec1.md) | 47 | `declaration-track:4b1551d2b10fceb86a329ec1065f389435830b7dfb31789665000498afd89de2` |
| 2 | `theorem` | [anchorCancellation_oscillation_to_shellCancellation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/anchorcancellation-oscillation-to-shellcancellation--c1a8d54279c49dcac9ed8210.md) | 61 | `result-track:c1a8d54279c49dcac9ed8210f6bb30afa9308d67d51611bb3de9f533416a66bf` |
| 3 | `theorem` | [oscillation_to_anchorUniformization](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/oscillation-to-anchoruniformization--f08a947bbca0ac05a07d0dd8.md) | 128 | `result-track:f08a947bbca0ac05a07d0dd8b00165dcbf6bdc835a600841e4d02d9789aca18b` |
| 4 | `theorem` | [primeEndpointCancellation_oscillation_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/primeendpointcancellation-oscillation-to-recurrence--efd18f3a549ed19cb6b94ecb.md) | 137 | `result-track:efd18f3a549ed19cb6b94ecba01d0fb24a6edec1197f9c9eea8943c72985eb27` |
| 5 | `theorem` | [thetaError_two_mul_oscillation_le_linear](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/thetaerror-two-mul-oscillation-le-linear--2351ea4f48bb8cb77691c8e5.md) | 147 | `result-track:2351ea4f48bb8cb77691c8e559fbbf4582c40ef193416da5fd77537e0de93fad` |
| 6 | `theorem` | [sevenEighths_oscillation_exponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/seveneighths-oscillation-exponent--c51dedbc4abeee5d73319ba8.md) | 215 | `result-track:c51dedbc4abeee5d73319ba880092539c3efa5d74e53cb9575f2c7064f178daa` |
| 7 | `theorem` | [sevenEighths_oscillation_exponent_lt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/declarations/seveneighths-oscillation-exponent-lt-one--5d6541187b0bc1fc70bb910f.md) | 222 | `result-track:5d6541187b0bc1fc70bb910ff1c0095db8cd2fbaacc124fb6d0da5dd1f301de8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
