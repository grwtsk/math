# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FifthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101802e128ad6a4d3bb74da36e5bb06d69eebcb2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101802e128ad6a4d3bb74da36e5bb06d69eebcb2`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFiveBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFiveBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/base-boundaries--f4cf45d37c9cda93b83dac53.md) | 13 | `result-track:f4cf45d37c9cda93b83dac538521be1bac153ef9210240bf1f2c0160943a7ee9` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/prefix-boundaries--c650c649cbf14be437f1852f.md) | 17 | `result-track:c650c649cbf14be437f1852f67a5b7383a7e5788da92dae50c7a94f1b9612e28` |
| 3 | `theorem` | [fifth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/fifth-block-endpoints--019c90fbb82b96da64f219fb.md) | 21 | `result-track:019c90fbb82b96da64f219fb253016db8782b9432cd2f5ab73c1eba26d1c7af5` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/adjacent-positions-excluded--2c1e0c717484c6eb92066099.md) | 26 | `result-track:2c1e0c717484c6eb920660990a71521bdb740fd70cfb0ea3ad6f136b39b1f5de` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/logarithm-reduction-uniform--b557e13683332ced0e34df2a.md) | 31 | `result-track:b557e13683332ced0e34df2ae5c8a86d78e5a76837c72de18f1ea321bec5e84a` |
| 6 | `theorem` | [terminal_not_fifth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/terminal-not-fifth-block--086394a7ca747f56fa47e48b.md) | 35 | `result-track:086394a7ca747f56fa47e48bdb86e052bc65cc03ce63b010d29e008b98c23bfd` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/first-unfilled-preserved--f5b72f4020a24f7ce8c11feb.md) | 40 | `result-track:f5b72f4020a24f7ce8c11feb33a2a6ac295d1edaa4d3ae4294c56cf5632ed4e5` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/terminal-is-copied-exactly--b06188685cf71a126afb8082.md) | 45 | `result-track:b06188685cf71a126afb808212e7a04d6dcae203886f85de7d6ce2b20ef561e7` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FifthBlockControls.lean/declarations/remaining-label-boundaries--720cf502d08af815754cf39b.md) | 49 | `result-track:720cf502d08af815754cf39bdb65d2987401167c87d116a925c1ed26c4c3f3da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
