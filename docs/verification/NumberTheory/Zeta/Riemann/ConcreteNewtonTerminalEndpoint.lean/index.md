# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "070e0fe9efc69aa4b66826b61e22a54b0647bcff",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `070e0fe9efc69aa4b66826b61e22a54b0647bcff`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonBlockAcceptance.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.FinCases` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [terminalTrace](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminaltrace--326a435a1c30c8e745e161f5.md) | 28 | `declaration-track:326a435a1c30c8e745e161f551df840a6a8c2df8dd4784ded2b489f6e811e5d8` |
| 2 | `def` | [terminalOutput](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminaloutput--287627ee50e6c8ac265fc6fd.md) | 40 | `declaration-track:287627ee50e6c8ac265fc6fdde4d4fbe86e8b41dfe43d6074ef65179b95641a9` |
| 3 | `theorem` | [terminal_steps_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminal-steps-valid--2f2032f1a236a069bd2e173c.md) | 44 | `result-track:2f2032f1a236a069bd2e173c7b412efe6f0d086da01f5f74dc6b8f46e6301e6e` |
| 4 | `theorem` | [terminal_output_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminal-output-identity--5112315616e534d0b4bb95a0.md) | 50 | `result-track:5112315616e534d0b4bb95a01f6d5b076041c437b393cd6dd06054a531e63a76` |
| 5 | `theorem` | [terminal_endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminal-endpoint-compute--ae6373b34015bdabda147707.md) | 55 | `result-track:ae6373b34015bdabda147707587a6ba0cc0271dd6f02f830c4113b2106821968` |
| 6 | `theorem` | [terminal_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/terminal-check--142c825e41d588b9c8d5340d.md) | 63 | `result-track:142c825e41d588b9c8d5340d387578fdd3eb324aaedfd6697cda16ec84ba93b7` |
| 7 | `def` | [withTerminal](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/withterminal--18934d9d50f1c229793dca25.md) | 72 | `declaration-track:18934d9d50f1c229793dca25f857edf96fd9e8c01675faaa0349776721f76e41` |
| 8 | `theorem` | [attached_terminal_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/attached-terminal-check--3e99e78a3c31a5e65e27fe2e.md) | 75 | `result-track:3e99e78a3c31a5e65e27fe2e0cb77d04f4b9bb6a457a6b18ef88fd4402ed171d` |
| 9 | `theorem` | [source_acceptance_of_prefix_and_final](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/declarations/source-acceptance-of-prefix-and-final--7fc2fbfdd008225b14863e58.md) | 81 | `result-track:7fc2fbfdd008225b14863e5893bebf5e27f6884e9cbcd1a2a413de2004ca4e4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
