# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SecondBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aefe6f0fa4473b68c7607898a244b8a68c19330",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aefe6f0fa4473b68c7607898a244b8a68c19330`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTwoBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTwoBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/base-boundaries--66c63730cb15c4d8e151d6ae.md) | 15 | `result-track:66c63730cb15c4d8e151d6aeb636cde03ed28e61c0d97aef7419dfcf780daaa6` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/prefix-boundaries--d3c3b68fc683effbfee0369e.md) | 19 | `result-track:d3c3b68fc683effbfee0369ea2f97804171383751be09b5e72effdaf0730d902` |
| 3 | `theorem` | [second_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/second-block-endpoints--1fcba48a73f34cbb10843d4f.md) | 23 | `result-track:1fcba48a73f34cbb10843d4f4293dce6900971d87b11be0591135a2565af66af` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/adjacent-positions-excluded--d8530d7cc46071d63f06613e.md) | 28 | `result-track:d8530d7cc46071d63f06613e06191cba252556a7ebdce4e07a2f38d370a3a818` |
| 5 | `theorem` | [logarithm_reduction_boundary](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/logarithm-reduction-boundary--bdba53296bada242b4665af9.md) | 34 | `result-track:bdba53296bada242b4665af94dc6058e698622d44a3a979d6b9329bac172af38` |
| 6 | `theorem` | [terminal_not_second_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/terminal-not-second-block--b4860a11a5048ec347ec2937.md) | 38 | `result-track:b4860a11a5048ec347ec293711480eb935a3eb3c23bb96d9c04da7485eea84d3` |
| 7 | `theorem` | [changed_error_changes_record](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/changed-error-changes-record--e508cf70ff4cb85ff2b28328.md) | 44 | `result-track:e508cf70ff4cb85ff2b2832829489c2dadcd2cae2b840356ff4f9d101c738c8c` |
| 8 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/first-unfilled-preserved--d04ad0fd01f2a3f96a99e700.md) | 49 | `result-track:d04ad0fd01f2a3f96a99e700e456e3dcc94ccca710ebd75a524e453c5da9ee35` |
| 9 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/terminal-is-copied-exactly--4930f19d918b476ccabf4cf7.md) | 54 | `result-track:4930f19d918b476ccabf4cf79f396de637c4f321b38d771358f021ba54236c78` |
| 10 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SecondBlockControls.lean/declarations/remaining-label-boundaries--799799b7f6784931a9b71a50.md) | 58 | `result-track:799799b7f6784931a9b71a5023230bee077e5f21047b913548c45301fb4c464e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
