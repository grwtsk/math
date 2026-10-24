# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.EleventhBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7d8ec3ba7c3802c183e48a5f195130f570f4f65",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7d8ec3ba7c3802c183e48a5f195130f570f4f65`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonElevenBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonElevenBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/base-boundaries--5344409af99b7a5bd7cf19f4.md) | 13 | `result-track:5344409af99b7a5bd7cf19f48111f0c91180e5ca2ca8c70b7129adfb3b1244dd` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/prefix-boundaries--79b89549866867211dc05394.md) | 17 | `result-track:79b89549866867211dc053948ae4ada83e9c18cac6e77dfa8911d3463a2b22e3` |
| 3 | `theorem` | [eleventh_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/eleventh-block-endpoints--c34ec63c3be85261b9fd4802.md) | 21 | `result-track:c34ec63c3be85261b9fd4802eb8e1625cd8b2320a70e459e842c93080aad6d60` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/adjacent-positions-excluded--1d09f21e9ecd2887f9838ff5.md) | 26 | `result-track:1d09f21e9ecd2887f9838ff57772d96e6c61ad26181c011852da5b54cd249a36` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/logarithm-reduction-uniform--8d42acc6a7033585404c7db5.md) | 31 | `result-track:8d42acc6a7033585404c7db5d31aef19d9cf282536fc7095db241d4716e1f262` |
| 6 | `theorem` | [terminal_not_eleventh_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/terminal-not-eleventh-block--a56c22df8f7458586b6f6b86.md) | 35 | `result-track:a56c22df8f7458586b6f6b8660acf4df1a627103e62b2bde27e39c1a68f0901b` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/first-unfilled-preserved--62b965f767d69217e80bc65b.md) | 40 | `result-track:62b965f767d69217e80bc65b78492ae26bc6d87c2a412eaf9d667d32422cf676` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/terminal-is-copied-exactly--492caa27d26ada9ab0f639cc.md) | 45 | `result-track:492caa27d26ada9ab0f639cc383db3ef8cd52dd997a13f918991dd41821e3909` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/EleventhBlockControls.lean/declarations/remaining-label-boundaries--e4f61c4c76385bb53e2c5e4c.md) | 49 | `result-track:e4f61c4c76385bb53e2c5e4c2c5de312658ca7cc2de7da981a0379d4fd462796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
