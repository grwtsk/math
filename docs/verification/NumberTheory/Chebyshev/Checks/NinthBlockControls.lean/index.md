# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.NinthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c164088622cba62a9a67d2601c032bdebf4f14",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c164088622cba62a9a67d2601c032bdebf4f14`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonNineBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonNineBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/base-boundaries--da9155cfcf1d9c4931d61273.md) | 13 | `result-track:da9155cfcf1d9c4931d612737b8b46bfc3ed3ea610407f7ef64d075a8227ecf8` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/prefix-boundaries--b1278e11535d605b6e92b217.md) | 17 | `result-track:b1278e11535d605b6e92b21718e5e8f0147ddd2047d9ea74ae45cdd4661c3fcc` |
| 3 | `theorem` | [ninth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/ninth-block-endpoints--6e4a7fb0e32cbec889e759e0.md) | 21 | `result-track:6e4a7fb0e32cbec889e759e021bc2cfb6d9cea6587bb645ef9c926dee56f7a07` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/adjacent-positions-excluded--40364109e1a99ec799de0428.md) | 26 | `result-track:40364109e1a99ec799de0428bd33ad42e32b731ea9720fc55a3479a1fe304213` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/logarithm-reduction-uniform--e4a502f86d57b49a1cfb866c.md) | 31 | `result-track:e4a502f86d57b49a1cfb866c0491a5b104d7eef5ef49130869c3336f35d1151f` |
| 6 | `theorem` | [terminal_not_ninth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/terminal-not-ninth-block--60f7bb31365403e76d257b84.md) | 35 | `result-track:60f7bb31365403e76d257b84ea5431aae6e96aab40d1e6f8cc41943f1fbb2ba2` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/first-unfilled-preserved--9f310e4ca1bdbbeebb0a0902.md) | 40 | `result-track:9f310e4ca1bdbbeebb0a090258c006aed7c67cd45beee0ee02bd788b02407459` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/terminal-is-copied-exactly--25e8f766527ecea3bc2944cb.md) | 45 | `result-track:25e8f766527ecea3bc2944cb0fe573467d108020b7fe082fce31910a85231402` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/NinthBlockControls.lean/declarations/remaining-label-boundaries--e5c0736c3faeffd92e6f912b.md) | 49 | `result-track:e5c0736c3faeffd92e6f912b8b2b115378b4b457e66f62a8db740096c5e7f7a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
