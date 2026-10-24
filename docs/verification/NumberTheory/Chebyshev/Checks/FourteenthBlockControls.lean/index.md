# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FourteenthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080e2d172186636000103f932846cba62b471c2b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080e2d172186636000103f932846cba62b471c2b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourteenBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourteenBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/base-boundaries--dad0e3556bf72321ebe4a1c3.md) | 13 | `result-track:dad0e3556bf72321ebe4a1c3bf34d52d784973cd88b7179ae57f18a975734423` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/prefix-boundaries--17094e2e4b0d60901f6e66a0.md) | 17 | `result-track:17094e2e4b0d60901f6e66a02f628e060c738dd6d0d194ee22e623c8f90dd9de` |
| 3 | `theorem` | [fourteenth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/fourteenth-block-endpoints--591ab0eb3c51ab708e395e4d.md) | 21 | `result-track:591ab0eb3c51ab708e395e4d6d32032c44c0abc1590974b4c37c2670702317e1` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/adjacent-positions-excluded--110e6167372a89f365f7f574.md) | 26 | `result-track:110e6167372a89f365f7f5744205c677caa907a8ebe6e65c63303feed6df347c` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/logarithm-reduction-uniform--7ccb1b0f7649e3f9a9dd17ae.md) | 31 | `result-track:7ccb1b0f7649e3f9a9dd17aef6d2a3cc530eb88888726d190cb9e16b4f36f13c` |
| 6 | `theorem` | [terminal_not_fourteenth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/terminal-not-fourteenth-block--29296cb4333211c427d22638.md) | 35 | `result-track:29296cb4333211c427d2263820d737963d35203d95081396c93ff4d5e0b869c5` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/first-unfilled-preserved--ce6a5d080ae4785dfd23777b.md) | 40 | `result-track:ce6a5d080ae4785dfd23777ba948d9f65fa64d829df81305a51569ef40a31679` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/terminal-is-copied-exactly--be82e48e9292c80c841daa92.md) | 45 | `result-track:be82e48e9292c80c841daa92250246a49e93d6d374a347a484e3a02a0511e1d9` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourteenthBlockControls.lean/declarations/remaining-label-boundaries--7cf5120b013d2c1d38384637.md) | 49 | `result-track:7cf5120b013d2c1d3838463790b3c5379ea0e6ec98e585612c49049e14ddae37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
