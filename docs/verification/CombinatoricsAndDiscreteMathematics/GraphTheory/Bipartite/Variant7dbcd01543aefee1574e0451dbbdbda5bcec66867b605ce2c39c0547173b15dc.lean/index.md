# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Bipartite.Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb71e54097da1c1258fe325bbeeaa29127c91d9c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb71e54097da1c1258fe325bbeeaa29127c91d9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBipartiteWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith--0dd365b87692c6476a4c633e.md) | 70 | `declaration-track:0dd365b87692c6476a4c633ec22f28a762634882d99505e146f8402ad3601c73` |
| 2 | `theorem` | [IsBipartiteWith.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-symm--deac1dd4b69a7a3d50649b79.md) | 74 | `result-track:deac1dd4b69a7a3d50649b79b691e842ecc3ab6683f47f32e835dbe2d228e0c2` |
| 3 | `theorem` | [isBipartiteWith_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-comm--339c30146cd2bc0092690705.md) | 80 | `result-track:339c30146cd2bc00926907051f0a8ab54abe12035de9d05edf6561a79469edfa` |
| 4 | `theorem` | [IsBipartiteWith.mem_of_mem_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-mem-of-mem-adj--da7e2b2c78c0d4516ab9d9fe.md) | 84 | `result-track:da7e2b2c78c0d4516ab9d9fe82f7573cbd0f405999f409ecdc989a0d8fa4fa99` |
| 5 | `theorem` | [isBipartiteWith_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset--12945f24835ccb3019e633b1.md) | 92 | `result-track:12945f24835ccb3019e633b1778f4efbef4fc60db9a8bb1c3537f75c3befb605` |
| 6 | `theorem` | [isBipartiteWith_neighborSet_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset-subset--689149a6da6d7b62e71141ec.md) | 99 | `result-track:689149a6da6d7b62e71141ecde3efbc66d72d7a97478c442606cca759c114b95` |
| 7 | `theorem` | [isBipartiteWith_neighborSet_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset-disjoint--0a9b01891b6c3ff9e5763216.md) | 105 | `result-track:0a9b01891b6c3ff9e5763216051c561538ced86996d860fddc55ae5de4c03f96` |
| 8 | `theorem` | [IsBipartiteWith.mem_of_mem_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-mem-of-mem-adj--2b94a1c7bee74304844909b9.md) | 110 | `result-track:2b94a1c7bee74304844909b9e7cf25e13a1b60b7a83f061d301544f2cd2a6c24` |
| 9 | `theorem` | [isBipartiteWith_neighborSet'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset--5aef2408de2a457fa778f59f.md) | 118 | `result-track:5aef2408de2a457fa778f59f96c982af8a095894f5d021f2e39b96d4340bc033` |
| 10 | `theorem` | [isBipartiteWith_neighborSet_subset'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset-subset--7d3eb610caabd3017d5f97d8.md) | 125 | `result-track:7d3eb610caabd3017d5f97d8ad68789a2a7304c6b3b31136d9e772008e4ef58e` |
| 11 | `theorem` | [isBipartiteWith_support_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-support-subset--9f6ba79a65c157955534d361.md) | 131 | `result-track:9f6ba79a65c157955534d3614b0b7768718e2cb6df047d18aa34e252a540f97f` |
| 12 | `theorem` | [isBipartiteWith_neighborSet_disjoint'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborset-disjoint--35c29ccc8cb071a78be92af9.md) | 137 | `result-track:35c29ccc8cb071a78be92af97b31c18315d5106d95977405b594a6852038845f` |
| 13 | `theorem` | [isBipartiteWith_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset--1bb9920bff1e475b53689c9c.md) | 145 | `result-track:1bb9920bff1e475b53689c9c2c0a402adc35341499485fa5d1e5d89a43fc051d` |
| 14 | `theorem` | [isBipartiteWith_bipartiteAbove](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-bipartiteabove--5a6cfd7436ca60b1f6906f99.md) | 153 | `result-track:5a6cfd7436ca60b1f6906f9976bb2f01cb35d801465e6d1a6f5034cdd3a7ea2e` |
| 15 | `theorem` | [isBipartiteWith_neighborFinset_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset-subset--a44def84604fe89632e00586.md) | 158 | `result-track:a44def84604fe89632e00586be3c6491685431f4d1507271c74ec1457cece79a` |
| 16 | `theorem` | [isBipartiteWith_neighborFinset_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset-disjoint--33020f7b1fdd5219a9d7f7ff.md) | 164 | `result-track:33020f7b1fdd5219a9d7f7ff2c96c16ed7cf58ffa908c6192140206338d07fb2` |
| 17 | `theorem` | [isBipartiteWith_degree_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-degree-le--197320b38fb264383a284cb8.md) | 171 | `result-track:197320b38fb264383a284cb8678c6f28d4334f071641787fb264c2c90e2ee7b9` |
| 18 | `theorem` | [isBipartiteWith_neighborFinset'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset--035dcd027ec2e4bd02183852.md) | 177 | `result-track:035dcd027ec2e4bd0218385200f48f6eb0fb440df66b5756ee0cd6450d77a2f9` |
| 19 | `theorem` | [isBipartiteWith_bipartiteBelow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-bipartitebelow--1092d27d233a5fbe362eb73a.md) | 185 | `result-track:1092d27d233a5fbe362eb73a77945d83c11aa87706ca8d566c3d50178a3fca94` |
| 20 | `theorem` | [isBipartiteWith_neighborFinset_subset'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset-subset--2712d240d5bc3217f7a10478.md) | 190 | `result-track:2712d240d5bc3217f7a1047822095671cfac8569254a336bf1dbf63a2d15262a` |
| 21 | `theorem` | [isBipartiteWith_neighborFinset_disjoint'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-neighborfinset-disjoint--5f904a256419a8b3b569f53b.md) | 196 | `result-track:5f904a256419a8b3b569f53b6754d327a7fa3bc955c03df034a55e31b37df85d` |
| 22 | `theorem` | [isBipartiteWith_degree_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-degree-le--cba2d257bdb665c3b6479e82.md) | 203 | `result-track:cba2d257bdb665c3b6479e829c55f57febde49c4251e3b435597fb0d2006fad8` |
| 23 | `theorem` | [isBipartiteWith_sum_degrees_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-sum-degrees-eq--8184a58184efe7f610709a95.md) | 211 | `result-track:8184a58184efe7f610709a95dab511ebc83b6755758609082dcf498b53628f56` |
| 24 | `lemma` | [isBipartiteWith_sum_degrees_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-sum-degrees-eq-twice-card-edges--a58f3fed9386627ae0bfc03f.md) | 224 | `result-track:a58f3fed9386627ae0bfc03fc6eb4b71b243a53e5f1a7d02b763e968a82296a1` |
| 25 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges--f730527aebfeeee1079c4ccd.md) | 236 | `result-track:f730527aebfeeee1079c4ccd7b958f68dd713d533c01aac75e0eac31e8f0ea31` |
| 26 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant7dbcd01543aefee1574e0451dbbdbda5bcec66867b605ce2c39c0547173b15dc.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges--522a866197aa731537cd7e20.md) | 247 | `result-track:522a866197aa731537cd7e2072bf998b0897ab6b3fc01e593b0418e34b9cc564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
