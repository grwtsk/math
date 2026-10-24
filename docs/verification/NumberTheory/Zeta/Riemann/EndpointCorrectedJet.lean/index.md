# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.EndpointCorrectedJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e124bf3fc4b9af2d47b0326e29ea0c883302619c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e124bf3fc4b9af2d47b0326e29ea0c883302619c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PochhammerJet`](../../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FinitePowerZetaJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FinitePowerZetaJet.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.NumberTheory.Bernoulli` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/weight--8a535af676bcb3414c70b968.md) | 29 | `declaration-track:8a535af676bcb3414c70b968b633f0df1dc69c86d5f92add6cb285f4845c2303` |
| 2 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/coefficient--34e32ef4e6243aa117e4940d.md) | 35 | `declaration-track:34e32ef4e6243aa117e4940d24ffbe7875c9bb2242aa72f4f6edec710b8a4b19` |
| 3 | `def` | [coefficientSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/coefficientslope--2fa86039b04838199fe02a96.md) | 39 | `declaration-track:2fa86039b04838199fe02a96ef3e4dc90de9c5103a8c83089922a0b500d63e67` |
| 4 | `def` | [model](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/model--70c62a615e4f391bb50bb3b0.md) | 43 | `declaration-track:70c62a615e4f391bb50bb3b0cf0666e872ed2cfe5b300abb5f563046aad7baf2` |
| 5 | `def` | [dirichletSlope](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/dirichletslope--7c6c4cd5c327de17a535d695.md) | 46 | `declaration-track:7c6c4cd5c327de17a535d6955aea10933337270b9328fa78e5feffa58b4b7bb8` |
| 6 | `def` | [slope](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/slope--68d0332e6785148ede44dc39.md) | 49 | `declaration-track:68d0332e6785148ede44dc398a6406e8f6dede27a8b8ba661729a213c91eb009` |
| 7 | `theorem` | [positive_sum_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/positive-sum-succ--22f3f8a6bd543e46b65f6396.md) | 54 | `result-track:22f3f8a6bd543e46b65f6396d576cc944c5557a10ce38bea82dab0b6933b3d3d` |
| 8 | `theorem` | [inverse_power_eq_exp](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/inverse-power-eq-exp--60b1062feb94e9aaeebcf5a1.md) | 64 | `result-track:60b1062feb94e9aaeebcf5a18a20c783b49119037d079a898410306c22c2bd7f` |
| 9 | `theorem` | [hasDerivAt_inverse_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/hasderivat-inverse-power--8e5fc0152cae52890a2331d5.md) | 73 | `result-track:8e5fc0152cae52890a2331d594d3096ec73c137bfb4b484e8e4ab764d3cbd77a` |
| 10 | `theorem` | [coefficient_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/coefficient-succ--c89ae19d25791a83e74b13e3.md) | 83 | `result-track:c89ae19d25791a83e74b13e3e03542f0be13ac82e54cb86c59038c4f318e6fca` |
| 11 | `theorem` | [coefficientSlope_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/coefficientslope-succ--5df91e451ab32fe7f4824e6e.md) | 89 | `result-track:5df91e451ab32fe7f4824e6e6051f8b95604f6b02be4313b8484637a5966ad58` |
| 12 | `theorem` | [hasDerivAt_coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/hasderivat-coefficient--01d252e268df789cb3efcf5f.md) | 95 | `result-track:01d252e268df789cb3efcf5f910da65bb55c5012a04b51d8ac8ccc2070947547` |
| 13 | `theorem` | [hasDerivAt_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/hasderivat-model--d4e8bef332476677bf7426a9.md) | 105 | `result-track:d4e8bef332476677bf7426a910d0cae6b4b267bf19c44a31866f2e89a17ec02b` |
| 14 | `theorem` | [deriv_model](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/deriv-model--157f4835edc5ed282e0746a8.md) | 115 | `result-track:157f4835edc5ed282e0746a8ae8b7e2c780998f616d24a8a603a14841ccde1ba` |
| 15 | `theorem` | [model_eq_previous_plus_corrections](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/model-eq-previous-plus-corrections--b54fe93988d1ed6636a33f72.md) | 119 | `result-track:b54fe93988d1ed6636a33f7291bbda372d8fc1e58e57c40bb470150e5a448c03` |
| 16 | `theorem` | [correction_power_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/correction-power-identity--f6e8f9dfb4d91b4f47f05697.md) | 130 | `result-track:f6e8f9dfb4d91b4f47f0569764e0cf30d74869a84e3df4366a393768fbbef847` |
| 17 | `theorem` | [derivative_error_of_uniform_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/derivative-error-of-uniform-source--a4e95f81ee29828e1eb5d765.md) | 137 | `result-track:a4e95f81ee29828e1eb5d765f4b781aa467e1733934ff36b9ebdbaf9b3e4dd18` |
| 18 | `theorem` | [first_correction_control](../../../../../mathematics/NumberTheory/Zeta/Riemann/EndpointCorrectedJet.lean/declarations/first-correction-control--6aadf5beb48cf0e14d83d4c6.md) | 149 | `result-track:6aadf5beb48cf0e14d83d4c6a05e5f3246975199e39bc4faaf0e1f576f1276c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
