# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FourthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b653ac0d87a50287f942e249c6a086a2b96e1ea",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b653ac0d87a50287f942e249c6a086a2b96e1ea`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFourBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFourBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/base-boundaries--877bbd7957e9fadf0eff942a.md) | 13 | `result-track:877bbd7957e9fadf0eff942a4bbd4eec5b44a6be589b2f0d17aec3c0d9640b7a` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/prefix-boundaries--d40125150958944739d7a8b7.md) | 17 | `result-track:d40125150958944739d7a8b7d4da4eb9e5d29d4fa4c365b2b203ec43a87d665f` |
| 3 | `theorem` | [fourth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/fourth-block-endpoints--9d1667d54ef70f869c60a7b5.md) | 21 | `result-track:9d1667d54ef70f869c60a7b5baa180cbc76c7b7928d75bc2cb6549448ce9086e` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/adjacent-positions-excluded--a890d140d4f6e9120107fdcf.md) | 26 | `result-track:a890d140d4f6e9120107fdcf27ccb76662abc943a2d636c9dcd8204e5c9fed09` |
| 5 | `theorem` | [logarithm_reduction_boundary](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/logarithm-reduction-boundary--f2dd887751f4c089f634dec6.md) | 31 | `result-track:f2dd887751f4c089f634dec6436a239f49a849b468c39e693dbb23e6821a995d` |
| 6 | `theorem` | [terminal_not_fourth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/terminal-not-fourth-block--4c90943bbfe3edd6811d82b0.md) | 35 | `result-track:4c90943bbfe3edd6811d82b053905966f41267dd44319aae67c5ce07b9369a6e` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/first-unfilled-preserved--c9f417176fc0a9fd13ce6ad8.md) | 40 | `result-track:c9f417176fc0a9fd13ce6ad849185433c4bc2ca871d6f23118488cffddbf671a` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/terminal-is-copied-exactly--3075f9d0685aaa95284484ce.md) | 45 | `result-track:3075f9d0685aaa95284484ceed1ad912a284aff4cb45c4b7d06787acd6a44916` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FourthBlockControls.lean/declarations/remaining-label-boundaries--d751e43602f755afbb003dae.md) | 49 | `result-track:d751e43602f755afbb003dae61a5eadd84165a65e7d5e4057bf86ebdc9db7fc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
