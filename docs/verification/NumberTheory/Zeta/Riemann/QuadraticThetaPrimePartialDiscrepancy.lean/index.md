# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimePartialDiscrepancy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da9233bebfd17871dc9b69af072e9108a0904490",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da9233bebfd17871dc9b69af072e9108a0904490`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIntervalLogMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primeintervallogmass--be12ecf927c530fbc5e99625.md) | 51 | `declaration-track:be12ecf927c530fbc5e9962527797435aa7e53c796077ab8a7f8cef7f3395c60` |
| 2 | `theorem` | [primeIntervalLogMass_eq_theta_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primeintervallogmass-eq-theta-sub--c35c570a7fa50e482b40723a.md) | 55 | `result-track:c35c570a7fa50e482b40723a08d908fc1d3e9899a3b0e236eeb60e1b5e93ae5c` |
| 3 | `theorem` | [thetaError_nat_sub_eq_primeIntervalDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/thetaerror-nat-sub-eq-primeintervaldiscrepancy--a260a273f9298e065013dc13.md) | 85 | `result-track:a260a273f9298e065013dc132044d36879e8f390ca5645ec6dd60660022e4dff` |
| 4 | `def` | [DyadicPrimePartialDiscrepancyLogSqAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/dyadicprimepartialdiscrepancylogsqat--b070a46cfc85f95ca6acca84.md) | 95 | `declaration-track:b070a46cfc85f95ca6acca844af384486a52d58be7da1f139c322b6fd87e4264` |
| 5 | `theorem` | [primePartialDiscrepancy_eq_thetaErrorOscillation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primepartialdiscrepancy-eq-thetaerroroscillation--bca222dd68312ed45d472ecd.md) | 110 | `result-track:bca222dd68312ed45d472ecd90aa6eac06ddd73650138339c293596288bdf5dc` |
| 6 | `def` | [DyadicIntegerThetaErrorLogSqOscillationAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/dyadicintegerthetaerrorlogsqoscillationat--6ed68157aa2cca9f962c9c5a.md) | 122 | `declaration-track:6ed68157aa2cca9f962c9c5a74f71c8a52e51aac834a6b41ad47df1cc8fbd40a` |
| 7 | `theorem` | [primePartialDiscrepancy_iff_integerThetaOscillation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primepartialdiscrepancy-iff-integerthetaoscillation--4316af0d6185c0e043619f8e.md) | 135 | `result-track:4316af0d6185c0e043619f8ef52af214d195c99b41827f72c1b712f2e2cc0d33` |
| 8 | `theorem` | [theta_eq_theta_floor_nat](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/theta-eq-theta-floor-nat--5d0cfe8fd29cfa611a4214f5.md) | 153 | `result-track:5d0cfe8fd29cfa611a4214f518b52e0f7a66371f65450a2f8c7f59fac8787f21` |
| 9 | `theorem` | [thetaError_sub_floor_abs_lt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/thetaerror-sub-floor-abs-lt-one--c7c13cc9c56e67643fed4e84.md) | 160 | `result-track:c7c13cc9c56e67643fed4e84aa89dac788ca643b11575abf300441bb567afc9e` |
| 10 | `def` | [PrimePartialRoundingUniformizationAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primepartialroundinguniformizationat--eea06d69d37523e034c5fc03.md) | 186 | `declaration-track:eea06d69d37523e034c5fc03abb8afee9965da41cfd1d4461e7433cd8f22b5b2` |
| 11 | `theorem` | [primePartialDiscrepancy_rounding_to_oscillation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/primepartialdiscrepancy-rounding-to-oscillation--084f89cb642df7f3d15133ec.md) | 192 | `result-track:084f89cb642df7f3d15133ec3384533a16d458c61872846a0dba1cc6ac53b699` |
| 12 | `def` | [SevenEighthsPrimePartialDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/declarations/seveneighthsprimepartialdiscrepancy--d11a2f1ba24d2a439a0e9c15.md) | 202 | `declaration-track:d11a2f1ba24d2a439a0e9c154defaf526e524a848db620fd8da9aa3aa2e5fec3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
