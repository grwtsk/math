# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea637e568db1c98ba8b1075b5d6c815d3663b005",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea637e568db1c98ba8b1075b5d6c815d3663b005`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.Array.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.List.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 24; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.MergeSort.merge.go_eq_listMerge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/array-mergesort-merge-go-eq-listmerge--e0fe87f62f73c8f0175a119e.md) | 32 | `result-track:e0fe87f62f73c8f0175a119eb1a7cbfe15de63adc065b99fb175160f24c856df` |
| 2 | `theorem` | [Array.MergeSort.merge_eq_listMerge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/array-mergesort-merge-eq-listmerge--d2805f6b5b23bd2daacfbf75.md) | 102 | `result-track:d2805f6b5b23bd2daacfbf75ebe7f813355fe9afeeb21ffbfd6bb518aa574b2f` |
| 3 | `theorem` | [List.mergeSort_eq_merge_mkSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/list-mergesort-eq-merge-mkslice--d0bd11963103119a39d01f75.md) | 113 | `result-track:d0bd11963103119a39d01f75d5a7aa5c9916e381b82ff28c97d4f86763042462` |
| 4 | `theorem` | [Subarray.toList_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/subarray-tolist-mergesort--ba978616aade7e12ce2f8aa8.md) | 125 | `result-track:ba978616aade7e12ce2f8aa886e20252124c2783e6aeecda8d9731d2e5ab6351` |
| 5 | `theorem` | [Subarray.mergeSort_eq_mergeSort_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/subarray-mergesort-eq-mergesort-toarray--9bc1b31f1a6764451b9f1ef5.md) | 133 | `result-track:9bc1b31f1a6764451b9f1ef5cee746fab0c77f77ca77a42fbf6a0efd2374b65d` |
| 6 | `theorem` | [Subarray.mergeSort_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/subarray-mergesort-toarray--56996abe879dd452bb0a1191.md) | 137 | `result-track:56996abe879dd452bb0a119180374b51d2d9f5cfd2409eec10b6effef84d978b` |
| 7 | `theorem` | [Array.toList_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/array-tolist-mergesort--7f8608c42d125981b09e8d7c.md) | 141 | `result-track:7f8608c42d125981b09e8d7c9bc88d05e8928e99b1a35889d3be2b3ae0236b1f` |
| 8 | `theorem` | [Array.mergeSort_eq_toArray_mergeSort_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/array-mergesort-eq-toarray-mergesort-tolist--1d49770e08c183b55f4b60f5.md) | 146 | `result-track:1d49770e08c183b55f4b60f5f716671cb4906155b04653a64f1f37516e48eb4a` |
| 9 | `theorem` | [mergeSort_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mergesort-empty--e038d27479c3e53ee3003996.md) | 164 | `result-track:e038d27479c3e53ee3003996c29a9a4dba881ac4927d7ea96956f2bdc86620c2` |
| 10 | `theorem` | [mergeSort_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mergesort-singleton--290a2f46a97a9ce29536d6c2.md) | 167 | `result-track:290a2f46a97a9ce29536d6c20303a86ebd5d542f5f9be079bcda3bc3b06edac2` |
| 11 | `theorem` | [mergeSort_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mergesort-perm--89be33f29746474170fb7308.md) | 170 | `result-track:89be33f29746474170fb73085ff9ee53bdacc97b0b4ace732405bf671f031e61` |
| 12 | `theorem` | [size_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/size-mergesort--223254f4ca208e6e28da0f84.md) | 173 | `result-track:223254f4ca208e6e28da0f84ab4b58014cd947a5636fb6ec235ba20ee0ecc155` |
| 13 | `theorem` | [mem_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mem-mergesort--58bedbab6ebac8697a4416cf.md) | 176 | `result-track:58bedbab6ebac8697a4416cf2a2eb97cd83cff600c2ccc95c2b6f503567c96bb` |
| 14 | `theorem` | [pairwise_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/pairwise-mergesort--e3cb7692131a1c6e5a40e014.md) | 186 | `result-track:e3cb7692131a1c6e5a40e0140a8c5cbef3290dce8c7c7bd22112672fb7cf3d19` |
| 15 | `theorem` | [mergeSort_of_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mergesort-of-pairwise--b240b623b9dec0174b0093ab.md) | 196 | `result-track:b240b623b9dec0174b0093abbcb5f63e2c2174228e4c0a5bb75de16ef05a1e78` |
| 16 | `theorem` | [mergeSort_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/mergesort-zipidx--3272a510602680b1ed3ee156.md) | 212 | `result-track:3272a510602680b1ed3ee1562c1563a0d16b94c9548c6a1cc28e722147dfe916` |
| 17 | `theorem` | [sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/sublist-mergesort--ab3817ee2110f755d2e15e23.md) | 221 | `result-track:ab3817ee2110f755d2e15e233b8eee707347bf356e0b89250b85719041a64826` |
| 18 | `theorem` | [pair_sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/pair-sublist-mergesort--69bc392cf7b5412aa88e38aa.md) | 234 | `result-track:69bc392cf7b5412aa88e38aaf6b719d910fbb0b5953e3ccbd28eb9ba2a3a548a` |
| 19 | `theorem` | [map_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant737bda81921318bffdfbefc7be6f2eee6e36968b27a4995ac7b90ac80e0f3e8b.lean/declarations/map-mergesort--c255b08de25f9675a711c35d.md) | 242 | `result-track:c255b08de25f9675a711c35d4bca75a5da8effea9118f1b00c0b70e528c151c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
