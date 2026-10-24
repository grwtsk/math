# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef9ee13b50e257a891ee77207a6995de68b870a4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef9ee13b50e257a891ee77207a6995de68b870a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Perm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finRange_eq_pmap_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/finrange-eq-pmap-range--55c78f4293dad2622698ddd5.md) | 33 | `result-track:55c78f4293dad2622698ddd5af5ff560e66c304aa58fa8e3b704a979e4a1aadb` |
| 2 | `theorem` | [mem_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/mem-finrange--b269323bfb7a73c12e0a71e0.md) | 37 | `result-track:b269323bfb7a73c12e0a71e09276ade09d3b75ca5ef58d02779f39a480a0e16a` |
| 3 | `theorem` | [nodup_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/nodup-finrange--abb12710cc71f14e5cbbd9f4.md) | 44 | `result-track:abb12710cc71f14e5cbbd9f4524bf915942ff7dea8252d06668183868b1bebc7` |
| 4 | `theorem` | [finRange_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/finrange-eq-nil--76b314a9c4127595e6930b18.md) | 49 | `result-track:76b314a9c4127595e6930b1816bbf7f95535a9aa083fce81c1cacf2893d5f91d` |
| 5 | `theorem` | [pairwise_lt_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/pairwise-lt-finrange--24ff88b0c53a1638f445160b.md) | 52 | `result-track:24ff88b0c53a1638f445160b9a19f7a70ec313c4e142b265d317105d84032cd3` |
| 6 | `theorem` | [pairwise_le_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/pairwise-le-finrange--9f63625e537048fd42b17e28.md) | 56 | `result-track:9f63625e537048fd42b17e28054c303cc12ff590b572c53cbe8e8d9185cdfb95` |
| 7 | `lemma` | [count_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/count-finrange--3ca35bccae5c65f09de0e954.md) | 61 | `result-track:3ca35bccae5c65f09de0e95402bbf21bb3fd26fcfecea87c76f61aaf19fb88d8` |
| 8 | `theorem` | [get_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/get-finrange--820f5fc2ca1d115bd62b61fd.md) | 64 | `result-track:820f5fc2ca1d115bd62b61fd0f196b5075c9766c0a1d8ee4fe0ebed20ac59281` |
| 9 | `theorem` | [finRange_map_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/finrange-map-get--630cb4b150a28182aef5694d.md) | 69 | `result-track:630cb4b150a28182aef5694dcab404fc5a0cb6fcc43623230fd9513d7e85f022` |
| 10 | `theorem` | [finRange_map_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/finrange-map-getelem--86f43a397c628544282157b2.md) | 73 | `result-track:86f43a397c628544282157b238fa0a284dd764b0c95c3eb36574266c44946232` |
| 11 | `theorem` | [idxOf_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/idxof-finrange--9f668a967351211927e848f6.md) | 76 | `result-track:9f668a967351211927e848f617c1d49c9d7461f482dffd80461946461ac85cf1` |
| 12 | `theorem` | [map_coe_finRange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/map-coe-finrange--e66a9bb230d03f00435d8fb6.md) | 82 | `result-track:e66a9bb230d03f00435d8fb6321fd84b01abc82d1ceb9aee979c11d63c75cef2` |
| 13 | `theorem` | [finRange_succ_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/finrange-succ-eq-map--2e2c41b9f5bf1940d6e32e10.md) | 85 | `result-track:2e2c41b9f5bf1940d6e32e104d8769733feb881ea6d6c6180acdd72e849de7b7` |
| 14 | `theorem` | [ofFn_eq_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/offn-eq-pmap--60653d12f5e558ff944ccd68.md) | 91 | `result-track:60653d12f5e558ff944ccd681f97d5104591754b8d18e62322bce294ebd7f878` |
| 15 | `theorem` | [ofFn_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/offn-id--d0e6a08021279dbe61f7e93e.md) | 96 | `result-track:d0e6a08021279dbe61f7e93e0713f33aabbca8a242dbf95119f4c4c6f7a958ec` |
| 16 | `theorem` | [ofFn_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/offn-eq-map--9f0e1b853960c3ce7a1e6be7.md) | 99 | `result-track:9f0e1b853960c3ce7a1e6be70ca81eda29bcade7a6f674ada9fa0d31a76e2638` |
| 17 | `theorem` | [nodup_ofFn_ofInjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/nodup-offn-ofinjective--91a587646171ff9564c78df9.md) | 102 | `result-track:91a587646171ff9564c78df9b0d57ac256a9913bd747a3d6b320b5b0105874ec` |
| 18 | `theorem` | [nodup_ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/nodup-offn--0006bd21148bf1469155bb6d.md) | 107 | `result-track:0006bd21148bf1469155bb6d69710488f9804a708b84e3f1f01afe6dbf80f185` |
| 19 | `theorem` | [Equiv.Perm.map_finRange_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/equiv-perm-map-finrange-perm--a8098768d5cec1aa7bc63528.md) | 121 | `result-track:a8098768d5cec1aa7bc6352852cd02b635f7b9504d8edc6990690e5e3141874e` |
| 20 | `theorem` | [Equiv.Perm.ofFn_comp_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinRange/Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569.lean/declarations/equiv-perm-offn-comp-perm--d857729f4ff5df8745ccc771.md) | 128 | `result-track:d857729f4ff5df8745ccc771438e5d8faba97a82cd1e41096fb1c22402d9b124` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
