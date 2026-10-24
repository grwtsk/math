# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parallel.Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b563c6ddd5afd3e7822f3389bd6f4cac4f1185af",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b563c6ddd5afd3e7822f3389bd6f4cac4f1185af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Seq.WSeq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallel.aux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-aux2--0e695d7fd40a85b2cd7518d1.md) | 36 | `declaration-track:0e695d7fd40a85b2cd7518d1c8d1b8d2944733ba68b7dac20e04c44298a91b82` |
| 2 | `def` | [parallel.aux1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-aux1--91c516a693f84b0c13551c03.md) | 45 | `declaration-track:91c516a693f84b0c13551c03508e1d4017b2bc9df07de67f2b6ec2aec002fd4c` |
| 3 | `def` | [parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel--191591cc7885e1c861832d57.md) | 60 | `declaration-track:191591cc7885e1c861832d57d5024e332f43f96e894f3354ca39c4e69ee5454d` |
| 4 | `theorem` | [terminates_parallel.aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/terminates-parallel-aux--5515bd92db49562580d0011e.md) | 64 | `result-track:5515bd92db49562580d0011ebe072157a7eed4efd419578287f2650c4bad29b7` |
| 5 | `theorem` | [terminates_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/terminates-parallel--ac5d6d09d605c6691c5cfa1d.md) | 137 | `result-track:ac5d6d09d605c6691c5cfa1d31fffa638bb219a01bded6e1504bb46d50d501ca` |
| 6 | `theorem` | [exists_of_mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/exists-of-mem-parallel--e5fe37fa73b67f83a7bf2b0d.md) | 212 | `result-track:e5fe37fa73b67f83a7bf2b0dc15b808a575c4c789fe1461127653c64b5758ba1` |
| 7 | `theorem` | [map_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/map-parallel--860dfc6c3421a984aab1611a.md) | 292 | `result-track:860dfc6c3421a984aab1611a55f633fc08db45e4bab9e965be3168fbdef50018` |
| 8 | `theorem` | [parallel_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-empty--6d912f5026680b3e2ae824df.md) | 322 | `result-track:6d912f5026680b3e2ae824df83b5c032a9fcda926f283f9eb4feb0cff8fc59b6` |
| 9 | `def` | [parallelRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallelrec--7b89d4a217bfdc0c89a518b6.md) | 331 | `declaration-track:7b89d4a217bfdc0c89a518b642a3f826556d7410ae6ce776b975c0b04c424ab8` |
| 10 | `theorem` | [parallel_promises](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-promises--c9b5bfe32b539b3ba6d5cbb2.md) | 365 | `result-track:c9b5bfe32b539b3ba6d5cbb2e43e21683ebfcb369d57eb2c59c1c04b9b3efd00` |
| 11 | `theorem` | [mem_parallel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/mem-parallel--45ad9355345b928225435121.md) | 371 | `result-track:45ad9355345b928225435121a06bea950c359c356bd9a96e10eaab0a973eea05` |
| 12 | `theorem` | [parallel_congr_lem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-congr-lem--770d079d2bbf81519055021f.md) | 378 | `result-track:770d079d2bbf81519055021f2a03deb8e4c67baafe2aec33e945cd462091394c` |
| 13 | `theorem` | [parallel_congr_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-congr-left--203ab38426312214aa976f37.md) | 389 | `result-track:203ab38426312214aa976f37028dbcef214738260878d109ddf21870de98c062` |
| 14 | `theorem` | [parallel_congr_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parallel/Variant8329b54aa3244f17a6b8a543a31bee2876b419dd0f8e964df3dcb3f051df72d1.lean/declarations/parallel-congr-right--06b7688d2dd3131507c87e44.md) | 413 | `result-track:06b7688d2dd3131507c87e442bf3b1f4d8c6bfd1b725e58015ce7ba88fac1da3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
