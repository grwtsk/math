# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.EndpointSection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d805156560b48b04d80099c8c11cd6942641ba0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d805156560b48b04d80099c8c11cd6942641ba0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.OccurrencePrefix`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrenceaf9927a5eca7d26fc713e7f3.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Embeddings.PrefixObstruction`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence0facea581fdb6db5b0d12636.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_preserving_endpoint_section](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/declarations/no-preserving-endpoint-section--cb68d061e3e085583ab7ce03.md) | 37 | `result-track:cb68d061e3e085583ab7ce03a9c2a39dea9ed121528c9c03552b5800219780e9` |
| 2 | `instance` | [diamondQuiver](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/declarations/diamondquiver--8868bdbe78ec2fccd4e783d6.md) | 59 | `declaration-track:8868bdbe78ec2fccd4e783d6986d4542946321acbac699a726f15e7e332be8b5` |
| 3 | `theorem` | [diamond_reachable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/declarations/diamond-reachable-iff--03c141bb946fd5dcb867b898.md) | 62 | `result-track:03c141bb946fd5dcb867b8988f380a05bd1b68d77fd0a27fe3f943ffc9609731` |
| 4 | `theorem` | [diamond_bottom_reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/declarations/diamond-bottom-reachable--2fcd046a3b0d730fc1e20414.md) | 71 | `result-track:2fcd046a3b0d730fc1e20414dc3ef13128362e9a94095810a569050eb9c808e9` |
| 5 | `def` | [diamondVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/declarations/diamondvertex--2c95fba5027859974cd3fc92.md) | 75 | `declaration-track:2c95fba5027859974cd3fc92bd8b6030c4078b86fe8523c080336b627a1f93c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
