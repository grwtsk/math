# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Operations.Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ab0fb3640a8eb269b4cdaff06c58652ceb5335",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ab0fb3640a8eb269b4cdaff06c58652ceb5335`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_edgeFinset_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/card-edgefinset-eq--56caef098c44122bbfa74da2.md) | 45 | `result-track:56caef098c44122bbfa74da29afaa5d18a8b198ae245f7859216051af1344292` |
| 2 | `def` | [replaceVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/replacevertex--83a93606d660579e6cfbae9a.md) | 59 | `declaration-track:83a93606d660579e6cfbae9a93411add49f20d53197c113af45d3fcac22d3d0b` |
| 3 | `lemma` | [not_adj_replaceVertex_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/not-adj-replacevertex-same--fa470ecd473f93208b2a9edd.md) | 65 | `result-track:fa470ecd473f93208b2a9edd52eaa9d91547154aba1f490d67fc2a5f73bd5573` |
| 4 | `lemma` | [replaceVertex_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/replacevertex-self--dad1233453fa29092bd4c9d5.md) | 67 | `result-track:dad1233453fa29092bd4c9d52ff6fc4b49f4772f4869e79f7e087236ef7cfe36` |
| 5 | `lemma` | [adj_replaceVertex_iff_of_ne_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/adj-replacevertex-iff-of-ne-left--160305306d40a4cd502f2e87.md) | 74 | `result-track:160305306d40a4cd502f2e87e126dfb214ce72fc7a3a0a37413daf15addf8942` |
| 6 | `lemma` | [adj_replaceVertex_iff_of_ne_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/adj-replacevertex-iff-of-ne-right--569952132db5267e18012b44.md) | 79 | `result-track:569952132db5267e18012b44254faa86dcb2a58a8888d0129f8bc6af9c713fb8` |
| 7 | `lemma` | [adj_replaceVertex_iff_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/adj-replacevertex-iff-of-ne--3781a96c1235ea6da2f254a3.md) | 83 | `result-track:3781a96c1235ea6da2f254a3c4544f428f7ef76275c5848c69a4274b20bae29c` |
| 8 | `theorem` | [edgeSet_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edgeset-replacevertex-of-not-adj--e46d1fdb18be1af98a4af250.md) | 88 | `result-track:e46d1fdb18be1af98a4af250eab93ca6fdd0f9a29db7ca4b86997dde03f42f60` |
| 9 | `theorem` | [edgeSet_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edgeset-replacevertex-of-adj--22a4d52371fb9ae018561f08.md) | 94 | `result-track:22a4d52371fb9ae018561f08d1521f2679289a7d557158c001e1c0300b59f29c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/instance--2e14db64c731a4697d2f3639.md) | 102 | `declaration-track:2e14db64c731a4697d2f36399c9d86cb10c0049a152a9659e39475ac1d87821b` |
| 11 | `theorem` | [edgeFinset_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edgefinset-replacevertex-of-not-adj--e155f80e43ffa16ee1c40727.md) | 104 | `result-track:e155f80e43ffa16ee1c407277eb334a5f5d51912cdc2b3a7e87c592ed7675832` |
| 12 | `theorem` | [edgeFinset_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edgefinset-replacevertex-of-adj--a98caa24f1651fa156532220.md) | 110 | `result-track:a98caa24f1651fa1565322203bc5809ff56c56b004593123d248ba71681776c2` |
| 13 | `lemma` | [disjoint_sdiff_neighborFinset_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/disjoint-sdiff-neighborfinset-image--a9722954627c91ddddf74af2.md) | 116 | `result-track:a9722954627c91ddddf74af23bd536034e8ee7e817302d6d670c1f006672c6ab` |
| 14 | `theorem` | [card_edgeFinset_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/card-edgefinset-replacevertex-of-not-adj--da07693933d205431ec44e10.md) | 127 | `result-track:da07693933d205431ec44e10414fec4397f9ce887f6af92be80147267f823a6b` |
| 15 | `theorem` | [card_edgeFinset_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/card-edgefinset-replacevertex-of-adj--51119c2f566b12a9f3d2e1ee.md) | 138 | `result-track:51119c2f566b12a9f3d2e1ee6710d7e6591e5e0394ab529cf815b86d5110908f` |
| 16 | `def` | [edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge--021a146412ba7db8494b9fa7.md) | 154 | `declaration-track:021a146412ba7db8494b9fa778bcd2214bbd74432fb05faa64515b9a59ab3594` |
| 17 | `lemma` | [edge_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge-adj--ad3e022d1770f6d8db1edfc9.md) | 156 | `result-track:ad3e022d1770f6d8db1edfc9997de9cc19c43beacd368eea72956d476a9c8331` |
| 18 | `lemma` | [adj_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/adj-edge--3adc2f4878ea7ea9b5f56641.md) | 159 | `result-track:3adc2f4878ea7ea9b5f56641406af8d66c4fcc51b50c028b28cde4f9b77208fe` |
| 19 | `lemma` | [edge_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge-comm--ee3bf998dc971b0abedfdc7d.md) | 164 | `result-track:ee3bf998dc971b0abedfdc7d28299d201c40d58c9a0a9a544484a3289d8130ff` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/instance--e8d397d30d698e6b77c397d5.md) | 168 | `declaration-track:e8d397d30d698e6b77c397d523b978f286bf45e53cf1ca1d86edd43f1b66f26d` |
| 21 | `lemma` | [edge_self_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge-self-eq-bot--ac5877ea59df20f5a4377c0e.md) | 172 | `result-track:ac5877ea59df20f5a4377c0e3f7b06904c0542d63bf21ef515234971cba3d4ff` |
| 22 | `lemma` | [sup_edge_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/sup-edge-self--f53b81a9edd79b50e399e04e.md) | 175 | `result-track:f53b81a9edd79b50e399e04e02ef0d43a0c199b6ec60d79fc2496db8ad04b0ee` |
| 23 | `lemma` | [lt_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/lt-sup-edge--6305caa93b68293c3ff84149.md) | 177 | `result-track:6305caa93b68293c3ff841491355e345a7c4e1930c00328c0f8b404933f891bf` |
| 24 | `lemma` | [edge_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge-le-iff--84deebc92550ef41dc8553ec.md) | 180 | `result-track:84deebc92550ef41dc8553ecc095db40bd3269d98599ca9130327d90cf40e67e` |
| 25 | `lemma` | [edge_edgeSet_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edge-edgeset-of-ne--e3d921268c191c38dd04254e.md) | 188 | `result-track:e3d921268c191c38dd04254ebebdb06467d7c766c6c903fe0d0651525f859fd0` |
| 26 | `lemma` | [sup_edge_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/sup-edge-of-adj--c056662837097bb820abccf4.md) | 192 | `result-track:c056662837097bb820abccf44bf296221fd75512e7116e648699e38ee1aee420` |
| 27 | `lemma` | [disjoint_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/disjoint-edge--f67887b2e6d81c3f9a4cc0d5.md) | 196 | `result-track:f67887b2e6d81c3f9a4cc0d585aa19a383e7d63a0bf5d5093f5ff7398c3cc875` |
| 28 | `lemma` | [sdiff_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/sdiff-edge--dddeaf4f01f606bf3c8eddb5.md) | 202 | `result-track:dddeaf4f01f606bf3c8eddb5066deabf09174eeb95dd0cd2e1b4751ffa9077ae` |
| 29 | `theorem` | [Subgraph.spanningCoe_sup_edge_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/subgraph-spanningcoe-sup-edge-le--38018c0d1faa67a4bddae11d.md) | 205 | `result-track:38018c0d1faa67a4bddae11df3708d4e8f54cdf9da964fd2ed2d3395eefbdcaa` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/instance--f0de9821f7a530448f8ca659.md) | 217 | `declaration-track:f0de9821f7a530448f8ca659727f1a1349ed4ff40555924021a9f25fdec485be` |
| 31 | `theorem` | [edgeFinset_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/edgefinset-sup-edge--2a11b109aa7062b1f8446ee2.md) | 219 | `result-track:2a11b109aa7062b1f8446ee21b4b25558a91ba8f9144019759bd244ef75b1b43` |
| 32 | `theorem` | [card_edgeFinset_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variantae783534075b9983d20b855a2bdc517c5d76ac81a4db71087827f3513a54dcef.lean/declarations/card-edgefinset-sup-edge--fb94259822423e12a23e4205.md) | 225 | `result-track:fb94259822423e12a23e420557dee729babf5f431410a68806553efa32d504c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
