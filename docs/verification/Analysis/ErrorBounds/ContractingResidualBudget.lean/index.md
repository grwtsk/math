# Verification target: GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b8fbaf12492620046507e4b8be32ea263656a4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b8fbaf12492620046507e4b8be32ea263656a4`.

Source path: `GRWTSK/Analysis/ErrorBounds/ContractingResidualBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/ContractingResidualBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.FixedWitnessBudget`](../../../../mathematics/Analysis/ErrorBounds/FixedWitnessBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.FiniteResidualTelescope`](../../../../mathematics/Analysis/ErrorBounds/FiniteResidualTelescope.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forcingResponse](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/forcingresponse--1c8514be8075e7bede4f0a51.md) | 42 | `declaration-track:1c8514be8075e7bede4f0a519938f0b6644d210ee43f15cf7ecf2ded90f477f1` |
| 2 | `theorem` | [variable_budget_majorant](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/variable-budget-majorant--d80b617858dc9711287b2ca8.md) | 47 | `result-track:d80b617858dc9711287b2ca80aa6b1dd36ae8da1b36ff7aa4dae36ad1fe9c65b` |
| 3 | `theorem` | [restart_budget_majorant](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/restart-budget-majorant--817b557530cc3d80d03157fe.md) | 63 | `result-track:817b557530cc3d80d03157fe81b471da43b25dc8af419e3cf65948824320fc91` |
| 4 | `theorem` | [variable_budget_vanishes](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/variable-budget-vanishes--3dfdd67dde5fe2f2ad658cc1.md) | 80 | `result-track:3dfdd67dde5fe2f2ad658cc1a50d51288e5d18dcca104a419c721b3069caae15` |
| 5 | `theorem` | [no_fixed_negative_of_variable_forcing](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/no-fixed-negative-of-variable-forcing--3218de6c9cd66c373fb6c86b.md) | 114 | `result-track:3218de6c9cd66c373fb6c86b678048675297d01bb0d039eb81162fd955bd3554` |
| 6 | `def` | [channelMass](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/channelmass--dd0a1312166c9c09f4e81417.md) | 137 | `declaration-track:dd0a1312166c9c09f4e8141750923df1dcc962c7ab9ba8c8da53e7d26416de5e` |
| 7 | `theorem` | [channelMass_nonnegative](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/channelmass-nonnegative--991a5f375dab591b9ecfb8ca.md) | 140 | `result-track:991a5f375dab591b9ecfb8ca64f132b782843de389a47a7a66a0c374623a1176` |
| 8 | `theorem` | [readout_error_bound](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/readout-error-bound--3c5c992053baab036e83b035.md) | 147 | `result-track:3c5c992053baab036e83b0359c4ab226574dd1e67a4ca0b2125449352a203574` |
| 9 | `theorem` | [channel_mass_step](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/channel-mass-step--32d7f28d9aa4910cd8b563d8.md) | 164 | `result-track:32d7f28d9aa4910cd8b563d83118dec559875238e6ee8a980a620208807518ee` |
| 10 | `theorem` | [no_fixed_negative_of_weighted_channel_contraction](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/no-fixed-negative-of-weighted-channel-contraction--c313f055ee1db98ebe48f591.md) | 210 | `result-track:c313f055ee1db98ebe48f5914a159007ae7d8403f1343ac2c067d7d55f2d9ff5` |
| 11 | `theorem` | [constant_one_not_vanishing](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/constant-one-not-vanishing--3c727ec9737057ae1950ae40.md) | 238 | `result-track:3c727ec9737057ae1950ae40890d84a0310c3fffb756cf2f3ccf87d893938f31` |
| 12 | `theorem` | [geometric_forcing_recurrence](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/geometric-forcing-recurrence--38b8304952e8bb4583308968.md) | 246 | `result-track:38b8304952e8bb4583308968e1e19a4155fbe15c9d16dc046f0edbf66ce44ade` |
| 13 | `theorem` | [geometric_forcing_stage_four](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/geometric-forcing-stage-four--7d9fef7884bd4c99cff9231d.md) | 254 | `result-track:7d9fef7884bd4c99cff9231d9424682bb683328e17b8c7583116e2e5d436a10d` |
| 14 | `def` | [rowBoundCounterexample](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/rowboundcounterexample--5d6a2c9e9074a6180c8903f4.md) | 260 | `declaration-track:5d6a2c9e9074a6180c8903f4565916d65bc797b66850751d04aeaa2008afea30` |
| 15 | `theorem` | [row_bounds_do_not_give_column_contraction](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/declarations/row-bounds-do-not-give-column-contraction--a742b4f7cb9cd274b15c0513.md) | 264 | `result-track:a742b4f7cb9cd274b15c05131b5819842e84058be7c00827cfb17cc68c64ccb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
