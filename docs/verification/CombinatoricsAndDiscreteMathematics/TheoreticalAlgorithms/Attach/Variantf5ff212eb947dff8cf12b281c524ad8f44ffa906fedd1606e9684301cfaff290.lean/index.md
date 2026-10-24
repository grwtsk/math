# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba39d519d506080ef98349e942219355a7d1f585",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba39d519d506080ef98349e942219355a7d1f585`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.Monadic.Attach` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.unattach_eq_toIter_unattach_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-unattach-eq-toiter-unattach-toiterm--44ae34c841a7c6fee5429e67.md) | 23 | `result-track:44ae34c841a7c6fee5429e67b1d0b69fcc790786fdbb76b628aaf64396b64a58` |
| 2 | `theorem` | [Iter.unattach_toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-unattach-tolist-attachwith--6e4dd04a4880f5cfd53d9ff7.md) | 29 | `result-track:6e4dd04a4880f5cfd53d9ff7ed2e7952f072e2e48c30a9fb1c15b214eb516fb2` |
| 3 | `theorem` | [Iter.toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-tolist-attachwith--420e4fed689217affcc0acc9.md) | 38 | `result-track:420e4fed689217affcc0acc9e87356f7f05494242ef8c718d08259678101a073` |
| 4 | `theorem` | [Iter.unattach_toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-unattach-tolistrev-attachwith--24cbcf647568669f5b749911.md) | 50 | `result-track:24cbcf647568669f5b7499113c59045509929a72c4d77457503e6d9ae87ee031` |
| 5 | `theorem` | [Iter.toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-tolistrev-attachwith--3a2a4ae614b8b9ce56648ad7.md) | 57 | `result-track:3a2a4ae614b8b9ce56648ad75896c01ca790d1903cb271420fb11013e5431785` |
| 6 | `theorem` | [Iter.unattach_toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-unattach-toarray-attachwith--684ea2c324d7d1ff5a3212a1.md) | 65 | `result-track:684ea2c324d7d1ff5a3212a1e672f42035f08df0fd3c4cc6fb47b4a0d03df2ec` |
| 7 | `theorem` | [Iter.toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-toarray-attachwith--6f3a03c040df10eb549f8065.md) | 72 | `result-track:6f3a03c040df10eb549f8065dec3a7cea6bc914a97d2507c62bfdb73c991a3f7` |
| 8 | `theorem` | [Iter.length_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-length-attachwith--ad0cc446f1149c2ef5f17ab3.md) | 83 | `result-track:ad0cc446f1149c2ef5f17ab354e432b7b68b70e420b083f61e53f12a0428d3ea` |
| 9 | `def` | [Iter.count_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290.lean/declarations/iter-count-attachwith--01efd36adf3fbe6968eebdec.md) | 93 | `declaration-track:01efd36adf3fbe6968eebdec7944b846c78cd2b1ab62eb1815f0fa9780dae4c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
