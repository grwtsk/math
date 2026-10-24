# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab94a2ffa390b61714eebda5906ea5eee05abc24",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab94a2ffa390b61714eebda5906ea5eee05abc24`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerIntegerSeed`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerIntegerSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encoding](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/encoding--55c587a48a3228fde178ea53.md) | 29 | `declaration-track:55c587a48a3228fde178ea53be658af50e19f2db57c311739b7d0df10c57152d` |
| 2 | `theorem` | [encoding_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/encoding-valid--3f2a793ac595bd6be74916a9.md) | 37 | `result-track:3f2a793ac595bd6be74916a97cb46a8ef047c5405b9b395af5b71beeb3a55f05` |
| 3 | `theorem` | [reduction_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/reduction-data--548a52441a8eb1dfb4c11a59.md) | 41 | `result-track:548a52441a8eb1dfb4c11a59629ed656e989f657d927658e33b5a8c40aa51727` |
| 4 | `theorem` | [log_decomposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/log-decomposition--0d6094bb619cf9833c871b09.md) | 48 | `result-track:0d6094bb619cf9833c871b09be12de29ec6f606981468202203eb0aeecdc9695` |
| 5 | `theorem` | [log_data](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/log-data--e7aa4fee0f6fa649f2716972.md) | 59 | `result-track:e7aa4fee0f6fa649f2716972679fe0390d7a79216dbd73932f3de728b453bd8b` |
| 6 | `theorem` | [encoding_binding](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/encoding-binding--84e9e3e54868f030939baf8f.md) | 70 | `result-track:84e9e3e54868f030939baf8fc4d3a10d84a20db0a5032f4f341f8dee512f02ba` |
| 7 | `theorem` | [terminal_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/terminal-admissible--c43bf8e963bc00c066d73ef6.md) | 84 | `result-track:c43bf8e963bc00c066d73ef6c1b6e3d7949fd9e751f71c35ceac49972e40c8c8` |
| 8 | `def` | [terminalStart](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/terminalstart--2f5fcfefa026dabe56789681.md) | 94 | `declaration-track:2f5fcfefa026dabe56789681486cb174a068bb44e0375e68d99158ccd51bb5c2` |
| 9 | `theorem` | [real_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/real-window--a1e8357a3bddf9fa467c2a57.md) | 97 | `result-track:a1e8357a3bddf9fa467c2a578ed57799b77d8f58ba58f5e56f15316357d77b4c` |
| 10 | `theorem` | [imag_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/imag-window--8b9062c3fdfa9429e59e24c6.md) | 102 | `result-track:8b9062c3fdfa9429e59e24c66242b5a41a77f3fdee5e82f2ae0244ed66a1ac30` |
| 11 | `theorem` | [error_window](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/error-window--48260d463236a3553396d339.md) | 107 | `result-track:48260d463236a3553396d339f920696f3617993b72f1f68580b93c4418164863` |
| 12 | `theorem` | [terminal_windows](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/terminal-windows--b8b480f834a1e0aba43a3fac.md) | 113 | `result-track:b8b480f834a1e0aba43a3fac2333e3d2cf05564fea48dc533154ea5eb461febc` |
| 13 | `theorem` | [terminal_seed_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalSeed.lean/declarations/terminal-seed-valid--bc0e8f33d92f309bed64c899.md) | 117 | `result-track:bc0e8f33d92f309bed64c899681faf479efda74c29793f7d1521e4a66ff35c69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
