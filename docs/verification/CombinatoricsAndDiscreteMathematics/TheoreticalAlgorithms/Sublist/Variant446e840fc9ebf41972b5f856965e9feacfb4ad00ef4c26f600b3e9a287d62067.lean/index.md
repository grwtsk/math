# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sublist.Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54d745edc7b02adcab20b9ba557fc019739d78d3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54d745edc7b02adcab20b9ba557fc019739d78d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSuffix.getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/issuffix-getelem--79f1c03c2934bb83d9323cd5.md) | 41 | `result-track:79f1c03c2934bb83d9323cd5cd75b40fa6cdff714bd0cf746b91e191fdc9295a` |
| 2 | `theorem` | [suffix_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/suffix-iff-getelem--c278824d354822668849eb58.md) | 48 | `result-track:c278824d354822668849eb5870d531a9c0a606508f59368d9beb849cacdab8fb` |
| 3 | `theorem` | [suffix_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/suffix-iff-getelem--5b59bc5eb372afc9a4aca786.md) | 78 | `result-track:5b59bc5eb372afc9a4aca78623c0201b5952f6c8de70590ac267ef16c11ad50e` |
| 4 | `theorem` | [infix_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/infix-iff-getelem--bdf32e75d1cf3ca5c7802082.md) | 93 | `result-track:bdf32e75d1cf3ca5c7802082c5c571cdbc9d44a7f09b88ea0c2a273b1e7be1ee` |
| 5 | `theorem` | [suffix_iff_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/suffix-iff-eq-append--f724e77f53572fa9b9f584ea.md) | 126 | `result-track:f724e77f53572fa9b9f584ea8332a012bc44ee76debfb7e78e6695e0c5ed1b41` |
| 6 | `theorem` | [prefix_take_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/prefix-take-iff--1c150ee0c275527fb78ecd0e.md) | 131 | `result-track:1c150ee0c275527fb78ecd0ea4be9af0f2ede0079b191771cb326f1f2f5b6925` |
| 7 | `theorem` | [suffix_iff_eq_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/suffix-iff-eq-drop--1c88644d0f6935df01c6a1f3.md) | 145 | `result-track:1c88644d0f6935df01c6a1f3108105bf88bec8c313feb024627b6895dbe23ffe` |
| 8 | `theorem` | [prefix_map_iff_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/prefix-map-iff-of-injective--669de1dcacccdcf2f07e92ef.md) | 149 | `result-track:669de1dcacccdcf2f07e92effe23c200d7f279c9a62b5ea8e20a824ff61e3e94` |
| 9 | `theorem` | [suffix_map_iff_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/suffix-map-iff-of-injective--702d03d67014b4aedc3cd41f.md) | 153 | `result-track:702d03d67014b4aedc3cd41f5ceb34374d1a246b641adc11570bf4af6829b6a9` |
| 10 | `theorem` | [prefix_take_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/prefix-take-le-iff--909e849f6d4c37def819b5e9.md) | 157 | `result-track:909e849f6d4c37def819b5e999561cb485e5af7258930958ee66bf8dbb6dcf6c` |
| 11 | `theorem` | [append_left_sublist_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/append-left-sublist-self--c1957b219c64adbb13aa1fcc.md) | 173 | `result-track:c1957b219c64adbb13aa1fcc052dc39743af8307a85b26cb333ec89decf8e282` |
| 12 | `theorem` | [append_right_sublist_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/append-right-sublist-self--6efad210f505eb42ea2e1630.md) | 182 | `result-track:6efad210f505eb42ea2e163029255d55d153b93b8eaad12b058879646913266c` |
| 13 | `theorem` | [append_sublist_of_sublist_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/append-sublist-of-sublist-left--bccd11bdc8de8ca3b9aa69ad.md) | 192 | `result-track:bccd11bdc8de8ca3b9aa69ad1f42821e3ce4939aa1e9c307e197fd909f176568` |
| 14 | `theorem` | [append_sublist_of_sublist_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublist/Variant446e840fc9ebf41972b5f856965e9feacfb4ad00ef4c26f600b3e9a287d62067.lean/declarations/append-sublist-of-sublist-right--a3832f06b601b92d9d30f0cd.md) | 205 | `result-track:a3832f06b601b92d9d30f0cdfa9b856c2dc896d2abed3f519e4c76e609e05d67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
