# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce642e97b65ecce19fe5838830d1415832f3d08",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce642e97b65ecce19fe5838830d1415832f3d08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.List.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 19; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Array.MergeSort.merge.go_eq_listMerge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/array-mergesort-merge-go-eq-listmerge--045f1b5b74f6289c766cc382.md) | 24 | `result-track:045f1b5b74f6289c766cc382fd334c0738ea9f47f29662f603db94fbac380400` |
| 2 | `theorem` | [Array.MergeSort.merge_eq_listMerge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/array-mergesort-merge-eq-listmerge--53e00e58186f73b88ebc1c84.md) | 94 | `result-track:53e00e58186f73b88ebc1c849515fe99acb5754fa27891901e1aabe9456c6dde` |
| 3 | `theorem` | [List.mergeSort_eq_merge_mkSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/list-mergesort-eq-merge-mkslice--b0edb952aa0289c18a259d28.md) | 105 | `result-track:b0edb952aa0289c18a259d28183fa9fdb52f74c1fcffe6a76bec03697acf1714` |
| 4 | `theorem` | [Subarray.toList_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/subarray-tolist-mergesort--8174f0aa7763f9fcb4ecf7f7.md) | 117 | `result-track:8174f0aa7763f9fcb4ecf7f7feea09075c8a56a30c13b7b4297e5093f6240a76` |
| 5 | `theorem` | [Subarray.mergeSort_eq_mergeSort_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/subarray-mergesort-eq-mergesort-toarray--73dc3a82ab1bf78f5e36dee0.md) | 125 | `result-track:73dc3a82ab1bf78f5e36dee0e09ad5d50adf369908495170c7ca32c5579de2ed` |
| 6 | `theorem` | [Subarray.mergeSort_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/subarray-mergesort-toarray--93dc005ebcc4330be899ae74.md) | 129 | `result-track:93dc005ebcc4330be899ae7409df7964f05ddd2fbec02ede802d5e4744d1f569` |
| 7 | `theorem` | [Array.toList_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/array-tolist-mergesort--5d848d7576cb335074b4967c.md) | 133 | `result-track:5d848d7576cb335074b4967c064f5f10475c546cd8edbac788fa4149d8e0b84e` |
| 8 | `theorem` | [Array.mergeSort_eq_toArray_mergeSort_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/array-mergesort-eq-toarray-mergesort-tolist--a855f833aa9c02b6a5cd171d.md) | 138 | `result-track:a855f833aa9c02b6a5cd171d3bd4e93de92ff181f01a956bbe922d11384bff36` |
| 9 | `theorem` | [mergeSort_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mergesort-empty--8e69b038d97665c498f826a7.md) | 156 | `result-track:8e69b038d97665c498f826a7106428830dca28f3fd0bf88269748738dceb24a4` |
| 10 | `theorem` | [mergeSort_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mergesort-singleton--26b74950718a548dfd1baf0b.md) | 159 | `result-track:26b74950718a548dfd1baf0bf4d46279773644cc91a66109942de0498a6b9e92` |
| 11 | `theorem` | [mergeSort_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mergesort-perm--c00846a3b0845288b1ec91d5.md) | 162 | `result-track:c00846a3b0845288b1ec91d58af79b3c04db5efe9fa449d2a99b67180b6b039b` |
| 12 | `theorem` | [size_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/size-mergesort--c5f619f5b864cda784346c8e.md) | 165 | `result-track:c5f619f5b864cda784346c8edde04f97958dae79cfef695f664961dc9ae72a4f` |
| 13 | `theorem` | [mem_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mem-mergesort--baf24956b8ebf516cb1efd59.md) | 168 | `result-track:baf24956b8ebf516cb1efd59a77e73bd97862920d80220a658e978980ae84a51` |
| 14 | `theorem` | [pairwise_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/pairwise-mergesort--158461e7321dbcc3f5d48943.md) | 178 | `result-track:158461e7321dbcc3f5d48943261ac8efbfaa2d5a6de2e7e16b555f569712024f` |
| 15 | `theorem` | [mergeSort_of_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mergesort-of-pairwise--05e9a046f646f03cbadbf35a.md) | 188 | `result-track:05e9a046f646f03cbadbf35a58d52942a0a551dae7ecc9e19ef58e661c6d30b5` |
| 16 | `theorem` | [mergeSort_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/mergesort-zipidx--eb9d02c9a3164be307f3840a.md) | 204 | `result-track:eb9d02c9a3164be307f3840ac5a011fc75c50f3e661245167d551ef8adf70659` |
| 17 | `theorem` | [sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/sublist-mergesort--7ce2dd65fac4fabd2bd47116.md) | 213 | `result-track:7ce2dd65fac4fabd2bd47116524dcc20917a2525fec64effaee4a18899148341` |
| 18 | `theorem` | [pair_sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/pair-sublist-mergesort--d7207d357f0d98877c50b33a.md) | 226 | `result-track:d7207d357f0d98877c50b33a87a8ae77b5d2800d6f11242f80a09efdacd5bc68` |
| 19 | `theorem` | [map_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/declarations/map-mergesort--33291c18674f584b23e8697a.md) | 234 | `result-track:33291c18674f584b23e8697a0efcc96d432ba6ecf05cce84091157a73a728dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
