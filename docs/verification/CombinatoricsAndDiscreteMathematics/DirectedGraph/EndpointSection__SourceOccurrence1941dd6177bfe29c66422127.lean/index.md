# Verification target: GRWTSK.Combinatorics.DirectedGraph.EndpointSection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5669f6f998e54ee4e2801727c9e5f4299ad90d89",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/EndpointSection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5669f6f998e54ee4e2801727c9e5f4299ad90d89`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/EndpointSection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/EndpointSection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.OccurrencePrefix`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/OccurrencePrefix__SourceOccurrence91a9c8029ba9e6d66d16bbbd.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Order.Embeddings.PrefixObstruction`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_preserving_endpoint_section](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/declarations/no-preserving-endpoint-section--72b8c9f381388b564d03ba0a.md) | 37 | `result-track:72b8c9f381388b564d03ba0a504352b42d44971d9e3875dcd11d066c6b7c54d6` |
| 2 | `instance` | [diamondQuiver](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/declarations/diamondquiver--d885f67e6502f9714cdb87de.md) | 59 | `declaration-track:d885f67e6502f9714cdb87de419fb2a7b9936b0dd8352047e911fc98e6c4c42c` |
| 3 | `theorem` | [diamond_reachable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/declarations/diamond-reachable-iff--04c4c1a9ea706cebdf555833.md) | 62 | `result-track:04c4c1a9ea706cebdf555833029446e860c7db1dfe0352eb9fe1b5c95c9e5323` |
| 4 | `theorem` | [diamond_bottom_reachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/declarations/diamond-bottom-reachable--90606eb994b6e0726dd93ee6.md) | 71 | `result-track:90606eb994b6e0726dd93ee6cbc74d0167912619d307bf2f54cee1a97cf63ad2` |
| 5 | `def` | [diamondVertex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence1941dd6177bfe29c66422127.lean/declarations/diamondvertex--fe342327aacef42de177842b.md) | 75 | `declaration-track:fe342327aacef42de177842bdee9bd2127d53b2250d3a56e4d1ce876c842004b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
