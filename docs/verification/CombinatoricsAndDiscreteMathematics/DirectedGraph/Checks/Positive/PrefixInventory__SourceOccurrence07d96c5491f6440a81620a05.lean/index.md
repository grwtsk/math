# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixInventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "647b0adc0c8515fc83cb85810b25b798fcc244a2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixInventory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `647b0adc0c8515fc83cb85810b25b798fcc244a2`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixInventory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixInventory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixInventory`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence1214d6c07d7bee230b8b5753.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [totalEdgeDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/totaledgedecidableeq--a3afd4a884eb3f2df2228a4f.md) | 14 | `declaration-track:a3afd4a884eb3f2df2228a4f3deb2624e523d877c1dbf79127e65c12cda011a8` |
| 2 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/falseoccurrence--154d597facba4e90b623abd4.md) | 17 | `declaration-track:154d597facba4e90b623abd467748a20e7f785d78981c7c63563065e76cfa4c4` |
| 3 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/trueoccurrence--fad1f137a873bb225420373c.md) | 20 | `declaration-track:fad1f137a873bb225420373cc3beb0d8b87033c9cecfd142f6b2df0d007c004d` |
| 4 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/falsetag--d8a92813aa3c0e72e07b25b7.md) | 23 | `declaration-track:d8a92813aa3c0e72e07b25b766b6309b6878de6c904eac8682571063df60b15c` |
| 5 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/truetag--7b370cd8ad8be33c8c0091cb.md) | 26 | `declaration-track:7b370cd8ad8be33c8c0091cb24adda820f290b3506c9e9e13a0575b09710e866` |
| 6 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/tags-distinct--768e1a1d1cb165e6c7f59a0f.md) | 29 | `result-track:768e1a1d1cb165e6c7f59a0fe6d5c61d1427069e80094599b85833cf1e3c3085` |
| 7 | `def` | [parallelRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/parallelrows--b317f3e30136683ba750df0a.md) | 35 | `declaration-track:b317f3e30136683ba750df0ae7d26761f279cfe0d16a69d9dacff7488eba78c7` |
| 8 | `theorem` | [parallel_inventory_exact](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/parallel-inventory-exact--2301f5c1d2986087d6bc1c6d.md) | 39 | `result-track:2301f5c1d2986087d6bc1c6d9552613c018e02c04c56886457b1c8ffe5069b42` |
| 9 | `theorem` | [parallel_same_endpoint](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/parallel-same-endpoint--eddcb704ec40354bea5bf5cd.md) | 44 | `result-track:eddcb704ec40354bea5bf5cd148995f2cad51c83545b899ba45a906381986ff5` |
| 10 | `theorem` | [parallel_occurrences_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/parallel-occurrences-distinct--bb4e33bd5855352df24fd3ea.md) | 46 | `result-track:bb4e33bd5855352df24fd3ea78833867c239561c64c5b5db187cce5f8babaf9c` |
| 11 | `theorem` | [parallel_common_prefix_only_empty](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/parallel-common-prefix-only-empty--bb9289bbf897b684fbd7d7fb.md) | 51 | `result-track:bb9289bbf897b684fbd7d7fb3fa29e34acc8ea564c36842f4d9408ca644960ad` |
| 12 | `theorem` | [endpoint_rows_lose_identity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/endpoint-rows-lose-identity--6b2556ece6725b96e4aef143.md) | 63 | `result-track:6b2556ece6725b96e4aef143f64d2c335479113ef9773530bf56f82956d3c60e` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--67dbc4ea85473a09c433dedc.md) | 71 | `declaration-track:67dbc4ea85473a09c433dedc99230312efba4e90a986331c3dca636a8da222d9` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--39b3e787a7ceec8f1927be66.md) | 73 | `declaration-track:39b3e787a7ceec8f1927be660af85b1b69ac4157d4f0f0b45edc869f308f1783` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--3214404679f28911ce7590af.md) | 76 | `declaration-track:3214404679f28911ce7590af69d015be80f1e0e83510c500c9fb654cb438dad9` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--c83c4ae3fbec03b7b659a102.md) | 79 | `declaration-track:c83c4ae3fbec03b7b659a102b6d795320d0c640099535904e398131fb7683cac` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--eb36361440c66fe0d109a541.md) | 84 | `declaration-track:eb36361440c66fe0d109a5417f0e44f5c9d7ed8efa34c37e0737e9d3e5a46520` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--4cefb050a8f378e0f817ac21.md) | 87 | `declaration-track:4cefb050a8f378e0f817ac215031c2359c97e66c049f2350fa8a09955bd4dcee` |
| 19 | `def` | [repeatedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/repeatedrows--f179df136fe746e9dbef8824.md) | 93 | `declaration-track:f179df136fe746e9dbef8824f460c71000474476c23d0f2edbb4a38420012ab6` |
| 20 | `theorem` | [repeated_references_exact](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/repeated-references-exact--74513407aceeaa1ff942ae9b.md) | 97 | `result-track:74513407aceeaa1ff942ae9be8854ed0feca25ea2205bb169f558253f8e9749e` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--aaad774a3c740a85f02758a2.md) | 102 | `declaration-track:aaad774a3c740a85f02758a285df895723164ca41546d471603069054237960e` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--2ac7c9150794d955c3d9b668.md) | 104 | `declaration-track:2ac7c9150794d955c3d9b66883ea607eec3b453e460e337415ece7de2a587426` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--0bb5e97e2382c9d609be89a7.md) | 107 | `declaration-track:0bb5e97e2382c9d609be89a7b9499ec51923f797f64c02560989ca371877ba07` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence07d96c5491f6440a81620a05.lean/declarations/example--462c425b033fd0f4e222b729.md) | 110 | `declaration-track:462c425b033fd0f4e222b72904885d5bc40dd56d8553d58bfa0f557c8b61d0bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
