# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixInventory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1055e3f1ecaabe0118cbed372eed470a20ce64a2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1055e3f1ecaabe0118cbed372eed470a20ce64a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixInventory`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixInventory__SourceOccurrence43a088072295cb7a9d0330a9.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [totalEdgeDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/totaledgedecidableeq--a86cb8da7a5cfd397d4c0d78.md) | 14 | `declaration-track:a86cb8da7a5cfd397d4c0d78c6adcfa66a50a1e42dc64e911b63422a9822f3e5` |
| 2 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/falseoccurrence--e074bbdaff5a0c82e783026d.md) | 17 | `declaration-track:e074bbdaff5a0c82e783026df82c59d29f6495729f1e3f30284f3db84b954ba0` |
| 3 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/trueoccurrence--e319af42ca24e1af26158455.md) | 20 | `declaration-track:e319af42ca24e1af26158455e9ec141627873e79f6b4d55f4ce5d9ba606f4796` |
| 4 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/falsetag--a4a5fcb5b8513fd4e81d883e.md) | 23 | `declaration-track:a4a5fcb5b8513fd4e81d883e7300cc1c0b7b14d3b84e0922a08b229c109939f6` |
| 5 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/truetag--048036ffe82c9e2fcd9a6690.md) | 26 | `declaration-track:048036ffe82c9e2fcd9a6690f06c0e2929943be7fd9a59c767e31be9bde91b8e` |
| 6 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/tags-distinct--216536df28a523e0d713ce83.md) | 29 | `result-track:216536df28a523e0d713ce83d12172b0145bca0fee86da8bd831c973b844ce08` |
| 7 | `def` | [parallelRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/parallelrows--ccd8dd697f5ce46c5609cb3e.md) | 35 | `declaration-track:ccd8dd697f5ce46c5609cb3e577f29a7cd6dd2fdd991d7adb631c1230be9db9b` |
| 8 | `theorem` | [parallel_inventory_exact](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/parallel-inventory-exact--33ddf1326651e8884fc618e6.md) | 39 | `result-track:33ddf1326651e8884fc618e6579c38285ee33bd2a82073d26a96bab075373965` |
| 9 | `theorem` | [parallel_same_endpoint](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/parallel-same-endpoint--82ed48db0e210f9ac7c9bdb8.md) | 44 | `result-track:82ed48db0e210f9ac7c9bdb82942420521185cef94e0edf9cbe96c72d9414de9` |
| 10 | `theorem` | [parallel_occurrences_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/parallel-occurrences-distinct--e25219c4ef0e6ee8b7394508.md) | 46 | `result-track:e25219c4ef0e6ee8b7394508b21c6744275dbf405f053249b34b28d91b3aa137` |
| 11 | `theorem` | [parallel_common_prefix_only_empty](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/parallel-common-prefix-only-empty--403693fe19481437f6bafb6f.md) | 51 | `result-track:403693fe19481437f6bafb6fea2c7995d6d6441c83c008c0c4bd370d7ca05ccd` |
| 12 | `theorem` | [endpoint_rows_lose_identity](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/endpoint-rows-lose-identity--e5c2b3af3a10a90ca70d0bfc.md) | 63 | `result-track:e5c2b3af3a10a90ca70d0bfcb0e02afbe1ce35fe48886ffb7d76c1bb088852fc` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--46a7c5c69430828b12793a3e.md) | 71 | `declaration-track:46a7c5c69430828b12793a3e3180b072f3b7858f7e3c3f7119e0ae0c607c21f9` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--2e5a2f63fda22c4f6cf3e6c5.md) | 73 | `declaration-track:2e5a2f63fda22c4f6cf3e6c598d657e9fbb65471455c228ddb29aaa3d3f49c3a` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--cf607c45de1edc959eed2dd0.md) | 76 | `declaration-track:cf607c45de1edc959eed2dd071cd71f876a469507a5e7720afae2f8f4bc747f1` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--8e7a0c3ff2eb9a74825880fe.md) | 79 | `declaration-track:8e7a0c3ff2eb9a74825880fefed64e5dfd39eba757fd989047d03158edf0cb7e` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--2169b94798fb0264b3ae0152.md) | 84 | `declaration-track:2169b94798fb0264b3ae0152a8fd23dd9660a8d3b1bd65232cd670757f16ed01` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--9626b05192da527ec659c915.md) | 87 | `declaration-track:9626b05192da527ec659c915230c2e84cc9bc9533708f212919530dea65e4f5a` |
| 19 | `def` | [repeatedRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/repeatedrows--235ba4308a431d37c5fd2db4.md) | 93 | `declaration-track:235ba4308a431d37c5fd2db48ee96ba199c9f727d29f73537dc7bf99acc01775` |
| 20 | `theorem` | [repeated_references_exact](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/repeated-references-exact--8d2b8d2d9046b208d1fc956c.md) | 97 | `result-track:8d2b8d2d9046b208d1fc956c126834b70767fd01739635a7598bbc1ddae1ab7b` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--9e4ab2ddc7d02edba7d15112.md) | 102 | `declaration-track:9e4ab2ddc7d02edba7d15112eca0fecf0445f5215559331283f980f571730af6` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--f0112440a7471d56d7e97049.md) | 104 | `declaration-track:f0112440a7471d56d7e970497890bdb33aeb38cb7ce15f925142d54aa107008c` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--273b4379a5f92663e52f5c5a.md) | 107 | `declaration-track:273b4379a5f92663e52f5c5ab63cf1bcd5e80b6ef0bba5d9066bec0dc674827c` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixInventory__SourceOccurrence7748476a985cdd5d0a9e243f.lean/declarations/example--65e9f12cfa7f46003a62b7a4.md) | 110 | `declaration-track:65e9f12cfa7f46003a62b7a4eec6720e473b9440eba1ed16977882f3103fc67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
