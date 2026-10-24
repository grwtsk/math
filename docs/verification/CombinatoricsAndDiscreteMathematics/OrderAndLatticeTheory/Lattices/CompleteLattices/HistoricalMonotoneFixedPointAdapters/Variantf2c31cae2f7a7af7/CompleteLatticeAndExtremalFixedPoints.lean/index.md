# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattices.CompleteLattices.HistoricalMonotoneFixedPointAdapters.Variantf2c31cae2f7a7af7.CompleteLatticeAndExtremalFixedPoints

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "139def13b19b03b5225b6e9d27d51cf025bdd10b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `139def13b19b03b5225b6e9d27d51cf025bdd10b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.FixedPoints` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Contracting` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [knasterTarskiFixedPointLattice](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/declarations/knastertarskifixedpointlattice--54c86b7fc404b3578fdb4d6d.md) | 44 | `declaration-track:54c86b7fc404b3578fdb4d6d30753b5c42f5f4cb69935ac5f8a351afe04d61d9` |
| 2 | `theorem` | [knasterTarski_least_fixed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/declarations/knastertarski-least-fixed--eb89cee86c70aca7afc72362.md) | 49 | `result-track:eb89cee86c70aca7afc7236265173611f6abb767a1d70a26f57742354e00f5c8` |
| 3 | `theorem` | [knasterTarski_greatest_fixed](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/declarations/knastertarski-greatest-fixed--7fd15d913b5188e13c6f71c8.md) | 53 | `result-track:7fd15d913b5188e13c6f71c89dfb6e54611fcd55cedb15d968a36cca3ed377b2` |
| 4 | `theorem` | [knasterTarski_least](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/declarations/knastertarski-least--d93842efb63b7a88392fa1e0.md) | 57 | `result-track:d93842efb63b7a88392fa1e09a1a4a8220bbe73d0210da4e0b3778fd74c0c8ea` |
| 5 | `theorem` | [knasterTarski_greatest](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattices/CompleteLattices/HistoricalMonotoneFixedPointAdapters/Variantf2c31cae2f7a7af7/CompleteLatticeAndExtremalFixedPoints.lean/declarations/knastertarski-greatest--01724c894a9de22b56483506.md) | 61 | `result-track:01724c894a9de22b56483506b7346e9ca324a47f59d30e9bcb885da91821dded` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
