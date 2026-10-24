# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26ba9e7cff89deab8a368c276571b980c9c96a43",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26ba9e7cff89deab8a368c276571b980c9c96a43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EdgeTrace`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EdgeTrace__SourceOccurrencef63fc308c066ab63cbffed9d.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/trace--c759adebc281b3502eb4e8d9.md) | 36 | `declaration-track:c759adebc281b3502eb4e8d9cf9235415b9d80f77732fcb32eb177b32cde226e` |
| 2 | `theorem` | [trace_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/trace-injective--bead646fbe5d95a3dd16e100.md) | 39 | `result-track:bead646fbe5d95a3dd16e1009ed4e4490f67e90bc3a451b281b31075c0afde5d` |
| 3 | `theorem` | [trace_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/trace-comp--3d4667c8efb0416dc80801be.md) | 47 | `result-track:3d4667c8efb0416dc80801beb264e738c29ae8221a4f81003818468db5049553` |
| 4 | `theorem` | [reachable_iff_prefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/reachable-iff-prefix--51b201a55ecead2fd269f661.md) | 52 | `result-track:51b201a55ecead2fd269f661505ac7cd3b0a41550c538362cdeec4d4ad801761` |
| 5 | `abbrev` | [ReachableVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/reachablevertex--9358e9d375685e40d6825386.md) | 86 | `declaration-track:9358e9d375685e40d6825386e7ce09e79c37026769c16db71982003ccd049722` |
| 6 | `def` | [reachableEndpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/reachableendpoint--67c65637680f3e0b5e97a50b.md) | 89 | `declaration-track:67c65637680f3e0b5e97a50bbfd4841189a80c558eb8d30124eec64ba12d2eea` |
| 7 | `def` | [selectedOccurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/selectedoccurrence--7bd8e5cd07a57feafbf6c959.md) | 93 | `declaration-track:7bd8e5cd07a57feafbf6c959caf21d9cb2bd4775ac1eec48c387273981b38827` |
| 8 | `theorem` | [endpoint_selectedOccurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/endpoint-selectedoccurrence--870d5c8c376afced8b8e0c2d.md) | 96 | `result-track:870d5c8c376afced8b8e0c2df9b145ab37f0ed0c61dbb000a255ef4e1b113057` |
| 9 | `theorem` | [endpoint_right_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/endpoint-right-inverse--f0869053545aa712742d2e1f.md) | 100 | `result-track:f0869053545aa712742d2e1f29ff1d139930dd1bb8adcc2ea331eedd75047b83` |
| 10 | `theorem` | [reachableEndpoint_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/reachableendpoint-surjective--0602ed36c0057ff7816332e4.md) | 104 | `result-track:0602ed36c0057ff7816332e40147cace43e46093e53697fc7deb894b6f022cdf` |
| 11 | `theorem` | [selectedOccurrence_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/selectedoccurrence-injective--70104c9c659ace1989c21459.md) | 107 | `result-track:70104c9c659ace1989c21459333cb6480a604b5709f2901cab67bddb636401a7` |
| 12 | `def` | [retractOccurrence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/retractoccurrence--e05c2d3bb1f6dbf452278d64.md) | 111 | `declaration-track:e05c2d3bb1f6dbf452278d64bada9c1ad596284c376aa8c9b743e0dd46ba41b6` |
| 13 | `theorem` | [retractOccurrence_endpoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/retractoccurrence-endpoint--016a27745753388b0229bf0c.md) | 114 | `result-track:016a27745753388b0229bf0c89307ef3ad1a06af04ef87c73131eefd747bd0fc` |
| 14 | `theorem` | [retractOccurrence_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/retractoccurrence-idempotent--48a910ead8a42ed7804db0b4.md) | 117 | `result-track:48a910ead8a42ed7804db0b4539ad83a9c69e8eb80d8b27aeb26cbd2587c9a36` |
| 15 | `theorem` | [retractOccurrence_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/retractoccurrence-eq-iff--c9c7f2a9a68dd08ff5f9c03d.md) | 122 | `result-track:c9c7f2a9a68dd08ff5f9c03d4889fe1c7ad81c133a108f269e598aadb968a20b` |
| 16 | `theorem` | [no_left_inverse_of_distinct_histories](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/declarations/no-left-inverse-of-distinct-histories--178e573a281a485baeeeffd6.md) | 132 | `result-track:178e573a281a485baeeeffd679a5b6ddf3ca0793f33e505b53812a992d93968a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
