# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbcc52c4e5863044224396a50b48f7c4ccdfdf7c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbcc52c4e5863044224396a50b48f7c4ccdfdf7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.InsertIdx` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [insertIdx_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-zero--2666c14903c08d77988eb84f.md) | 46 | `result-track:2666c14903c08d77988eb84fc17598d41e276d834f5ba20f9c733187f3eba7e9` |
| 2 | `theorem` | [eraseIdx_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/eraseidx-insertidx-self--5710ef2adf96423a9d77199a.md) | 50 | `result-track:5710ef2adf96423a9d77199a3eb1a31e2779290b9d3dd40db912cbb68465334a` |
| 3 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-eraseidx-of-ge--ec228bfc75bbf78b88f49b28.md) | 55 | `result-track:ec228bfc75bbf78b88f49b2812e1b982c199b65691b23172a752dd82f4932f19` |
| 4 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-eraseidx-of-le--89200eceac197b4aaeffc854.md) | 62 | `result-track:89200eceac197b4aaeffc854c69afc5c4bfd581c19308013ab7592437c3db94b` |
| 5 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-eraseidx--3c175d6679ffab28fd93b67e.md) | 70 | `result-track:3c175d6679ffab28fd93b67ea46f8a45784c35672c01b08319c8a2a53b85dd13` |
| 6 | `theorem` | [insertIdx_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-comm--e91b23e525de84d0d464d9dd.md) | 81 | `result-track:e91b23e525de84d0d464d9dd3bbf2a9820d61c30bd493f2dfd93f17b404f2871` |
| 7 | `theorem` | [mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/mem-insertidx--2178a9ebedd23d467390bcea.md) | 87 | `result-track:2178a9ebedd23d467390bcea23a3501e1c7ef6eb08aceea72f3740a127ecda9c` |
| 8 | `theorem` | [insertIdx_size_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/insertidx-size-self--4fcc572160d90da51cadbd9f.md) | 93 | `result-track:4fcc572160d90da51cadbd9f5a292ab182a28cf0fd48fb814cd024bc937595af` |
| 9 | `theorem` | [getElem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx--2354e53e47823dea369da314.md) | 98 | `result-track:2354e53e47823dea369da314743e1387b46bcf257dfc1cc02171898a971f089b` |
| 10 | `theorem` | [getElem_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-of-lt--aaec060f78b0e67d0637dc00.md) | 110 | `result-track:aaec060f78b0e67d0637dc00ddaf2e125a953b4a67f08ffa9aaab7a81ef971b6` |
| 11 | `theorem` | [getElem_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-self--1cf73271c87dbbadeee5bfde.md) | 115 | `result-track:1cf73271c87dbbadeee5bfde926acea609d098f5d70b5086ad2b7aa724d9731f` |
| 12 | `theorem` | [getElem_insertIdx_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-of-gt--4c81f77f4709b1962cc42195.md) | 120 | `result-track:4c81f77f4709b1962cc42195f1bec4879a1a128e9ca9117ee53cb9a5b1d2f3d2` |
| 13 | `theorem` | [getElem?_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx--026256eddeeb1d1064ef9b6d.md) | 127 | `result-track:026256eddeeb1d1064ef9b6d536b13c67f9b6f735a38d07b5b94dcc329707d55` |
| 14 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-of-lt--bdcf37dcca677c416a9f219a.md) | 139 | `result-track:bdcf37dcca677c416a9f219a3c42661fc3c4065a98b465683afdfe2b47361a2f` |
| 15 | `theorem` | [getElem?_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-self--f091f028a51f1d52b56715e1.md) | 144 | `result-track:f091f028a51f1d52b56715e18a216012f96a068df0e1795805d0296d9b99dc6d` |
| 16 | `theorem` | [getElem?_insertIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant1c207d8bd997436fa9c457b125dc82fda5e58bbb24526a736f372f270ef7637d.lean/declarations/getelem-insertidx-of-ge--3e18d86d4c3148b4253ab3e1.md) | 149 | `result-track:3e18d86d4c3148b4253ab3e125ee2455be0893e2068b9555a18722cd20f537ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
