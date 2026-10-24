# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df1efb9437b257f07d8439784e786166157f48e8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df1efb9437b257f07d8439784e786166157f48e8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerTrace`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.FinCases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lower_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/lower-one--50538e6f680b8d264b4d1396.md) | 29 | `result-track:50538e6f680b8d264b4d139678ef21399886993d472dec0900d217fe694269b6` |
| 2 | `theorem` | [width_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/width-one--d398bd315693c3267498cbce.md) | 32 | `result-track:d398bd315693c3267498cbce768a138ce9a38b0c0d0ad9514a975b5b8a5cfed7` |
| 3 | `theorem` | [first_log_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-log-data--a8743c9c2cac39adb9dc8d59.md) | 35 | `result-track:a8743c9c2cac39adb9dc8d59a4213cb64e5442adbad3c03e767f4bf707601a6e` |
| 4 | `theorem` | [polynomial_zero_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/polynomial-zero-succ--7b13fefd53e9e5125d5783c1.md) | 45 | `result-track:7b13fefd53e9e5125d5783c19a436a7f456040ab0ac3c6875b192ba3b8ee5b6a` |
| 5 | `theorem` | [first_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-seed--93500f9caa6c0547dff76357.md) | 56 | `result-track:93500f9caa6c0547dff763573929f1ddb07c82d5007adf2a2fe29ed191e90866` |
| 6 | `theorem` | [first_seed_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-seed-error--21f092bed8eaf4f718af2a1c.md) | 67 | `result-track:21f092bed8eaf4f718af2a1caad6c6b1f1f284015ff4e379f89529eb99ab5a15` |
| 7 | `theorem` | [first_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-admissible--df45a89f2fe1d2327bdb6f32.md) | 75 | `result-track:df45a89f2fe1d2327bdb6f32329e2b725bd97bba88d039aa1b8bf1e4b6388355` |
| 8 | `def` | [firstTrace](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/firsttrace--d5889eb3e4ee14c6d553d2be.md) | 85 | `declaration-track:d5889eb3e4ee14c6d553d2bee091ba1f03869a444e385a7d6a5e350e851facb1` |
| 9 | `def` | [firstOutput](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/firstoutput--70ce68aecfc359a9aa1ade10.md) | 88 | `declaration-track:70ce68aecfc359a9aa1ade10b8281a8f010d011b7eff787d24983b92c6b4615c` |
| 10 | `theorem` | [first_trace_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-trace-valid--777aa615069ec39a08308ce1.md) | 91 | `result-track:777aa615069ec39a08308ce158abd84317ea74550994d439e0441af17c6208c6` |
| 11 | `theorem` | [first_output_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-output-identity--f0a501a4776939efe922c0cd.md) | 99 | `result-track:f0a501a4776939efe922c0cd94cdbf82d14516f8f15ecc1475fbf57846a25e35` |
| 12 | `theorem` | [first_endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-endpoint-compute--e2980689e9947e1e293e2575.md) | 103 | `result-track:e2980689e9947e1e293e2575ccad9352e40c0e38014555c6270d689a472c126f` |
| 13 | `theorem` | [first_prefix_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/declarations/first-prefix-check--07e524cf379315f4bfdfe685.md) | 111 | `result-track:07e524cf379315f4bfdfe68593f374c468dfc2c750f842e3c75b257a387875e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
