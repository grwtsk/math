# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Operations.Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d99543dd398498ac0631aee936a3fa3d67dbec3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d99543dd398498ac0631aee936a3fa3d67dbec3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_edgeFinset_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/card-edgefinset-eq--451fa4979ab173d91355242e.md) | 37 | `result-track:451fa4979ab173d91355242ecd1ef23a8b8bad3eddd129e8d6d61cd37209f970` |
| 2 | `def` | [replaceVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/replacevertex--d6cd9948b26f743483a8854a.md) | 51 | `declaration-track:d6cd9948b26f743483a8854ac8428b7117bdccf1fa1ed860d54feb9cb82366f0` |
| 3 | `lemma` | [not_adj_replaceVertex_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/not-adj-replacevertex-same--7b7fc2440307f3485a1368fc.md) | 57 | `result-track:7b7fc2440307f3485a1368fc78c04c0a4002ec720232d48567430466e82c4243` |
| 4 | `lemma` | [replaceVertex_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/replacevertex-self--08af1a62bceabb0d0e73bd1b.md) | 59 | `result-track:08af1a62bceabb0d0e73bd1b203e0389a17b889b5a54609c3944afdc8e5392f0` |
| 5 | `lemma` | [adj_replaceVertex_iff_of_ne_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/adj-replacevertex-iff-of-ne-left--8089ec49bd9f3157d92465e5.md) | 66 | `result-track:8089ec49bd9f3157d92465e5301ea1e98f7a7d7909c33649d7d9dc7a50cd7322` |
| 6 | `lemma` | [adj_replaceVertex_iff_of_ne_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/adj-replacevertex-iff-of-ne-right--3fec336d49c1057db1322dbe.md) | 71 | `result-track:3fec336d49c1057db1322dbee5c5718e271d1b10660540d88155bc9f196fc87e` |
| 7 | `lemma` | [adj_replaceVertex_iff_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/adj-replacevertex-iff-of-ne--478c0d851a2ae11ee20bfce0.md) | 75 | `result-track:478c0d851a2ae11ee20bfce0c2be70f269a25e074ec9da8de5e3b8bf101d1be7` |
| 8 | `theorem` | [edgeSet_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edgeset-replacevertex-of-not-adj--2908d16d9062011873fa6811.md) | 80 | `result-track:2908d16d9062011873fa681135ab40eb7eadc975b7ca43143f56f93996c5ab4e` |
| 9 | `theorem` | [edgeSet_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edgeset-replacevertex-of-adj--74fbe7ccd70d1a01a32ff5fa.md) | 86 | `result-track:74fbe7ccd70d1a01a32ff5fa80a84c21fec3a4da09eece73ee1e41d73cb40b48` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/instance--1e88ab301175376bfeb214aa.md) | 94 | `declaration-track:1e88ab301175376bfeb214aa9fb557b5678858c29d0eec351844ebb85700861b` |
| 11 | `theorem` | [edgeFinset_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edgefinset-replacevertex-of-not-adj--f81e9d392d5ed9dccf63398f.md) | 96 | `result-track:f81e9d392d5ed9dccf63398f1e9a059a308339cdbfac41ff6c9115a1235fab8b` |
| 12 | `theorem` | [edgeFinset_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edgefinset-replacevertex-of-adj--b9a7d3fdc10a114ac027a79c.md) | 102 | `result-track:b9a7d3fdc10a114ac027a79c734421132311feb82bbf3f3a5068be277f0c97e4` |
| 13 | `lemma` | [disjoint_sdiff_neighborFinset_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/disjoint-sdiff-neighborfinset-image--fa16dfa48a29389682544872.md) | 108 | `result-track:fa16dfa48a293896825448729a232c8280ae8cb2d375e2e265194f4d7dc4bdaf` |
| 14 | `theorem` | [card_edgeFinset_replaceVertex_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/card-edgefinset-replacevertex-of-not-adj--7e8b4bef39e4863724a456f2.md) | 119 | `result-track:7e8b4bef39e4863724a456f22aab01600dd398b7b8757832382eeabb003172f7` |
| 15 | `theorem` | [card_edgeFinset_replaceVertex_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/card-edgefinset-replacevertex-of-adj--6afcc3b5b4b0445fe8a930f7.md) | 130 | `result-track:6afcc3b5b4b0445fe8a930f79959df2e0ab53bbdf49218ba3d7b55297b1ac011` |
| 16 | `def` | [edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge--212e6566188c3d2643dc899a.md) | 146 | `declaration-track:212e6566188c3d2643dc899a88670d47a90963bfb1876edb67717f1b4c0c182f` |
| 17 | `lemma` | [edge_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge-adj--9247a2a969f126592395abb9.md) | 148 | `result-track:9247a2a969f126592395abb940848a8d9a925cb5d0308afbe5b1e078d829149f` |
| 18 | `lemma` | [adj_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/adj-edge--6565b7346ba2502c1aa879e3.md) | 151 | `result-track:6565b7346ba2502c1aa879e307960bb44571a85ab2cdc85efd339ad2d7b6299a` |
| 19 | `lemma` | [edge_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge-comm--5a70601a9a480f4948796392.md) | 156 | `result-track:5a70601a9a480f4948796392a095de3050ec90bdd3b9357e50516690512268e6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/instance--c15e94cd8b7d72b8bb7d4593.md) | 160 | `declaration-track:c15e94cd8b7d72b8bb7d459311fdb38d4496c10c390811c820d3b3610afbd95f` |
| 21 | `lemma` | [edge_self_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge-self-eq-bot--f5e9649d7f2f9929cdac951f.md) | 164 | `result-track:f5e9649d7f2f9929cdac951ffab1acda6552ab284609f03b83f04f7a8b933100` |
| 22 | `lemma` | [sup_edge_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/sup-edge-self--b23b6259670db401186d2f29.md) | 167 | `result-track:b23b6259670db401186d2f29d34c6770bbc0cad3d745daa32255bff60e8095bd` |
| 23 | `lemma` | [lt_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/lt-sup-edge--f6973631b1df0a968c420d53.md) | 169 | `result-track:f6973631b1df0a968c420d537cc02bab26086e40456ad862a38e6905d2691d2e` |
| 24 | `lemma` | [edge_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge-le-iff--0dc413dced2fba1dc46954a1.md) | 172 | `result-track:0dc413dced2fba1dc46954a1f52f7b9a5497cbca3590ad2ccee6df8313ef45cd` |
| 25 | `lemma` | [edge_edgeSet_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edge-edgeset-of-ne--b38d1b10727069c581bae9f9.md) | 180 | `result-track:b38d1b10727069c581bae9f9fa70be44784b6291bde8bf2a6f2dea70e36fc4e0` |
| 26 | `lemma` | [sup_edge_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/sup-edge-of-adj--86106f15dd798300292b6f69.md) | 184 | `result-track:86106f15dd798300292b6f69910639ff43bb695a6493236506af8ae77f4da182` |
| 27 | `lemma` | [disjoint_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/disjoint-edge--ab1ba071c635ed71d6e0f6f3.md) | 188 | `result-track:ab1ba071c635ed71d6e0f6f3f9cc9dd5053091d3970757de0e0f7b5d02d9fac8` |
| 28 | `lemma` | [sdiff_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/sdiff-edge--d9980378cb92860dbfb84059.md) | 194 | `result-track:d9980378cb92860dbfb84059d7078f39f7ee2ee1f4995257ecfe379a628532b6` |
| 29 | `theorem` | [Subgraph.spanningCoe_sup_edge_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/subgraph-spanningcoe-sup-edge-le--6648f603358c1bcf9767e667.md) | 197 | `result-track:6648f603358c1bcf9767e6672868d34a1bb264e41fe562afbeee3047ff173cd0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/instance--b3f2385565952bb676d187ef.md) | 209 | `declaration-track:b3f2385565952bb676d187ef7a6e15f96d5580df7e14b2e1ed6449d9795a2312` |
| 31 | `theorem` | [edgeFinset_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/edgefinset-sup-edge--8be375f44c55280b8a687e58.md) | 211 | `result-track:8be375f44c55280b8a687e58748f879358f7ba5c8117db3494a10c468cf823cc` |
| 32 | `theorem` | [card_edgeFinset_sup_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Operations/Variant0f9caa39aa429b3ef55373886f792d8b34e1401ae8271350b16af31415fa7b2d.lean/declarations/card-edgefinset-sup-edge--9ce26b4220f7d488079de4d3.md) | 217 | `result-track:9ce26b4220f7d488079de4d36a0bba4e6ce254c4e64f220f91fabd8ff28998fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
