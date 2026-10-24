# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierLogLossAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9553c7e01ea056d11febaeb2355b2f92a2f3eab",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9553c7e01ea056d11febaeb2355b2f92a2f3eab`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThetaVonKochAdapter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DyadicThetaErrorLogSqOscillationAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/declarations/dyadicthetaerrorlogsqoscillationat--884cf1ba7e00bf878db6a6b5.md) | 52 | `declaration-track:884cf1ba7e00bf878db6a6b5ba187b76249004849680b558dda4dec64935a779` |
| 2 | `theorem` | [logSqOscillation_to_oscillation](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/declarations/logsqoscillation-to-oscillation--f19414545d0f528c96f924e5.md) | 67 | `result-track:f19414545d0f528c96f924e5bfffd8f2dcc80cdcab8dac6f01ab9749bb10d02d` |
| 3 | `def` | [PrimeFourierLogSqMaximalReadoutAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/declarations/primefourierlogsqmaximalreadoutat--1a4b2e823c6bfee7196a8c0d.md) | 131 | `declaration-track:1a4b2e823c6bfee7196a8c0d4770dc4f1c56e32f887b409053b38d0d8193af23` |
| 4 | `theorem` | [primeFourierLogSqMaximalReadout_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/declarations/primefourierlogsqmaximalreadout-to-recurrence--b9139d935ad0b52aca9d61ba.md) | 137 | `result-track:b9139d935ad0b52aca9d61baca651a6e9db8badb0a30f881846c70a842ae634a` |
| 5 | `theorem` | [sevenEighths_logSqOscillation_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/declarations/seveneighths-logsqoscillation-power--8ebcd1d443788592c65b871a.md) | 148 | `result-track:8ebcd1d443788592c65b871ae8ac311d6689e99440336db030be573f478d6348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
