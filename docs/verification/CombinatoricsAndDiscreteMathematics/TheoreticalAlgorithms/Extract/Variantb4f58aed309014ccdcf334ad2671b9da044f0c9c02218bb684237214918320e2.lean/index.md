# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extract.Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de30503379700f6a4b58d0afbd66d65928dccd23",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de30503379700f6a4b58d0afbd66d65928dccd23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Extract` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extract_of_size_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-of-size-lt--4be081a4885d9bd0fd6aacbb.md) | 40 | `result-track:4be081a4885d9bd0fd6aacbbfe4bf954a007a7faf1f95bfdc2b576a54ece8623` |
| 2 | `theorem` | [extract_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-push--8c687272eb174307d0718816.md) | 46 | `result-track:8c687272eb174307d071881699d055b9c6fd2b402910afd3c64a95dea909ac9c` |
| 3 | `theorem` | [extract_push_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-push-of-le--02ad37612e8926264bfde6f7.md) | 60 | `result-track:02ad37612e8926264bfde6f7e6ae14ce7ac7df19310c42f72b9a3233360227c9` |
| 4 | `theorem` | [extract_eq_pop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-eq-pop--5d2ed0537eebd55df1a4dc83.md) | 66 | `result-track:5d2ed0537eebd55df1a4dc83b18a63f58fef2250e0b477e482a784a6cde59eee` |
| 5 | `theorem` | [extract_append_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-append-extract--ae35f4f265f01ba7630ddc8b.md) | 72 | `result-track:ae35f4f265f01ba7630ddc8b73ef7e03a7e93a5c7c2882fc998095b2365a7ad5` |
| 6 | `theorem` | [push_extract_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/push-extract-getelem--6b5a1d804e35604c0c2662ea.md) | 79 | `result-track:6b5a1d804e35604c0c2662ea5706f4d0f56be057822f06b1d0a5e40605071014` |
| 7 | `theorem` | [extract_succ_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-succ-right--e13117a9fd215bb262fc4515.md) | 84 | `result-track:e13117a9fd215bb262fc451551fb9101bddf82252f6de8ff855ee3c3e523b0d2` |
| 8 | `theorem` | [extract_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-sub-one--c483b6bf98a8ff1a7ed6b157.md) | 89 | `result-track:c483b6bf98a8ff1a7ed6b1572563b372fe72759573923984b5ed3f72c24d424f` |
| 9 | `theorem` | [getElem?_extract_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/getelem-extract-of-lt--ceff97c760451d2ac6cf797f.md) | 95 | `result-track:ceff97c760451d2ac6cf797f95c4028060094b08b72f51c02640543a6fce9c92` |
| 10 | `theorem` | [getElem?_extract_of_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/getelem-extract-of-succ--cfbf8f13cd039cf610b5758e.md) | 100 | `result-track:cfbf8f13cd039cf610b5758e34d43e7e7f6c8681af5ca9dcfc40b8df69378cf4` |
| 11 | `theorem` | [extract_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-extract--1bab70189ff45ff2545f8062.md) | 110 | `result-track:1bab70189ff45ff2545f8062778c0895713edde3b990905e0575152864eb96f1` |
| 12 | `theorem` | [extract_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-set--8a8259f8a6129966a10170e3.md) | 116 | `result-track:8a8259f8a6129966a10170e3bdb0a021cbdadf634b18ece5356bae4a2f833401` |
| 13 | `theorem` | [set_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/set-extract--e8fd12b4c9d063b3b93e2db7.md) | 130 | `result-track:e8fd12b4c9d063b3b93e2db7c1f3b05c81983d3bb2150558d51458432c8013a9` |
| 14 | `theorem` | [extract_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-append--7bf919824941a50409514d80.md) | 136 | `result-track:7bf919824941a50409514d8001b43b94bce4b6789eb45d8db2284a88bb0a2610` |
| 15 | `theorem` | [extract_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-append-left--0356ac6cde452d49073a216d.md) | 143 | `result-track:0356ac6cde452d49073a216dbc60ef9a3a30c69bf73cb73b1adfdee5ba9fa16a` |
| 16 | `theorem` | [extract_append_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-append-right--f9d7aa74b6186fa58fe796d1.md) | 152 | `result-track:f9d7aa74b6186fa58fe796d1542b2623b5991a298e28489dd65b96606aaa5820` |
| 17 | `theorem` | [map_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/map-extract--b5ecb44b17da50af6357e532.md) | 161 | `result-track:b5ecb44b17da50af6357e5323b8976f2bb0eee0ef950cc20fc0fecd291d530d5` |
| 18 | `theorem` | [extract_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-replicate--c6debc975ee15da69ff6ddfa.md) | 166 | `result-track:c6debc975ee15da69ff6ddfa76684e06c12d8044c9358f5da23ed593201483b5` |
| 19 | `theorem` | [extract_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-add-left--d5f0888824cbe8a432031d83.md) | 171 | `result-track:d5f0888824cbe8a432031d8360a8dca4a2d80deb4f0a02ba1cac0c53a3a17613` |
| 20 | `theorem` | [mem_extract_iff_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/mem-extract-iff-getelem--1d214a1c37a4803e625e2606.md) | 178 | `result-track:1d214a1c37a4803e625e2606f94fc3a62f10fa77c556e23350ca0cad82efc6c4` |
| 21 | `theorem` | [set_eq_push_extract_append_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/set-eq-push-extract-append-extract--f8e3a17913083945e85c7300.md) | 186 | `result-track:f8e3a17913083945e85c7300d832d30127881230dc1287bf8aa6b069aeae3fa3` |
| 22 | `theorem` | [extract_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/extract-reverse--7c00af2f3d4c3dd5a6379064.md) | 191 | `result-track:7c00af2f3d4c3dd5a6379064a2472c0c1632edcf5c9c1f349a30352131b64f1a` |
| 23 | `theorem` | [reverse_extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extract/Variantb4f58aed309014ccdcf334ad2671b9da044f0c9c02218bb684237214918320e2.lean/declarations/reverse-extract--e5559771ed5db172f7256f77.md) | 202 | `result-track:e5559771ed5db172f7256f77c7162273a5d9aeb489547750b35140e7e50dbd01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
