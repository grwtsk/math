# Verification target: GRWTSK.Analysis.Operator.UnboundedGraph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af02f0a037a14e7c444e52debe14202d4e0428eb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/UnboundedGraph.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af02f0a037a14e7c444e52debe14202d4e0428eb`.

Source path: `GRWTSK/Analysis/Operator/UnboundedGraph.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/UnboundedGraph.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.UnboundedPort`](../../../../mathematics/Analysis/OperatorTheory/UnboundedPort.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graph](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/graph--06be09040dcf17851ba0b8fe.md) | 13 | `declaration-track:06be09040dcf17851ba0b8fe59ee0fc1bb3fef9aac181b6b6f493e895315933e` |
| 2 | `theorem` | [mem_graph](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/mem-graph--9a4b36f2975b773f0ab2a13a.md) | 17 | `result-track:9a4b36f2975b773f0ab2a13a25eaae647c79f4d01139e8d907db18ba80119460` |
| 3 | `def` | [graphMap](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/graphmap--10b7d4cc40e03d7702e57a34.md) | 35 | `declaration-track:10b7d4cc40e03d7702e57a342d9ceb85bb4a27d61d200e55988157d1c8b82e0d` |
| 4 | `theorem` | [graphMap_apply](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/graphmap-apply--1aeb399bf6268842e247813b.md) | 43 | `result-track:1aeb399bf6268842e247813b11131c84ff777aae96a6e75fb7ea061839a22673` |
| 5 | `theorem` | [graphMap_comp](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/graphmap-comp--6337d42c3cb28ede374ee052.md) | 47 | `result-track:6337d42c3cb28ede374ee0527fe017042c54e05a5e859f51324d7801ca68802b` |
| 6 | `theorem` | [graphMap_identity](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/graphmap-identity--df0a55aa480db8b22230ebb5.md) | 52 | `result-track:df0a55aa480db8b22230ebb5bdcf04ba8906614476a3fdbdfa5f63474cfc47e2` |
| 7 | `theorem` | [maps_graph_of_intertwines](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/maps-graph-of-intertwines--e20adcd1260c34bc4bc2cab2.md) | 57 | `result-track:e20adcd1260c34bc4bc2cab2737e951c44c5d652f6b491c48cdb021cbd4b2233` |
| 8 | `theorem` | [maps_graph](../../../../mathematics/Analysis/OperatorTheory/UnboundedGraph.lean/declarations/maps-graph--57a748210c4a6e665befbcce.md) | 72 | `result-track:57a748210c4a6e665befbcce18ce56bfc961f6123250cf839ccc8ec5e6922cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
