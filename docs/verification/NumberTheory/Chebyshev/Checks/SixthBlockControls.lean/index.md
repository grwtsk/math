# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SixthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cfffc0850a160543714291ea91b9a5ea23e198a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cfffc0850a160543714291ea91b9a5ea23e198a`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSixBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonSixBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/base-boundaries--3fe8df482c92438ecbecd298.md) | 13 | `result-track:3fe8df482c92438ecbecd298d06039b05a69de44bfd133f22311b26a8b9c4889` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/prefix-boundaries--80921d91c770cbde50de2f68.md) | 17 | `result-track:80921d91c770cbde50de2f68a739262a4ba99863de70ba8841f69409bb54fd35` |
| 3 | `theorem` | [sixth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/sixth-block-endpoints--13707c73e985f02eb112841a.md) | 21 | `result-track:13707c73e985f02eb112841a8739514fa66070be2cc7b2fb9c6d144749597353` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/adjacent-positions-excluded--daa201648a56aa674582757e.md) | 26 | `result-track:daa201648a56aa674582757e19d527d6e39d967e6fbb5b7c9a933ac28bcd6fd4` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/logarithm-reduction-uniform--258276f366f8e39a0e6d8405.md) | 31 | `result-track:258276f366f8e39a0e6d8405169ffebdd72bcdf72f080641c97fe11963588c99` |
| 6 | `theorem` | [terminal_not_sixth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/terminal-not-sixth-block--46a4c9e944dd98f235a6eeb6.md) | 35 | `result-track:46a4c9e944dd98f235a6eeb6cba8df7627df573cb4f2b667a61f377dd0bddf6d` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/first-unfilled-preserved--62799368fced20d59bb7459f.md) | 40 | `result-track:62799368fced20d59bb7459f8d6d5a08f79bf03021871ead1708f4d3b43049d7` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/terminal-is-copied-exactly--02d3c660c74c6b10561897a9.md) | 45 | `result-track:02d3c660c74c6b10561897a90399257eacb6b7e7d6a6ffb886a78e96799ba297` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/SixthBlockControls.lean/declarations/remaining-label-boundaries--e8b6603b932dda9a67551b81.md) | 49 | `result-track:e8b6603b932dda9a67551b81cf6148e0a5f024cfebbc4b041a28dd7513cfe3ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
