# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.EighthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "597b3a8e8af37d64de0b10df00c28251e0153c05",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `597b3a8e8af37d64de0b10df00c28251e0153c05`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEightBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonEightBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/base-boundaries--d056694e604ec1f9cd9dbe7d.md) | 13 | `result-track:d056694e604ec1f9cd9dbe7da9df3d2eb79971cf80a442ebb9e39277e182130d` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/prefix-boundaries--6e50a37fd36d20a330f09a33.md) | 17 | `result-track:6e50a37fd36d20a330f09a33eff862244787047653435745cc602ba724c8b8d3` |
| 3 | `theorem` | [eighth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/eighth-block-endpoints--cd5a954dbc191695cef2ead3.md) | 21 | `result-track:cd5a954dbc191695cef2ead32d4d5fc45b2f602a2a966256982015e6d501f122` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/adjacent-positions-excluded--03b0d4f8234212d89d954e8d.md) | 26 | `result-track:03b0d4f8234212d89d954e8d2d912d3c952f465c3c902be31d37f9154840c3a6` |
| 5 | `theorem` | [logarithm_reduction_boundary](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/logarithm-reduction-boundary--c4e7f3a2e715d07452cee9f4.md) | 31 | `result-track:c4e7f3a2e715d07452cee9f4fcb6eccd3db11de0b83bcbe7d86faecd5fea4ea8` |
| 6 | `theorem` | [terminal_not_eighth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/terminal-not-eighth-block--3eab55ad21597d5fa0945291.md) | 35 | `result-track:3eab55ad21597d5fa09452910202c42f207265dd0a3d995c0db3a31a6208008a` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/first-unfilled-preserved--bfdecd4d3b847e638ef59d22.md) | 40 | `result-track:bfdecd4d3b847e638ef59d222962d8a040bfb4dc401836d64fba4a369c55e68a` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/terminal-is-copied-exactly--e6eeaf91710c7a2535b14415.md) | 45 | `result-track:e6eeaf91710c7a2535b144159ebd6233d9c1d15962125ae5ebcb9a3cfa00f7cc` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EighthBlockControls.lean/declarations/remaining-label-boundaries--4baf3d4c304e425baab6cfdf.md) | 49 | `result-track:4baf3d4c304e425baab6cfdfb54e7deef3dac37310d6b0d6735464be4222ab9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
