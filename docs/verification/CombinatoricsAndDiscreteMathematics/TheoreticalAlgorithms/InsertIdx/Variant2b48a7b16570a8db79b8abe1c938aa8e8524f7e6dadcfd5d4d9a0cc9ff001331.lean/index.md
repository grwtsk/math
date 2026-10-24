# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69abf355817efcf8543587ae4578df4351ac5eb6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69abf355817efcf8543587ae4578df4351ac5eb6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublist_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/sublist-insertidx--f15d3a78ec41c28d81fb4f12.md) | 39 | `result-track:f15d3a78ec41c28d81fb4f12d2df661aa5b96de4af3901b1225808da4a5fca1a` |
| 2 | `theorem` | [subset_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/subset-insertidx--fd50625d57e4fb6c27d74af8.md) | 43 | `result-track:fd50625d57e4fb6c27d74af8fec0416bec27d740fd1a2d0cfb72adad2a29162e` |
| 3 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/insertidx-eraseidx--329374c7aaf7007d89c5334d.md) | 51 | `result-track:329374c7aaf7007d89c5334da28475ca8b96041760d0f1d2349333d460d637c6` |
| 4 | `theorem` | [insertIdx_eraseIdx_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/insertidx-eraseidx-getelem--9ee1ba9a2f175171bf9550f9.md) | 55 | `result-track:9ee1ba9a2f175171bf9550f91ca5f35a0f0ac7ca697efb9a64527212a0b72425` |
| 5 | `theorem` | [eq_or_mem_of_mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/eq-or-mem-of-mem-insertidx--2b0b0152ccca5c8cc4b05723.md) | 59 | `result-track:2b0b0152ccca5c8cc4b0572392a694623de0de684103ba81234f1d897186bb34` |
| 6 | `theorem` | [insertIdx_subset_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/insertidx-subset-cons--fd64f5fbd9eaa01e20012f1a.md) | 68 | `result-track:fd64f5fbd9eaa01e20012f1ab388230a9a26723e45f9bc6584fb2a060d1d1596` |
| 7 | `theorem` | [insertIdx_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/insertidx-pmap--95364c37f0d5f195e4502432.md) | 72 | `result-track:95364c37f0d5f195e45024322213e424d982e2d3e9c8b472b58beb1b098e25ad` |
| 8 | `theorem` | [map_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/map-insertidx--9a5b3ca860d8c38457d84afa.md) | 80 | `result-track:9a5b3ca860d8c38457d84afa1bef022e601246b1d57593c83f0325ecabfd6f61` |
| 9 | `theorem` | [eraseIdx_pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/eraseidx-pmap--a5662fa84394ed47f726f0a4.md) | 84 | `result-track:a5662fa84394ed47f726f0a486045f5bd7421aa3f54e6fa92ed3c16de1a51753` |
| 10 | `theorem` | [eraseIdx_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/eraseidx-map--7fac60450b8113a211374bdb.md) | 92 | `result-track:7fac60450b8113a211374bdb128924095c7352449c8c03bc203c0f6c35ebe065` |
| 11 | `theorem` | [get_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/get-insertidx-of-lt--3745dd04115afd8c119fe4b1.md) | 96 | `result-track:3745dd04115afd8c119fe4b18ec82f0dcd6ed1c19c1360b9ee70b367da8401cd` |
| 12 | `theorem` | [get_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/get-insertidx-self--dcd3334fa5ed14eb1eec69f6.md) | 101 | `result-track:dcd3334fa5ed14eb1eec69f62a7b2f8f517915988960ff91948243fbd62cd4b1` |
| 13 | `theorem` | [getElem_insertIdx_add_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/getelem-insertidx-add-succ--fdc9dc2ee45d8beda3a76a8c.md) | 107 | `result-track:fdc9dc2ee45d8beda3a76a8cab4c37e4764bcc1b95f1f27130ca8809cd12a822` |
| 14 | `theorem` | [get_insertIdx_add_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/get-insertidx-add-succ--844dc0e029af87d55d1062e1.md) | 114 | `result-track:844dc0e029af87d55d1062e17161e353d771181a0d9ef7775cc6da00b02059dc` |
| 15 | `theorem` | [insertIdx_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant2b48a7b16570a8db79b8abe1c938aa8e8524f7e6dadcfd5d4d9a0cc9ff001331.lean/declarations/insertidx-injective--6db9cdc566806b1828054fed.md) | 121 | `result-track:6db9cdc566806b1828054fed71a9f4a28753e2b363b25d28b5ac25062cf0b121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
